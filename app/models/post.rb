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
  has_and_belongs_to_many :tags, class_name: 'PostTag', join_table: 'posts_tags'

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :summary, presence: true
  validates :body, presence: true
end
