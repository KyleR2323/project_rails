class HomeController < ApplicationController
  def index
    @dogs = Dog.includes(:group)
                .order("name DESC")
                .limit(10)
    @groups = Group.all
    @sections = Section.all
  end
end
