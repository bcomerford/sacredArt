require 'json'

class WelcomeController < ApplicationController
  include HTTParty
  before_action :require_sign_in, only: :admin
  before_action :authorize_user, only: :admin

  def index
  end

  def event
    render layout: false
  end

  def about
  end

  def new
  end

  def submissions
  end

  def contact
  end

  def admin

  end

  private

  def authorize_user
    unless current_user.role == 'admin'
      flash[:alert] = "You must be an admin to do that."
      redirect_to index_path
    end
  end
end
