include ApplicationHelper

class StaticPagesController < ApplicationController
  def home
  #	debugger
  end

  def challenge
    a = ApplicationHelper::rand_recs(2)
    @event=Array.new
    @event[1]=Event.find(a[0])
    @event[2]=Event.find(a[1])
    @event[3]= session[:x]
  end

  def feedback
    params.inspect
  # @event = Event.new(event_params)

  end

  def help
  end
  
  def about
  end
end
