require 'securerandom'
enable :sessions
require 'bcrypt'

post '/create' do

end


post '/complete' do

end


post '/signup' do
  @new_user = User.create(email: params[:email], name: params[:username], password: params[:password])
  session[:id] = @new_user.id
  erb :'partials/_signup_errors', :layout => false
end


post '/signin' do
  @user_email = params[:email]
  @user_pass = params[:password]
  @new_user = User.authenticate(@user_email, @user_pass)
  return 'nope' if @new_user == nil
  session[:id] = @new_user.id
  redirect '/main'
end

post '/logout' do
  session.clear
  redirect '/'
end
