json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :percent_complete
  json.url project_url(project, format: :json)
end
