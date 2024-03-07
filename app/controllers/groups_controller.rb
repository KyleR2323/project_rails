class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @groups = Group.where("name LIKE ?", wildcard_search)
  end
end
