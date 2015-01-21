# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end


desc "Completely resets everything for your project"
task :nuke do
  puts "\nCleaning Project..."
  `rake clean:all`
  puts "\nResetting simulator..."
  `reset-sim`
  puts "\nBundling..."
  `bundle`
  puts "\nSetting up cocoapods..."
  `pod setup`
  puts "\nInstalling cocoapod dependencies..."
  `rake pod:install`
end

desc "Completely reset everything in project and run"
task :newclear do
  Rake::Task["nuke"].execute
  puts "Building project..."
  `rake`
end
