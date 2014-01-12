class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @entries = Entry.all
    @user = current_user
  end
end
