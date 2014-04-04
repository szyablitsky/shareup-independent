class WelcomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
  end

  def dashboard
    render layout: 'angular'
  end
end