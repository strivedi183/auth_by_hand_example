class User < ActiveRecord::Base
  def self.authenticate(form_email, form_password)
    user = User.find_by(email: form_email)
    if user && user.password == form_password
      true
    else
      false
    end
  end
end
