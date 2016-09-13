class LoginController < ApplicationController
    def new
        @user = User.new
    end

    def create    
        email = params[:user][:email]
        clave = params[:user][:pass]

        user = User.find_by(email: email)
        if user && user.pass == clave
            session[:current_user_id] = user.id
            redirect_to controller: 'home', action: 'success'
        else
            @user = User.new
            render :new
        end

    end

    def destroy
    end
end
