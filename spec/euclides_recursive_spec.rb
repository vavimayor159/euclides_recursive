require "spec_helper"

RSpec.describe EuclidesRecursive do
  let(:test_object) do
    test = Object.new
    test.extend(EuclidesRecursive)
    test
  end

  it "has a version number" do
    expect(EuclidesRecursive::VERSION).not_to be nil
  end

  it "calculates the right mcd of 50 and 25" do
    expect(test_object.mcd(50, 25)).to be(25)
  end

  it "calculates the right mcd of 1357 and 225" do
    expect(test_object.mcd(1357, 225)).to be(1)
  end

  it "mcd is a reflexive operation" do
    expect(test_object.mcd(865, 1045)).to be(5)
    expect(test_object.mcd(1045, 865)).to be(5)
  end
end
