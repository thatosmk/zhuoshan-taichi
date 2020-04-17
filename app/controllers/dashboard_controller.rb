class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin

  def videos
    @videos = Video.all
  end

  def overview
  end

  def settings
  end

  def members
    @users = User.all
  end

  def blog
    @posts = Post.all
  end

  def calendar
  end

  private
    def set_admin
      @admin = current_user if current_user.try(:admin?)
      @club  = Club.first
    end
end
