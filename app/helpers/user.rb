helpers do
  def current_user
    if session[:id]
      @current_user ||= User.find(session[:id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def set_current_user(user_email)
    User.find_by_email(user_email).id
  end

  def answered_surveys
    current_user.responses.map { |response| 
      response.choice.question.survey 
    }.uniq
  end
end
