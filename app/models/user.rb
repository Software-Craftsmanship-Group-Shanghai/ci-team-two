class User < ActiveRecord::Base
  def self.user_login(email, password)
    user = self.find_by_email(email)

    unless user.nil?
      if (user.password == password) and user.register_confirmed?
        return true
      end
    end
    return false
  end
end