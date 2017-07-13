class AdminController < ApplicationController
  before_action :admin, only: [:admin]

  def index
    @services = Service.all
  end

  def admin
    @service = Service.new
  end
end
