FactoryGirl.define do
  factory :event do
    upcoming false
    user_id 1
    location_id 1
    course_id 1
    time "MyString"
  end
end
