OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '295250143933698', '61f0617a0ba34c34810188fd00f3925e'
end
