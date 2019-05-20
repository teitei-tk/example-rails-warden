class PasswordStrategy < ::Warden::Strategies::Base
  def valid?
    email && password
  end

  def authenticate!
    user = User.find_by_email(email)
    unless user
      return fail!('invalid email address')
    end

    unless user.authenticate(password)
      return fail!('invalid password')
    end

    success!(user)
  end

  private

  def email
    params['email']
  end

  def password
    params['password']
  end
end
