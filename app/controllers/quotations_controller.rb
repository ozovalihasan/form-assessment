class QuotationsController < ApplicationController
  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)

    respond_to do |format|
      if @quotation.save
        @transaction = Transaction.new
        format.turbo_stream 

      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

    def quotation_params
      params.require(:quotation).permit(:first_name, :last_name, :email, :phone, :municipal_evaluation, :address, :postal_code, :city, :province,)
    end
end
