# encoding: utf-8
unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

NUKE_MESSAGE = <<-eos
   *********************************
           N U K E  COMPLETE 
   *********************************
eos

desc "Completely resets everything for your project"
task :nuke do
  nuke_project
  puts NUKE_MESSAGE
end

desc "Completely reset everything in project and run"
task :newclear do
  # out with the old
  nuke_project
  # in with the new
  puts "Building project..."
  if is_android?
    `rake device`
  else
    `rake`
  end
end

def nuke_project
  puts "\nCleaning Project..."
  `rake clean:all`
  
  unless is_android?
    puts "\nResetting simulator..."
    `reset-sim`
  end

  puts "\nBundling..."
  `bundle install`
  
  # iOS Depencies
  if has_task? "pod:install"
    puts "\nSetting up cocoapods..."
    `pod setup`
    puts "\nInstalling cocoapod dependencies..."
    `rake pod:install`
  end

  # Android Dependencies
  if has_task? "gradle:install"
    puts "\nSetting up gradle automation dependencies..."
    `rake gradle:install`
  end
end

def has_task?(task_name)
  Rake.application.tasks.count{ |rt| rt.name == "task_name"} > 0
end

def is_android?
  @android ||= system("rake -T | grep -q .apk")
end
