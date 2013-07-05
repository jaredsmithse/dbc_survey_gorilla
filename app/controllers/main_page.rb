get '/main' do 
  @created_surveys = current_user.surveys
  @surveys = Survey.all
	erb :main
end

post '/new_survey' do 
	erb :'partials/_new_survey', :layout => false
end
