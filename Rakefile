# -*- ruby -*-
require 'rspec/core/rake_task'

task :default=>:spec

RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern    = 'spec/units/**/*_spec.rb'
  t.rspec_opts = '--color'
end

task :console do
  sh "irb -Ilib -rdominion"
end

desc "Start a server. Defaults to port 3000"
task :server do
  port = ENV['PORT'] || 3000
  sh "ruby -Ilib -rdominion -e 'Server.new(#{port}).setup.run'"
end

desc "Play the game. Pass HOST or PORT as options"
task :play do
  host = ENV['HOST'] || 'localhost'
  port = ENV['PORT'] || 3000
  sh "telnet #{host} #{port}"
end

namespace :server do
  desc "Start a server with an AI Big Money player sitting"
  task :big_money do
    port = ENV['PORT'] || 3000
    sh "ruby -Ilib -rdominion -e 'Server.new(#{port}).setup.big_money.run'"
  end
  
  desc "Start a server with an AI Highlander player sitting"
  task :highlander do
    port = ENV['PORT'] || 3000
    sh "ruby -Ilib -rdominion -e 'Server.new(#{port}).setup.highlander.run'"
  end
end

desc "Run scripts/simulation"
task :simulate do
  sh "ruby -Ilib -rdominion ./scripts/simulation.rb"
end

