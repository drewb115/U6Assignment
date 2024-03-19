# app/controllers/customers_controller.rb
class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
  end
end
