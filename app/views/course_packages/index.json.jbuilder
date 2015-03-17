json.array!(@course_packages) do |course_package|
  json.extract! course_package, :id, :title, :description, :video, :slideshow
  json.url course_package_url(course_package, format: :json)
end
