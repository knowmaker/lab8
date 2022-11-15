# frozen_string_literal: true

Rails.application.routes.draw do
  get 'translate/input'
  get 'translate/output'
  root to: redirect('translate/input')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
