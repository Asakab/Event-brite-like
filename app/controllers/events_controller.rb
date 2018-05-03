class EventsController < ApplicationController

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create(description: params['description'], date: params['date'], place: params['place'])
  end

  def show
    @event = Event.create(description: params['description'], date: params['date'], place: params['place'])
  end




end
