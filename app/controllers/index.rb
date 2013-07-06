get '/' do
  erb :splash
end

before '/' do
  @surveys = [] 
  @created_surveys = [] 
	erb :main if logged_in?
end

get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  erb :'surveys/show'
end
