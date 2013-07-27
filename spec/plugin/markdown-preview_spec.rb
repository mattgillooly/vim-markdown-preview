require 'rspec'
require_relative '../spec_helper'

describe "Markdown Preview" do
  before do
    vim.add_plugin(
      File.expand_path('../../../',__FILE__),
      'plugin/markdown-preview.vim'
    )
  end

  let(:filename) { 'test.md' }

  before do
    markdown = "# Headline\n\nParagraph text."
    write_file(filename, markdown)
    vim.edit filename
    vim.command "PreviewMarkdown"
  end

  it "strips whitespace" do
    html = File.read('/tmp/markdown-preview.html')
    expect(html).to eq("<h1>Headline</h1>\n\n<p>Paragraph text.</p>\n")
  end
end
