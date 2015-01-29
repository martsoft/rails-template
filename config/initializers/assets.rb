Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('assets', 'fonts', '**')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets')