require './caesar-cipher/caesar_cipher'

describe "#caesar_cipher" do
  it "works with small positive shift" do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end

  it "works with small negative shift" do
    expect(caesar_cipher('hello', -3)).to eql('ebiil')
  end

  it "works with large positive shift" do
    expect(caesar_cipher('hello', 31)).to eql('mjqqt')
  end

  it "works with large negative shift" do
    expect(caesar_cipher('hello', -31)).to eql('czggj')
  end

  it "works with spaces" do
    expect(caesar_cipher('hello world', 3)).to eql('khoor zruog')
  end

  it "works with capital letters" do
    expect(caesar_cipher('Hello World', 3)).to eql('Khoor Zruog')
  end

  it "works with punctuation" do
    expect(caesar_cipher('Hello, world!', 3)).to eql('Khoor, zruog!')
  end
end
