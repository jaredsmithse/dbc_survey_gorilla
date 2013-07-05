get '/' do
  erb :splash
end

before '/' do 
	erb :main if logged_in?
end
