Rails.application.routes.draw do
  # root 'welcome#index'
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :merchants do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :items, :merchants, :customers, :invoice_items, :invoices, :transactions
    end
  end

end
