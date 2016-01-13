require 'gmail'

module EmailsHelper

  def self.send_email(name, email, subject, body)
    username = 'lionambassadorstest@gmail.com'
    password = 'lionstest543'
    email_prefix = 'LA-FORM: '
    lion_ambassadors_vp_email = 'lionambassadorstest@gmail.com'

    Gmail.new(username, password) do |gmail|
      gmail.deliver do
        to username
        subject email_prefix + subject
        text_part do
          body body
        end
      end

      gmail.deliver do
        to lion_ambassadors_vp_email
        subject email_prefix + subject
        text_part do
          body body
        end
      end
      gmail.logout
    end
  end
end
