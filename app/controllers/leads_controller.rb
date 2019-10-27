class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    respond_to do |format|
      if @lead.save
        format.html { redirect_to root_url, notice: "Congrats! You are added to the list" }
      else
        format.html { redirect_to root_url, notice: "Woops...something went wrong. Please make sure it is a valid email" }
      end
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email)
  end
end
