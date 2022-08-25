class BookmarksController < ApplicationController
  before_action :set_bookmark

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new(:bookmark_id => @bookmark.id)
  end

  def create
    @bookmark = Bookmark.new(review_params)
    @bookmark.list = @bookmark
    if @bookmark.save
      redirect_to list_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:bookmark_id])
  end

  def review_params
    params.require(:bookmark).permit(:content, :rating)
  end
end
