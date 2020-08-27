class DepartmentsController < ApplicationController
  #before_action :set_deparment, only: [:show, :edit, :destroy]
  def index
    @departments = Department.all
  end

  def show
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
  def update 
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path
    else
      render partial: "form" 
    end
  end
  def destroy 
    @department.destroy
    redirect_to departments_path
  else 
    render :department_path
  end

  def edit
    @department = Department.find(params[:id])
    render partial: "form"
  end

  private
  # def set_department 
  #   @department = Department.find(params[:id])
  # end

  def department_params
    params.require(:department).permit(:name)
  end
end
