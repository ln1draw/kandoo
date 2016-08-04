Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: 'welcome#index'

  scope '/api' do
    scope '/v1' do
      post 'task'              => 'api#create'
      get  'tasks'             => 'api#index'
      post 'task/:id/complete' => 'api#complete'
    end
  end
end
