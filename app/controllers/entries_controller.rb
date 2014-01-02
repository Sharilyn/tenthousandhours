class EntriesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find params[:id]
    end

    def new
        @entry = Entry.new
        @users = User.all
        @skills = Skill.all
    end

    def create
        @entry = Entry.new safe_entry
        if @entry.save
            flash[:notice] = "You have added a new entry to your skillset"
            redirect_to @entry
        else
            render 'new'
    end
end
    private
    def safe_entry
        safe_entry = params.require(:entry).permit(:hours, :note, :user_id, :skill_id)
    end
end
