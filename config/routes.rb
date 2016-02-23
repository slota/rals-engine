Rails.application.routes.draw do
  # root 'welcome#index'
  get '/api/v1/merchants/:id/items', to: 'api/v1/merchants/items#index', defaults: { format: 'json' }
  get '/api/v1/merchants/:id/invoices', to: 'api/v1/merchants/invoices#index', defaults: { format: 'json' }

  get '/api/v1/invoices/:id/transactions', to: 'api/v1/invoices/transactions#index', defaults: { format: 'json' }
  get '/api/v1/invoices/:id/invoice_items', to: 'api/v1/invoices/invoice_items#index', defaults: { format: 'json' }
  get '/api/v1/invoices/:id/items', to: 'api/v1/invoices/items#index', defaults: { format: 'json' }
  get '/api/v1/invoices/:id/customer', to: 'api/v1/invoices/customer#show', defaults: { format: 'json' }
  get '/api/v1/invoices/:id/merchant', to: 'api/v1/invoices/merchant#show', defaults: { format: 'json' }

  get '/api/v1/invoice_items/:id/invoice', to: 'api/v1/invoice_items/invoice#show', defaults: { format: 'json' }
  get '/api/v1/invoice_items/:id/item', to: 'api/v1/invoice_items/item#show', defaults: { format: 'json' }

  get '/api/v1/items/:id/invoice_items', to: 'api/v1/items/invoice_items#index', defaults: { format: 'json' }
  get '/api/v1/items/:id/merchant', to: 'api/v1/items/merchant#show', defaults: { format: 'json' }

  get '/api/v1/transactions/:id/invoice', to: 'api/v1/transactions/invoice#show', defaults: { format: 'json' }

  get '/api/v1/customers/:id/invoices', to: 'api/v1/customers/invoices#index', defaults: { format: 'json' }
  get '/api/v1/customers/:id/transactions', to: 'api/v1/customers/transactions#index', defaults: { format: 'json' }


  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :merchants do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :customers do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :invoice_items do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :invoices do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :items do
        resources :find_all
      end
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :transactions do
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
