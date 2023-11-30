json.extract! job, :id, :id, :name, :desc, :status, :attempt, :err, :created_at, :updated_at
json.url job_url(job, format: :json)
