Rails.application.config.middleware.use OmniAuth::Builder do
    provider(
      :auth0,
      'uzBJnK2ThQ6zzIwY3fabyQ7qbe5xH16c',
      'YOUR_CLIENT_SECRET',
      'jades.auth0.com',
      callback_path: '/auth/auth0/callback',
      authorize_params: {
        scope: 'openid email profile'
      }
    )
  end