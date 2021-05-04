class EmploymentApplicationMailer < ActionMailer::Base
  default from: "jobs@hinesfurlongline.com"

  def application_email(application)
    @application = application
    mail(to: HunterMarine::Application.config.employment_application_recipient, subject: 'Hines Furlong Line Employment Application Submission')
  end
end
