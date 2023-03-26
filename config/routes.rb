# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about', to: 'personal#about'
  get 'resume', to: 'personal#resume'
  get 'home', to: 'home#index'
  get 'tools', to: 'tools#index'

  namespace :tools do
    namespace :core_keeper do
      get 'stat_calculator', to: 'stat_calculator#index'
    end
  end

  root 'home#index'
end
