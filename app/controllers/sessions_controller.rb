class SessionsController < ApplicationController
     def new

    end

    def create
        @user = User.find_by user_name: params["sessions"]["user_name"]
       if @user && @user.authenticate(params["sessions"]["password"])
            flash[:notice] = 'Sucessfully Logged In'
            session[:user_id]=@user.id
            redirect_to root_path
        else
            flash[:alert] = 'Login failed!! check User Name and Password'
            render 'new'
       end
        
    end
    def destroy
        session[:user_id] = nil
        flash[:notice]='Logged Out Sucessfully'
        redirect_to root_path
    end
end