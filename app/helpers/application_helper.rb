module ApplicationHelper
    
    def logged_in?
        !current_customer.nil?
    end

    def current_customer?(customer)
      customer==current_customer
    end

    def current_admin?(admin)
      admin==current_admin
    end
end
