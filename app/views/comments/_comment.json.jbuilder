json.extract! comment, :id, :post_id, :author, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)
