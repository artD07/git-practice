class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def create
    list = List.new(list_params)
    list.save
    edirect_to '/top'
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
