# == Schema Information
#
# Table name: post_tags
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe PostTag, type: :model do
  before :each do
    @valid_post_tag = FactoryGirl.build :post_tag
  end

  it "has a valid factory" do
    expect(@valid_post_tag.valid?).to eq(true)
  end

  context "title" do
    it "is required" do
      @valid_post_tag.title = ''
      expect(@valid_post_tag.valid?).to eq(false)
      expect(@valid_post_tag.errors[:title]).to include("can't be blank")
    end

    it "must be unique" do
      expect(@valid_post_tag.save).to eq(true)
      new_tag = PostTag.new title: @valid_post_tag.title
      expect(new_tag.valid?).to eq(false)
      expect(new_tag.errors[:title]).to include('has already been taken')
    end
  end

  context "slug" do
    it "is required" do
      @valid_post_tag.slug = ''
      expect(@valid_post_tag.valid?).to eq(false)
      expect(@valid_post_tag.errors[:slug]).to include("can't be blank")
    end

    it "must be unique" do
      expect(@valid_post_tag.save).to eq(true)
      new_tag = PostTag.new slug: @valid_post_tag.slug
      expect(new_tag.valid?).to eq(false)
      expect(new_tag.errors[:slug]).to include('has already been taken')
    end
  end
end
