class HardJob
  include Sidekiq::Job

  def perform(*args)
    puts "HardJob args: #{args.inspect}"
    arguments = JSON.parse(args[0]) rescue {}
    puts "arguments: #{arguments.inspect}"
  end
end
