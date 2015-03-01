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

class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :summary, presence: true
  validates :body, presence: true
end
