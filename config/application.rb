require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NaganoCake
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    #エラーメッセージを日本語に
	config.i18n.default_locale = :ja
	 #エラーメッセージを日本語に(追記)
	config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]

   # タイムゾーンを日本時間に設定
  config.time_zone = 'Asia/Tokyo'
   # デフォルトのロケールを日本（ja）に設定
  config.i18n.default_locale = :ja

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #時間を日本時間に変更
    config.time_zone = 'Tokyo'
  end
end

