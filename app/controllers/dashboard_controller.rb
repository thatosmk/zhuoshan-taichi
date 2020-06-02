class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action do |controller|
    unless controller.send(:is_admin?)
      flash[:info] = "you are admin"
      redirect_to root_url
    end
    @admin = current_user
  end

  def videos
    @videos = Video.all
  end

  def overview
    @videos = Video.all
    @users = User.all
    @posts = Post.all
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

    def is_admin?
      current_user.admin?
    end

    def set_club
      @club = Club.first
    end
end
