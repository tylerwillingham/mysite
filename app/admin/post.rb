ActiveAdmin.register Post do
  permit_params :title, :slug, :summary, :body, :published, tag_ids: []

  form do |f|
    f.semantic_errors
    f.actions
    f.inputs
    f.inputs 'Tags' do
      f.input :tags, as: :select, input_html: { multiple: true }
    end
    f.actions
  end
end
