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

  def show
  	@dojo = Dojo.find(params[:id])
  	@students = @dojo.students
  end

  def edit
  	@dojo = Dojo.find(params[:id])
  end
  def update
  	dojo = Dojo.find(params[:id])
  	dojo.branch = params[:branch]
  	dojo.street = params[:street]
  	dojo.city = params[:city]
  	dojo.state = params[:state]
  	dojo.save
  	redirect_to '/dojos'
  end
  def destroy
 		dojo = Dojo.find(params[:id])
 		dojo.destroy
 		redirect_to '/dojos'
  end
end
