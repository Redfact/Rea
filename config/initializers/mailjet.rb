# kindly generated by appropriated Rails generator
Mailjet.configure do |config|
  config.api_key = ENV['API_KEY']
  config.secret_key =ENV['SECRET_KEY']
  config.default_from = 'tantelyrandria@ymail.com'
  config.api_version = 'v3.1'
end