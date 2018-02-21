class StudentsController < ApplicationController
  def index
    fail
  end
  def show
    @student = Student.find(params[:sid])
    @dojo = Dojo.find(params[:did])
    @cohort = @dojo.students.where.not("Students.id = ?", @student.id)
  end

  def create
    @dojo_create = Dojo.find(params[:dojo])
    Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo: Dojo.find(params[:dojo]))
    redirect_to '/dojos'
  end

  def new
    @home_dojo = Dojo.find(params[:did])
    @dojos = Dojo.all
    render '/students/new'
  end

  def edit
    @student = Student.find(params[:sid])
    @branch = Dojo.find(params[:did])
    @dojo = @student.dojo
    @dojos = Dojo.all

  end

  def update
    student = Student.find(params[:sid])
    dojo = Dojo.find(params[:did])
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.email = params[:email]
    student.dojo = Dojo.find(params[:dojo])
    student.save
    redirect_to '/dojos'
  end

  def destroy
    student = Student.find(params[:sid])
    dojo = Dojo.find(params[:did])
    student.destroy
    redirect_to '/dojos'
  end
end
