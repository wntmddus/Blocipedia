class CollaborationsController < ApplicationController
  before_action :set_wiki

  def new
    @collaboration = Collaboration.new
  end
  def create
    @collaboration = Collaboration.new(wiki_id: @wiki.id, user_id: params[:user_id])

    if @collaboration.save
      flash[:notice] = "Collaborator was added to this wiki."
      redirect_to @wiki
    else
      flash[:error] = "Collaborator was not added. Please try again."
      render :show
    end
  end

  def destroy
    @collaboration = Collaboration.find(params[:id])

    if @collaboration.destroy
      flash[:notice] = "Collaborator was removed from this wiki."
      redirect_to @wiki
    else
      flash[:error] = "Collaborator was not removed. Please try again."
      render :show
    end
  end
  private

  def set_wiki
    @wiki = Wiki.find(params[:wiki_id])
  end
end
