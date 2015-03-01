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

class PostTag < ActiveRecord::Base
  has_and_belongs_to_many :posts, join_table: 'posts_tags'

  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
end
