# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  summary    :text
#  body       :text
#  published  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  before :each do
    @valid_post = FactoryGirl.build :post
  end

  it 'has a valid Factory' do
    expect(@valid_post.valid?).to eq(true)
  end

  context "title" do
    it "is required" do
      @valid_post.title = ''
      expect(@valid_post.valid?).to eq(false)
    end
  end

  context "slug" do
    it "is required" do
      @valid_post.slug = ''
      expect(@valid_post.valid?).to eq(false)
    end

    it "is unique" do
      expect(@valid_post.save).to eq(true)
      new_post = @valid_post
      expect(new_post.valid?).to eq(false)
    end
  end

  context "summary" do
    it "is required" do
      @valid_post.summary = ''
      expect(@valid_post.valid?).to eq(false)
    end
  end

  context "body" do
    it "is required" do
      @valid_post.body = ''
      expect(@valid_post.valid?).to eq(false)
    end
  end
end
