class ApplicationController < ActionController::Base
    include ApplicationHelper
    private
    def logged_in_customer
        unless logged_in?
        flash[:danger]="Please log in."
        redirect_to new_customer_session_path
        end
    end

    def logged_in_admin
        unless logged_in?
        flash[:danger]="Please log in."
        redirect_to new_admin_session_path
        end
    end
end
