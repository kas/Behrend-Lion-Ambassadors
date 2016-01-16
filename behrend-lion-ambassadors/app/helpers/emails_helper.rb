require 'gmail'
module EmailsHelper

  def self.send_email(name, email, subject, body)
    username = 'lionambassadorstest@gmail.com'
    password = 'lionstest543'
    email_prefix = 'LA-FORM: '
    vp_email = 'lionambassadorstest@gmail.com'
    lionambassadoremail = 'lionambassadorstest@gmail.com'

    Gmail.new(username, password) do |gmail|
      gmail.deliver do
        to lionambassadoremail
        subject email_prefix + subject
        text_part do
          body "REPLY TO: " +email +", "+ name + "\n"+ body
        end
      end

      gmail.deliver do
        to vp_email
        subject email_prefix + subject
        text_part do
          body "REPLY TO: " +email +", "+ name + "\n"+ body
        end
      end
      gmail.logout
    end
  end
end
