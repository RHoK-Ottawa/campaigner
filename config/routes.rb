Petitions::Application.routes.draw do
  resources :campaigns do
    resources :signatories
  end
end
