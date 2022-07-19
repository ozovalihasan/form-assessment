class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to new_quotation_url, notice: "Transaction was successfully created." }
      end
    end
  end

  private

    def transaction_params
      params.require(:transaction).permit(:language, :first_homeowner, :second_homeowner, :third_homeowner, :type_property, :owner, :purchase_date, :property_value, :lot_number, :adress, :city, :postal_code, :bound_water, :municipial_sewer, :issued, :denied, :note, :agent_name, :agent_email, )
    end
end

