Rails.application.routes.draw do
  get 'employees/index'

  get 'employees/create'

  get 'employees/new'

  get 'employees/edit'

  get 'employees/show'

  get 'employees/update'

  get 'employees/destroy'

  get 'welcome/index'

    resources :employees

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
