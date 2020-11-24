class MailController < ApplicationController
    def new
    end
    def create
     SendDailyWorker.new.perform
     #MailsJob.perform_later params.permit(:message)[:message]
     flash.now[:notice] = "Email Sent Successfully"
     render :new
    end
end
