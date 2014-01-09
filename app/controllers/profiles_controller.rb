class ProfilesController < ApplicationController

    def show
        @users = User.all
        @skills = Skill.all
        @user = User.find params[:id]
        @skill = Skill.find params[:id]
        @entries = Entry.all
    end

    def index
    end

    def edit
    end

    def update
    end

end
