require Rails.root.join('lib/warden/strategies/password_strategy')

Warden::Strategies.add(:password, PasswordStrategy)