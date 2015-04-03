json.array!(@course_module_instances) do |course_module_instance|
  json.extract! course_module_instance, :id, :course_id, :course_module_id, :user_id
  json.url course_module_instance_url(course_module_instance, format: :json)
end
