Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1405729459701791', '7a35f29e2f47fc2f85cefca96e23b3b8',:scope => 'email', :display => 'popup', :image_size => 'large'
end
