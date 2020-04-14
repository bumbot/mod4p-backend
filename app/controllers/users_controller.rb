class UsersController < ApplicationController
    def index
        users = User.all

        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user if user
    end

    def create
        user = User.new(username: params[:username], lastFive: params[:lastFive])

        if (user) 
            user.save!
        end

        render json: user if user
    end
end
