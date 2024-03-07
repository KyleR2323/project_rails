class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @sections = Section.where("name LIKE ?", wildcard_search)
  end
end
