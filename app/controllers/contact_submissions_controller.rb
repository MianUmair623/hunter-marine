class ContactSubmissionsController < ApplicationController

  def index
    redirect_to contact_path
  end

  def new
    @contact_submission = ContactSubmission.new
    @contacts = Contact.order("name asc")
  end

  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)
    @contact_submission.valid?

    if verify_recaptcha(model: @contact_submission, message: "Please prove you're not a robot.") && @contact_submission.save
      ContactSubmissionMailer.submission_email(@contact_submission).deliver
      redirect_to contact_path(anchor: 'contact-heading'), flash: { message: 'Thanks! We will get back to you soon.' }
    else
      render :new
    end
  end

  private
    def contact_submission_params
      params.require(:contact_submission).permit(:location, :subject, :name, :email, :message)
    end
end
