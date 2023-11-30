class Job < ApplicationRecord
	after_save :submit_job_to_queue

	def submit_job_to_queue
		puts "submit_job_to_queue"
		HardJob.perform_async(self.attributes.merge({hello: true}).to_json)
	end
end
