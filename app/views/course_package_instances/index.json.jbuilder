json.array!(@course_package_instances) do |course_package_instance|
  json.extract! course_package_instance, :id, :course_id, :course_package_id, :user_id
  json.url course_package_instance_url(course_package_instance, format: :json)
end
