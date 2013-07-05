get '/main' do 
  @created_surveys = current_user.surveys
	erb :main
end