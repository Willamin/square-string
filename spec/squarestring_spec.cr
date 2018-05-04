require "./spec_helper"

describe SquarePackage do
  it "works" do
    square = SquarePackage::Square.new("hello world")
    s = square.to_s
    s.should eq(<<-SQUARE
    -------------
    |hello world|
    -------------
    SQUARE
    )
  end
end
