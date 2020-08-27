class ItemsController < ApplicationController
  before_action :set_department 
  before_action :set_item, only: [:show, edit,]

  def index
    @departments = Department.items
  end

  def show
  end

  def new
    @item = @department.item.new
  end

  def create
    @item = @department.item.new(params[:id])
    if @item.create
      redirect_to [@department, @item]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item = @department.item(item_params)
      redirect_to [@department, @item]
    else
      render :edit
   end
  end

  def destrooy
    @item = @department.item.destroy 
    redirect departments_items_path
  end



  private

  def set_department 
    @department = Department.find(params[:id])
 end

 def set_item
  @item = @department.item.find(parmas[:id]) 
end

def item_params
  params.require(:name).permit
end