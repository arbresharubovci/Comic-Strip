class SharesController < ApplicationController
  def index
    matching_shares = Share.all

    @list_of_shares = matching_shares.order({ :created_at => :desc })

    render({ :template => "shares/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_shares = Share.where({ :id => the_id })

    @the_share = matching_shares.at(0)

    render({ :template => "shares/show.html.erb" })
  end

  def create
    the_share = Share.new
    the_share.comic_id = params.fetch("query_comic_id")
    the_share.ower_id = params.fetch("query_ower_id")

    if the_share.valid?
      the_share.save
      redirect_to("/shares", { :notice => "Share created successfully." })
    else
      redirect_to("/shares", { :alert => the_share.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_share = Share.where({ :id => the_id }).at(0)

    the_share.comic_id = params.fetch("query_comic_id")
    the_share.ower_id = params.fetch("query_ower_id")

    if the_share.valid?
      the_share.save
      redirect_to("/shares/#{the_share.id}", { :notice => "Share updated successfully."} )
    else
      redirect_to("/shares/#{the_share.id}", { :alert => the_share.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_share = Share.where({ :id => the_id }).at(0)

    the_share.destroy

    redirect_to("/shares", { :notice => "Share deleted successfully."} )
  end
end
