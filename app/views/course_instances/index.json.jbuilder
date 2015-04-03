json.array!(@course_instances) do |course_instance|
  json.extract! course_instance, :id, :course_id, :user_id
  json.url course_instance_url(course_instance, format: :json)
end
