10.times do |user_id|
  user_id += 1
  User.create(name: Faker::Name.name, password: "test", 
    email: Faker::Internet.email)
  rand(0..4).times do |survey_id|
    survey_id += 1
    Survey.create(survey_name: Faker::Lorem.words, user_id: user_id)
  end
end


