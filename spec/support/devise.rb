RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
#  config.sign_out_via = Rails.env.test? ? :get : :delete
  include Warden::Test::Helpers
end
