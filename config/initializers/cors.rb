Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Update this to restrict origins to your frontend domain in production
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end
