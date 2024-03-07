class DogsController < ApplicationController
  def index
    @dogs = Dog.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @dogs = Dog.where("name LIKE ?", wildcard_search)
  end
end
