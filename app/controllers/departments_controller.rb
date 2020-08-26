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

  def edit
  end
end
