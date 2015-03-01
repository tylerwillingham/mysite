require 'jsonapi/resource'

class PostResource < JSONAPI::Resource
  model_name 'Post'
  attributes :id, :title, :slug, :summary, :body, :published, :created_at, :updated_at
end
