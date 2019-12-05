class LeadsController < ApplicationController
  def create
    if Lead.exists?(email: params[:lead][:email])
      redirect_to root_url, alert: "Email is already in database."
    else  
      lead = Lead.new(lead_params)

      if lead.valid_email? && lead.save
        redirect_to root_url, notice: "Congrats! You are added to the list!"
      else
        redirect_to root_url, alert: "Something is wrong. Did you enter a valid email address?"
      end
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email)
  end
end
