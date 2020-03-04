
[1mFrom:[0m /vagrant/nagano_cake/app/controllers/customer/orders_controller.rb @ line 26 Customer::OrdersController#purchase:

    [1;34m22[0m: [32mdef[0m [1;34mpurchase[0m
    [1;34m23[0m:     session[[33m:order[0m] = [1;34;4mOrder[0m.new()
    [1;34m24[0m:     binding.pry
    [1;34m25[0m: 
 => [1;34m26[0m:     [32mif[0m params[[33m:order[0m][[33m:selected_status[0m] === [31m[1;31m"[0m[31m1[1;31m"[0m[31m[0m
    [1;34m27[0m: 
    [1;34m28[0m: 
    [1;34m29[0m:     [1;34m# elsif @selected_status === "2"[0m
    [1;34m30[0m:     [1;34m#         order.address = deliveie.address[0m
    [1;34m31[0m:     [1;34m#         session[:order] = order_params[0m
    [1;34m32[0m: 
    [1;34m33[0m:     [1;34m# else @selected_status === "3"[0m
    [1;34m34[0m:     [1;34m#     session[:order] = order_params[0m
    [1;34m35[0m:     [32mend[0m
    [1;34m36[0m:     [1;34m# session[:order] = Order.new()[0m
    [1;34m37[0m:     [1;34m# session[:order][:payment_option] = params[:payment_option] [0m
    [1;34m38[0m:     [1;34m# session[:order][:postal_code] = params[:pastal_code] [0m
    [1;34m39[0m:     [1;34m# session[:order][:address] = params[:address] [0m
    [1;34m40[0m:     [1;34m# session[:order][:receiver] = params[:receiver] p[0m
    [1;34m41[0m: [32mend[0m

