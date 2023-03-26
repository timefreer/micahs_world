# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ActivePageFinder do
  context 'when given controller and action in config file' do
    before do
      @params = { controller: 'personal', action: 'resume' }
      @active_page_finder = ActivePageFinder.new(@params)
      @expected_page = 'resume'
    end

    it 'returns page name' do
      expect(@active_page_finder.find).to eq @expected_page
    end
  end

  context 'when given controller in file but action not in config file' do
    before do
      @params = { controller: 'personal', action: 'not_real_action' }
      @active_page_finder = ActivePageFinder.new(@params)
      @expected_page = 'home'
    end

    it 'returns nil' do
      expect(@active_page_finder.find).to be_nil
    end
  end

  context 'when given controller and action not in config file' do
    before do
      @params = { controller: 'not_real_controller', action: 'not_real_action' }
      @active_page_finder = ActivePageFinder.new(@params)
      @expected_page = 'home'
    end

    it 'returns nil' do
      expect(@active_page_finder.find).to be_nil
    end
  end
end
