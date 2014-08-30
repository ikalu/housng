require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :applications, only: [:new, :create]

  namespace :admin do
    resources :applications, only: [:index, :show]
    resources :users, only: [:index, :update, :show] do
      resources :halls do
        member do
          post "assign" => "hall_assignments#create"
          delete "unassign" => "hall_assignments#destroy"
        end
      end
    end
    resources :halls, only: [:index, :new, :create]
    resources :hall_assignments, only: [:index]
  end

end
