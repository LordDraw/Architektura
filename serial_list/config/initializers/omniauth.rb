OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '245726235564701','49aac555b1f82c0b24c30363b3f57b23', :display => "popup"
end

