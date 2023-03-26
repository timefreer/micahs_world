require 'active_page_finder'

class ApplicationController < ActionController::Base
  before_action :set_active_page

  def set_active_page
    active_page_finder = ActivePageFinder.new(params)
    @active_page = active_page_finder.find
  end
end
