module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def last_city(city)
    session[:last_city_id] = city.id
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def require_login
    redirect_to root_path and return if session[:user_id] == nil
  end

  def get_path_from_city(city)
    "/cities/#{city.id}"
  end

end
