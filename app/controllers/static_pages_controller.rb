include ApplicationHelper

class StaticPagesController < ApplicationController
  def home
  #	debugger
  end

  def challenge
    @@gg=1
    a = ApplicationHelper::rand_recs(2)
    @event=Array.new
    @event[1]=Event.find(a[0])
    @event[2]=Event.find(a[1])
  end

  def feedback
  end

  def help
  end
  
  def about
  end
end
