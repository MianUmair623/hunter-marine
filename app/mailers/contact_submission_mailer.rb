class ContactSubmissionMailer < ActionMailer::Base
  default from: "contacts@hinesfurlongline.com"

  def submission_email(submission)
    @submission = submission

    subject = @submission.subject.present? ? ' - '+@submission.subject : ''

    mail(
      to: HunterMarine::Application.config.contact_locations[@submission.location],
      subject: 'Hines Furlong Line Website Contact'+subject,
      reply_to: @submission.email
    )
  end
end
