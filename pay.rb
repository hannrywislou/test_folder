class PaymentsController < ApplicationController
  def  new
    render 'errors/access_denied' unless current_user.can_create?(Payment)
    @payment = Payment.new
  end
 
  def create
    render 'errors/access_denied' unless current_user.can_create?(Payment)
    @payment = Payment.new(payment_params)
    begin
      if @payment.save
        bank_api = BankApi.new
        bank_api.register_payment(@payment)
        current_user.withdraw(@payment)
        current_user.send_payment_notification(@payment)
      else
        flash[:error] = @payment.errors.full_messages
        render 'new'
      end   
    rescue => exception
      flash[:error] = exception.message
      render 'new'
    end
    redirect_to @payment
  end
 
  private
 
  def payment_params
        bank_api.register_payment(@payment)
        current_user.withdraw(@payment)
  end
end