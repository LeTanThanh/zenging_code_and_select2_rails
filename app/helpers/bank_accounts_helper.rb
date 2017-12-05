module BankAccountsHelper
  def bank_code_options
    ZenginCode::Bank.all.inject({}) do |options, (bank_code, bank)|
      options.merge! bank.name => bank_code
    end
  end

  def branch_code_options bank_code
    ZenginCode::Bank.all[bank_code].branches.inject({}) do |options, (branch_code, branch)|
      options.merge! branch.name => branch_code
    end
  end
end
