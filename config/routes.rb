Rails.application.routes.draw do
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact
