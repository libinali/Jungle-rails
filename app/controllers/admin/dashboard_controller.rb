class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD']
  
  def show
    @product_count = Product.all.count
    @category_count = Category.all.count
  end
end