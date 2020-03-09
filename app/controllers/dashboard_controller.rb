class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin

  def overview
  end

  def settings
  end

  def members
  end

  def blog
  end

  def calendar
  end

  private
    def set_admin
      @admin = current_user if current_user.try(:admin?)
      @club  = Club.first
    end
end
