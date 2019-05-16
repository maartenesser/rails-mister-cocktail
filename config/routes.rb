Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only:[:create, :new, :destroy]
  end

  # resources :doses, only:[:destroy]
end
