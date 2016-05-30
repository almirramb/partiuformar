class AdminFacadeController < ApplicationController
  def disciplines_index
    redirect_to url_for(:controller => :discipline, :action => :index) and return
  end

  def disciplines_show
  end

  def disciplines_new
    redirect_to url_for(:controller => :discipline, :action => :new) and return
  end

  def disciplines_edit
  end

  def disciplines_create(:code, :name, :description, :credits, :prerequisites)
    redirect_to url_for(:controller => :discipline, :action => :create, :code, :name, :description, :credits, :prerequisites)
  end

  def disciplines_update(:code, :name, :description, :credits, :prerequisites)
    redirect_to url_for(:controller => :discipline, :action => :update, :code, :name, :description, :credits, :prerequisites)
  end

  def disciplines_destroy(:id)
    redirect_to url_for(:controller => :discipline, :action => :destroy, :id)
  end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def discipline_params
    params.require(:discipline).permit(:code, :name, :description, :credits, :prerequisites)
  end
end