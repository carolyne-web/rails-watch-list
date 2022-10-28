class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(allowed_params)
    redirect_to list_path(@list)
  end

  private

  def allowed_params
    params.require(:list).permit(:name)
  end
end

