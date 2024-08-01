require_relative '../config/environment'
require 'rails/test_help'
require 'rspec/rails'  # Adicione esta linha se não estiver presente
require 'factory_bot_rails'


RSpec.configure do |config|
  # Configurações do RSpec
  config.include FactoryBot::Syntax::Methods

  # Configuração para uso de fixtures
  # Remova ou comente a configuração de fixture_path que foi removida
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Configurações adicionais
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.filter_rails_from_backtrace!

  # Carregar arquivos de suporte
  Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }
end
