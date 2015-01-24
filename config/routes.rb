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
  resources :applications, only: [:new, :create, :index, :show]
  resources :halls, only: [:index, :show]

  namespace :admin do
    resources :rooms, only: [:index]
    resources :applications, only: [:index, :show, :update]
    resources :users, only: [:index, :update, :show] do
      resources :applications do
        member do
          post "assign" => "room_assignments#create"
        end
      end
      resources :halls do
        member do
          post "assign" => "hall_assignments#create"
          delete "unassign" => "hall_assignments#destroy"
        end
      end
    end
    resources :halls, only: [:index, :new, :create, :show]
    resources :hall_assignments, only: [:index]
  end

  get  ':page', to: 'pages#static_page',  as: :static
end