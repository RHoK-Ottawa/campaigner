Petitions::Application.routes.draw do
  
  root to: 'campaigns#index'

  match 'app', :to => redirect('/petition/petition'), via: [:get]

  resources :campaigns do
    resources :signatories do
      get 'success', on: :member
    end
  end
end
