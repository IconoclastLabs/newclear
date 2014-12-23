# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end


desc "Completely resets everything for your project"
task :nuke do
  `rake clean:all && reset-sim && bundle && pod setup && rake pod:install && rake`
end

desc "Completely reset everythin in project and run"
task :newclear do
  Rake::Task["nuke"].execute
  `rake`
end
