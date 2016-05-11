require 'rails_helper'

describe Category do
  let!(:root_category) { FactoryGirl.create(:category) }
  let(:child_category) { root_category.children.create!(name: 'child') }

  describe 'root category' do
    it 'is valid' do
      expect(root_category).to be_valid
    end

    it 'is not valid when name is blank' do
      expect(FactoryGirl.build(:category, name: '')).to be_invalid
    end

    it 'has children' do
      expect(root_category.children).to include(child_category)
    end
  end

  describe 'child category' do
    it 'is valid' do
      expect(child_category).to be_valid
    end

    it 'has parent' do
      expect(child_category.parent).to eq root_category
    end
  end
end
