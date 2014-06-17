class StaticPagesController < ApplicationController
  def home
  	@skip_header = true
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
