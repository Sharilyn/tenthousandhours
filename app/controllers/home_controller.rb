class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @entries = Entry.all
    @current_user = current_user
  end
end
