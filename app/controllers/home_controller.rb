class HomeController < ApplicationController

    #GET Home
    def index
        @user = User.new
    end

    #Get Success
    def success

    end

    #POST Home/Create
    def create
        name = params[:user][:name]
        email = params[:user][:email]
        clave = params[:user][:pass]

        @user = User.new(name: name, email: email, pass: clave)

        if @user.valid?
            @user.save()
        else
            render :index
        end 

                
    end

end
