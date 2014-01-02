class SkillsController < ApplicationController
    def index
        @skills = Skill.all
    end

    def show
        @skill = Skill.find params[:id]
    end

    def new
        @skill = Skill.new
    end

    def create
        safe_skill = params.require(:skill).permit(:name, :description)
        @skill = Skill.create safe_skill
        redirect_to @skill
    end
end
