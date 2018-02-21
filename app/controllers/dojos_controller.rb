class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end

  def new
  end

  def create
  	Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
  	redirect_to '/dojos'
  end
end
