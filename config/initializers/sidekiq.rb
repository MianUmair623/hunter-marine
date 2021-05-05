require 'sidekiq'
require 'sidekiq/web'
require 'sidekiq/cron/web'

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == ["sidekiqadmin", "hcents3@"]
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0', namespace: "sidekiq_hunter_marine_#{Rails.env}" }
  config.error_handlers << Proc.new { |ex,context| Airbrake.notify_or_ignore(ex, parameters: context) }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0', namespace: "sidekiq_hunter_marine_#{Rails.env}" }
end

schedule_file = "config/schedule.yml"
if File.exists?(schedule_file)
  sidekiq_cron = YAML.load_file(schedule_file)
  Sidekiq::Cron::Job.load_from_hash sidekiq_cron
end