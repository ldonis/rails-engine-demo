module Dog
    class Engine < ::Rails::Engine
        isolate_namespace Dog
        # register engine migrations path
        initializer :append_migrations do |app|
            unless app.root.to_s.match root.to_s
                config.paths["db/migrate"].expanded.each do |expanded_path|
                    app.config.paths["db/migrate"] << expanded_path
                end
            end
        end


        # register templates path in the core. LESLI_ROOT is used to calculate the relative path to the core,
        # since Rails.root is not defined at this point. You can find it in EngineDirectory/bin/rails
        config.generators do |g|
            g.templates.unshift Pathname.new(LESLI_ROOT).join("lib", "templates") if defined? LESLI_ROOT
        end
    end
end
