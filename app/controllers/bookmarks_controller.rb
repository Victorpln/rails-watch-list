class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
    # we need `restaurant_id` to associate review with corresponding restaurant
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:commment, :movie_id)
  end
end
