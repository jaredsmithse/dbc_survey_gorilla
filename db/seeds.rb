10.times do |i|
  User.create(name: Faker::Name.name, password: "test", email: Faker::Internet.email)
end

3.times do |num|
  10.times do |i|
    i += 1
    Survey.create(survey_name: Faker::Lorem.words, user_id: i)
  end
end

10.times do |num|
  10.times do |i|
    i += 1
    Question.create(question_text: Faker::Lorem.sentence, survey_id: i)
  end
end


4.times do |num|
  100.times do |i|
    i += 1
    Choice.create(answer: Faker::Lorem.word, question_id: i)
  end
end
