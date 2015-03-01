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

FactoryGirl.define do
  factory :post_tag do
    title "Valid title"
    slug "valid-title"
  end
end
