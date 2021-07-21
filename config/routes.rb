Rails.application.routes.draw do
  root to: 'pages#top'

  namespace 'api' do
    namespace 'v1' do
      resources :news, only: [:index, :show] 
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
