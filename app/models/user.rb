class User < ActiveRecord::Base
  def self.user_login(email, password)
    user = self.find_by_email(email)

    unless user.nil?
      if user.password == password
        return true
      end
    end
    return false
  end
end