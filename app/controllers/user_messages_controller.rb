class UserMessagesController < ApplicationController

  def index
    @user_message = UserMessage.new
  end

  def create
    @user_message = UserMessage.create(permit_params)
    if @user_message
      UsermailerMailer.contact_email(permit_params).deliver_now
      redirect_to root_url, notice: "#{t 'success_message_email'}"
    else
      redirect_to root_url, notice: "#{t 'failed_message_email'}"
    end
  end

  private

    def permit_params
      params.require(:user_message).permit(:first_name, :last_name, :email,
       :phone_number, :message)
    end

end
