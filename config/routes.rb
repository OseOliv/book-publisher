Rails.application.routes.draw do
  root "livros#index"

  resources :montagems
  resources :pecas
  resources :fornecedors
  resources :livros
  resources :autors


end
