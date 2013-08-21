namespace :metrics do

  desc "Updates daily values for all metrics"
  task :update => :environment do
    require Rails.root.join('app/metrics/metrics')
    MetricsDefinition.definition.run_fetchers
  end

end