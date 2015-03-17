json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :video, :slideshow, :logistics
  json.url course_url(course, format: :json)
end
