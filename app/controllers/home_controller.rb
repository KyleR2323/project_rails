class HomeController < ApplicationController
  def index
    @dogs = Dog.includes(:group)
                .order("name DESC")
                .limit(10)
    @random_dog = Dog.all.sample
    @groups = Group.all
    @sections = Section.all
  end
end
