require 'spec_helper'

describe ConsumerScore do
  let (:score) {ConsumerScore.new}

  describe "#get_score" do
    it "takes 3 parameters" do
      expect(:score).to respond_to(:get_score).with(3).arguments
    end
  end
end