class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end

  def new
  end
end
