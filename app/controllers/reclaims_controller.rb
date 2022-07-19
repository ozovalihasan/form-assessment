class ReclaimsController < ApplicationController
  def new
    @reclaim = Reclaim.new
  end

  def create
    @reclaim = Reclaim.new(reclaim_params)

    respond_to do |format|
      if @reclaim.save
        format.html { redirect_to new_quotation_url, notice: "Reclaim was successfully created." }
      end
    end
  end

  private

    def reclaim_params
      params.require(:reclaim).permit(:phone, :best_moment )
    end
end

