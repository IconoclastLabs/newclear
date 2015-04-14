# encoding: utf-8
unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

# Bring in functionality
require_relative "newclear_helper"
include NewclearHelper


desc "Completely resets everything for your project"
task :nuke do
  nuke_project
  puts NewclearHelper::NUKE_MESSAGE
end

desc "Completely reset everything in project and run"
task :newclear do
  # out with the old
  nuke_project
  # in with the new
  build_project
end


