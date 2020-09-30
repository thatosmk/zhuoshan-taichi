class SiteController < ApplicationController
  def gallery
  end
  def index
    redirect_to simple_discussion_path if user_signed_in?
  end

  def about
    @about = Content.where('content_type like ? ', 'about').first
  end
end
