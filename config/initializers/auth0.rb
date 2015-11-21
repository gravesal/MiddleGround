Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    ENV["AUTH0_CLIENT_ID"],
    ENV["AUTH0_CLIENT_SECRET"],
    'middleground.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end