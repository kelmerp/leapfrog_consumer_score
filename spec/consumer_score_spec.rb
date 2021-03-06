require 'spec_helper'

describe ConsumerScore do
  before (:each) do
    @score = ConsumerScore.new
  end

  describe "#get_score" do
    it "takes 3 arguments" do
      expect(@score).to respond_to(:get_score).with(3).arguments
    end

    it "when given valid arguments returns a JSON object" do
      income = 50000
      zipcode = 60201
      age = 35
      result = JSON.parse(@score.get_score(income, zipcode, age))
      expect(result).to be_a(Hash)
    end

    it "returns an error when given invalid arguments" do
      income = nil
      zipcode = 60201
      age = 35
      expect(@score.get_score(income, zipcode, age)).to eq("An error has occurred: please supply a valid income")
    end
  end
end