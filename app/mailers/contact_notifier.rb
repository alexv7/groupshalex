class ContactNotifier < ApplicationMailer
  default from: 'Yasoo <alexvarjabedian7@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_notifier.request.subject
  #
  def requester(contact)
    @contact = contact
    # string interpolation was not working for some reason
    mail to: "alexvarjabedian7@gmail.com", subject: "You received a contact request from " + @contact.name
  end
end
