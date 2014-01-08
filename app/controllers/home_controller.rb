class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @entries = Entry.all
  end
end
