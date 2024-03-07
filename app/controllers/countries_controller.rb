class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @countries = Country.where("name LIKE ?", wildcard_search)
  end
end
