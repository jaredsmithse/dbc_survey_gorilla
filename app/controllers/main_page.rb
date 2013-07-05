get '/main' do 
  @created_surveys = current_user.surveys
  @surveys = Survey.all
	erb :main
end
