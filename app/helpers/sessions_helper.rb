module SessionsHelper

    
    
    def current_user
        if session[:user_id]
          @user ||= User.find(session[:user_id])
        end 
    end 

    def logged_in?
        !current_user.nil?
    end 

    def log_in(user)
        session[:user_id] = user.id
    end

    def logout
        session.delete(:user_id)
    end 

    


end