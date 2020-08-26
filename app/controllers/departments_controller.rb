class DepartmentsController < ApplicationController
  
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
    render partial: "form"
  end

  def create 
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path
    else
      render partial: "form" 
    end
  end

  def edit
  end

  private
  
  def department_params
    params.require(:department).permit(:name)
  end
end
