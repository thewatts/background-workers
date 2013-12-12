class Sleeper
  @queue = :sleep

  def self.perform(seconds)
    40.times do
      puts "still working..."
      sleep(seconds)
    end
    puts "... DONE WORKING!"
  end
end
