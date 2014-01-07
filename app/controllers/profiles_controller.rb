class ProfilesController < ApplicationController

    def show
        @users = User.all
        @skills = Skill.all
        @user = User.find params[:id]
    end

    def index
    end

    def edit
    end

    def update
    end

end
