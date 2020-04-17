class UsersDashboardController < ApplicationController
  def videos
    @videos = Video.all
  end

  def files
    @files = TaichiFile.all
  end

  def gallery
  end

  def settings
  end
end
