get '/main' do 
  answered_surveys = current_user.responses
  created_surveys = current_user.surveys
	erb :'partials/_profile'
end


before '/stats' do 
	redirect '/' unless logged_in?
end

get '/stats' do 

	erb :'partials/_stats'
end


before '/your_surveys' do 
	redirect '/' unless logged_in?
end

get '/your_surveys' do 

	erb :'partials/_your_surveys'
end


before '/take_surveys' do 
	redirect '/' unless logged_in?
end

get '/take_surveys' do 

	erb :'partials/_take_surveys'
end

