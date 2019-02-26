if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_XEbYsGaxkDkXjdIZTiqSMIp9',
    secret_key: 'sk_test_LOZyeCBZGVvnf0Hf3mtd5E7w'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
