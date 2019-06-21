class UserMailer < ApplicationMailer

  def welcome_email(user_id)
      @user = User.find_by_id(user_id)
      mail(   :to      => "kapil.spaceo@gmail.com",
              :subject => "Welcome"
      ) do |format|
        format.text
        format.html
      end
    end
end
