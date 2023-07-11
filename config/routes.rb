Rails.application.routes.draw do
  get 'bewerbungs', to: 'bewerbungs#index'
  get 'bewerbungs/show'
  get 'bewerbungs/new'
  get 'bewerbungs/edit'
  get 'bewerbungs/update'
  get 'job_postings', to: 'job_postings#index'
  get 'job_postings/show'
  get 'job_postings/new'
  get 'job_postings/edit'
  get 'job_postings/update'
  get 'companies', to: 'companies#index'
  get 'companies/show'
  get 'companies/new'
  get 'companies/edit'
  get 'companies/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
