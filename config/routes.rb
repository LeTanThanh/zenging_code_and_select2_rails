Rails.application.routes.draw do
  root "bank_accounts#new"
  resources :bank_accounts do
    collection do
      post :render_branch_code_select_tag
    end
  end
end
