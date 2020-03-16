class SiteController < ApplicationController
  def gallery
  end
  def index
  end

  def about
    @about = Content.where('content_type like ? ', 'about').first
  end
end
