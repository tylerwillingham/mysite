require 'jsonapi/resource'

class PostTagResource < JSONAPI::Resource
  model_name 'PostTag'
  attributes :id, :title, :slug
end
