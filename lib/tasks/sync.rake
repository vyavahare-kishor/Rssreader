namespace :sync do
  task feeds: [:environment] do
    AsynFeedCallJob.perform_now
  end
end

#task :default => 'sync:feeds'