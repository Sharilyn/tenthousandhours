class SkillsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create]

    def index
        @skills = Skill.all
    end

    def show
        @skill = Skill.find params[:id]
    rescue ActiveRecord::RecordNotFound
        flash[:alert] = "We don't have that skill in our system"
        redirect_to root_path
    end

    def new
        @skill = Skill.new
    end

    def create
        @skill = Skill.new safe_skill
        if @skill.save
            flash[:notice] = "You have added a new skill to our system!"
            redirect_to @skill
        else
            render 'new'
    end
end
    private
    def safe_skill
        safe_skill = params.require(:skill).permit(:name, :description)
    end
end
