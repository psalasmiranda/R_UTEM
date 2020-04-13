# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( forter.css )
Rails.application.config.assets.precompile += %w( registrar.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( encuesta.css )
Rails.application.config.assets.precompile += %w( UsuarioIndex.css )
Rails.application.config.assets.precompile += %w( productoslist.css )
Rails.application.config.assets.precompile += %w( publicarproducto.css )
Rails.application.config.assets.precompile += %w( formulario.css )
Rails.application.config.assets.precompile += %w( ayuda.css )
Rails.application.config.assets.precompile += %w( mostrarproducto.css )
Rails.application.config.assets.precompile += %w( mostrarproducto.js )
Rails.application.config.assets.precompile += %w( inicio.css )
Rails.application.config.assets.precompile += %w( inicio.js )
Rails.application.config.assets.precompile += %w( UsuarioIndex.js )
Rails.application.config.assets.precompile += %w( aviso_index.css )
Rails.application.config.assets.precompile += %w( confirmations.css )
Rails.application.config.assets.precompile += %w( mailer.css )
Rails.application.config.assets.precompile += %w( edituser.css )
Rails.application.config.assets.precompile += %w( EstadisticoUser.css )
Rails.application.config.assets.precompile += %w( navbar.css )
Rails.application.config.assets.precompile += %w( navbar.js )
Rails.application.config.assets.precompile += %w( listar.js )
Rails.application.config.assets.precompile += %w( indexproducto.css )
Rails.application.config.assets.precompile += %w( mispublicaciones.css )
Rails.application.config.assets.precompile += %w( listar.css )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
