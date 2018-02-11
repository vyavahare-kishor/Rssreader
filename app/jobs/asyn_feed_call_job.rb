class AsynFeedCallJob < ApplicationJob
	queue_as :default

  def perform
  	AsyncRequestsService.new.nokogiri_parser
  	self.class.set(wait: 1.minutes).perform_later
  end
end
