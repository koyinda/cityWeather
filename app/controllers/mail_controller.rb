class MailController < ApplicationController
    def new
    end
    def create
     # we'll create our Registration job here
     puts :message
     SendDailyWorker.new.perform
     #MailsJob.perform_later params.permit(:message)[:message]
     flash.now[:notice] = "Email Sent Successfully"
     render :new
    end
end
