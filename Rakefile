require_relative 'config/environment'
require 'sinatra/activerecord/rake'

task :console do
  Pry.start
end

task :dbdo => ['db:drop', 'db:create', 'db:migrate', 'db:seed'] do
end
