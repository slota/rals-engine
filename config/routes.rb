Rails.application.routes.draw do
  # root 'welcome#index'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      namespace :merchants do
        get 'most_revenue', to: 'most_revenue#index'
        get 'random', to: 'random#show'
        get 'find', to: 'find#show'
        get 'find_all', to: 'find#index'
        get '/:id/customers_with_pending_invoices', to: "customers_with_pending_invoices#index"
        get '/:id/favorite_customer', to: 'favorite_customer#show'
        get '/:id/items', to: 'items#index'
        get '/:id/invoices', to: 'invoices#index'
        get '/:id/revenue', to: 'revenue#show'
      end

      namespace :customers do
        get 'find', to: "find#show"
        get 'find_all', to: "find#index"
        get '/:id/favorite_merchant', to: "favorite_merchant#show"
        get '/:id/invoices', to: 'invoices#index'
        get '/:id/transactions', to: 'transactions#index'
      end

      namespace :invoice_items do
        get 'find', to: "find#show"
        get 'find_all', to: "find#index"
        get '/:id/invoice', to: 'invoice#show'
        get '/:id/item', to: 'item#show'
      end

      namespace :invoices do
        get 'find', to: "find#show"
        get 'find_all', to: "find#index"
        get '/:id/transactions', to: 'transactions#index'
        get '/:id/invoice_items', to: 'invoice_items#index'
        get '/:id/items', to: 'items#index'
        get '/:id/customer', to: 'customer#show'
        get '/:id/merchant', to: 'merchant#show'
      end

      namespace :items do
        get 'find', to: 'find#show'
        get 'find_all', to: 'find#index'
        get '/:id/invoice_items', to: 'invoice_items#index'
        get '/:id/merchant', to: 'merchant#show'
      end

      namespace :transactions do
        get 'find', to: 'find#show'
        get 'find_all', to: 'find#index'
        get '/:id/invoice', to: 'invoice#show'
      end

      resources :items, only: [:index, :show]
      resources :merchants, only: [:index, :show]
      resources :invoice_items, only: [:index, :show]
      resources :invoices, only: [:index, :show]
      resources :transactions, only: [:index, :show]
      resources :customers, only: [:index, :show]
    end
  end


end
