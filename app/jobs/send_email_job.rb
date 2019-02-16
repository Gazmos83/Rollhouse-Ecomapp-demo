class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @user = user
    ExampleMailer.sample_email(@user).deliver_later
  end
end
