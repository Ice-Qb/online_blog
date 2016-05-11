require 'rails_helper'

describe Post do
  let(:post) { FactoryGirl.create(:post) }

  it 'is valid' do
    expect(post).to be_valid
  end

  it 'is invalid when title or body are blank' do
    %w(title body).each do |field|
      expect(FactoryGirl.build(:post, field.to_sym => '')).to be_invalid
    end
  end

  it 'is invalid without category' do
    expect(FactoryGirl.build(:post, category_id: nil)).to be_invalid
  end
end
