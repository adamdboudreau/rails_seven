json.extract! test_user, :id, :email, :name, :desc, :created_at, :updated_at
json.url test_user_url(test_user, format: :json)
