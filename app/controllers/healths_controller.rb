class HealthsController < ApplicationController
  def index
  end
  def new
    @health = Health.new
  end
end
