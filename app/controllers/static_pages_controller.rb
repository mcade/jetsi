class StaticPagesController < ApplicationController
  def home
  	@header2 = true
  	@skip_footer = true
  end
  def terms
  end

  def privacy
  end

  def timeline
  end

  def events
  end
end
