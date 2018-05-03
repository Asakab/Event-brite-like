class UsersController < ApplicationController
  def home
  end

  def new
  	@user = User.new

  end

  def create
  	@user = User.create(name: params['name'])
  end

  def show
  	@user = User.create(name: params['name'])
  end
end
