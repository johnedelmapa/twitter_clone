class PagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @microposts = current_user.feed.paginate(page: params[:page], per_page: 10)
      render 'users/home_feed'
    end
  end

  def about
  end
end
