require 'rails_helper'

describe Post do
  let(:post) { FactoryGirl.create(:post) }

  it "has a valid factory" do
    expect(post).to be_valid
  end
end
