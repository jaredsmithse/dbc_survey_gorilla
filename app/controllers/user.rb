require 'securerandom'
enable :sessions
require 'bcrypt'

post '/create' do

end


post '/complete' do

end


post '/signup' do
  created_user = User.create(email: params[:email], name: params[:username], password: params[:password])
  session[:id] = created_user.id
  redirect '/main'
end


post '/signin' do
  @user_email = params[:email]
  @user_pass = params[:password]
  new_user = User.authenticate(@user_email, @user_pass)
  redirect '/' if new_user == nil
  session[:id] = new_user.id
  redirect '/main'
end

post '/logout' do
  session.clear
  redirect '/'
end
