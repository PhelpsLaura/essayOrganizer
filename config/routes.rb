Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :essays do
    resources :drafts
    resources :sources do
      resources :research_cards
    end
  end
  root 'essays#index'
end
