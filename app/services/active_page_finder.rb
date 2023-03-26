# frozen_string_literal: true

require 'yaml'

class ActivePageFinder
  def initialize(params = {})
    @controller = params[:controller]
    @action = params[:action]
    @config = HashWithIndifferentAccess.new(yaml_file)
  end

  def find
    page_with_config = @config.select do |page, page_config|
      page_config[:controller] == @controller && page_config[:action] == @action
    end

    page_with_config.keys.first
  end

  private

  def yaml_file
    path = Rails.root.join('app', 'services', 'active_page_finder.yml')
    YAML.load_file(path)
  end
end
