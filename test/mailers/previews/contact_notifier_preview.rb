# Preview all emails at http://localhost:3000/rails/mailers/contact_notifier
class ContactNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_notifier/request
  def request
    ContactNotifier.request
  end

end
