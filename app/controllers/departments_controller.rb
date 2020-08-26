class DepartmentsController < ApplicationController
  
  def index
    @department = Department.all
  end

  def show

  end

  def new
  end

  def edit
  end
end
