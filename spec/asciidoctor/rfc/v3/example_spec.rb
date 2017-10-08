require "spec_helper"

describe Asciidoctor::RFC::V3::Converter do
  it "renders an example" do
    expect(Asciidoctor.convert(<<~'INPUT', backend: :rfc3)).to be_equivalent_to <<~'OUTPUT'
      .Title
      ====
      Example
      ====
    INPUT
      Lipsum
    OUTPUT
  end
end
