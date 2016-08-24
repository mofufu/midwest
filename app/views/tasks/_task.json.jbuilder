json.extract! task, :id, :user_id, :done, :supporting_file, :created_at, :updated_at
json.url task_url(task, format: :json)