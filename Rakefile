# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require "rspec/core/rake_task"

Rails.application.load_tasks


#Gerar tarefa para roda testes, roda apenas com rspec
RSpec::Core::RakeTask.new
#Quebrar vários testes em diretórios específicos
#Gera tarefas para executar testes específicos de cada
#diretório. No caso spec/models
RSpec::Core::RakeTask.new("spec:models") do |t|
  t.pattern = "spec/models/**/*_spec.rb"
  t.ruby_opts = %w[-Ispec -Ilib -Iapp] #inclui diretórios os testes
  t.rspec_opts = %w[--color] #define opções do rspec
end