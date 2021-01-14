require 'date'

class UsersController < ApplicationController
    include UsersHelper

    def new
        if session[:current_user]
            redirect_to root_path
        else
            @user = User.new
        end
    end
    def create
        @user = User.new(user_params)

        if @user.save
            current_user(@user.id)
            redirect_to @user
        else
            render :new
        end
    end
    def sign_in
      redirect_to root_path if session[:current_user]
    end
    def sign_in_new
        @user = User.find_by(username: params[:username])
        if @user && params[:password] == @user.password
          current_user(@user.id)
          redirect_to root_path
        else
          redirect_to sign_in_path
        end
    end
    def show
        if session[:current_user]
            @user = User.find(params[:id])
            current_user(@user.id)
            @date = date_now
        else
            redirect_to sign_in_path
        end
    end







end
