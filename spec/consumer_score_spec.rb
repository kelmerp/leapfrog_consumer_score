require 'spec_helper'

describe ConsumerScore do
  before (:each) do
    @score = ConsumerScore.new
  end

  describe "#get_score" do
    it "takes 3 arguments" do
      expect(@score).to respond_to(:get_score).with(3).arguments
    end

    it "is given a valid arguments
    end
  end
end