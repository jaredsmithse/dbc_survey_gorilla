get '/main' do 
  answered_surveys = current_user.responses
  created_surveys = current_user.surveys
	erb :'partials/_profile'
end


get '/stats' do 

	erb :'partials/_stats'
end


get '/your_surveys' do 

	erb :'partials/_your_surveys'
end


get '/take_surveys' do 

	erb :'partials/_take_surveys'
end
