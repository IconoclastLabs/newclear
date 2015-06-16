# encoding: utf-8
unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

# Bring in functionality
require_relative "newclear_helper"
include NewclearHelper

desc "Completely reset everything in project and run"
task :newclear do
  # out with the old
  nuke_project
  # in with the new
  build_project
end

desc "Completely reset everything in project and create a build"
task :newb do
  nuke_project
  `rake build:simulator`
end

desc "Completely resets everything for your project"
task :nuke do
  nuke_project
  puts NewclearHelper::NUKE_MESSAGE
end

namespace :newclear do
  desc "Print out newclear detected settings"
  task :debug do
    puts "If any of these are off, newclear will not work correctly"
    puts "***" * 20
    puts "Is Android? = #{is_android?}"
    puts "Running Genymotion? = #{running_genymotion?}"
    puts "***" * 20
  end
end

