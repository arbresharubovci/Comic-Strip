class ComicsController < ApplicationController
  def index
    matching_comics = Comic.all

    @list_of_comics = matching_comics.order({ :created_at => :desc })

    render({ :template => "comics/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_comics = Comic.where({ :id => the_id })

    @the_comic = matching_comics.at(0)

    render({ :template => "comics/show.html.erb" })
  end

  def create
    the_comic = Comic.new
    #the_comic.title = params.fetch("query_title")
    the_comic.owner_id = params.fetch("query_owner_id")
    #the_comic.photo = params.fetch("query_photo")
    the_comic.caption = params.fetch("query_caption")
    #the_comic.likes_count = params.fetch("query_likes_count")
    #the_comic.comments_count = params.fetch("query_comments_count")
    #the_comic.shares_count = params.fetch("query_shares_count")

    if the_comic.valid?
      the_comic.save
      redirect_to("/comics", { :notice => "Comic created successfully." })
    else
      redirect_to("/comics", { :alert => the_comic.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_comic = Comic.where({ :id => the_id }).at(0)

    the_comic.title = params.fetch("query_title")
    the_comic.owner_id = params.fetch("query_owner_id")
    the_comic.photo = params.fetch("query_photo")
    the_comic.caption = params.fetch("query_caption")
    the_comic.likes_count = params.fetch("query_likes_count")
    the_comic.comments_count = params.fetch("query_comments_count")
    the_comic.shares_count = params.fetch("query_shares_count")

    if the_comic.valid?
      the_comic.save
      redirect_to("/comics/#{the_comic.id}", { :notice => "Comic updated successfully."} )
    else
      redirect_to("/comics/#{the_comic.id}", { :alert => the_comic.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_comic = Comic.where({ :id => the_id }).at(0)

    the_comic.destroy

    redirect_to("/comics", { :notice => "Comic deleted successfully."} )
  end
end
