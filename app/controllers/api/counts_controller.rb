class API::CountsController < ApplicationController
  before_filter :login_required, :except => [:index]
  def index
    @user = User.where(:api_key => params[:api_key])
    render layout: false
  end
end
