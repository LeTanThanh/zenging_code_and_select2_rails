class BankAccountsController < ApplicationController
  include BankAccountsHelper
  include ActionView::Helpers::FormOptionsHelper
  include ActionView::Helpers::FormTagHelper

  def new
  end

  def render_branch_code_select_tag
    respond_to do |format|
      format.js do
        render json: {
          branch_code_options: options_for_select(branch_code_options params[:bank_code])
        }
      end
    end
  end
end
