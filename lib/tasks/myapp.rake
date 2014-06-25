namespace :app do

  task :jeff do
    puts "Hello"
  end

  desc "Analyze something important."
  task :stats => [:environment, :jeff] do

    puts Flight.count

  end
end
