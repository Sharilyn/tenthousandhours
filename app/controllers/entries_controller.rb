class EntriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find params[:id]
  #rescue ActiveRecord::RecordNotFound
    #redirect_to new_entry_path
  end

  def new
    @entry = Entry.new
    @skills = Skill.all
  end

  def update
       # @entry = Entry.find params[:id]
       # Safe_params stuff
       # update entry
       #redirect_to @entry
     end

  def create
    @entry = current_user.entries.new safe_entry
    if @entry.save
      flash[:notice] = "You have added a new entry to your skillset"
      redirect_to @entry
    else
      render 'new'
    end
  end

  private
    def safe_entry
      params.require(:entry).permit(:hours, :note, :user_id, :skill_id)
    end
end
