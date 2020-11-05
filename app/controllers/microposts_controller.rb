class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Sucessfully saved!"
      redirect_back(fallback_location: request.referer)
    else
      render 'users/home_feed'
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    flash[:success] = "Successfully Deleted Post!"
    redirect_back(fallback_location: request.referer)
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end
end
