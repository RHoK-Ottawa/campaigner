Petitions::Application.routes.draw do
  resources :campaigns do
    resources :signatories do
      get 'success', on: :member
    end
  end
end
