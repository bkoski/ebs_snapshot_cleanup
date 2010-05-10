require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "ebs_snapshot_cleanup"
    gem.summary = %Q{Command-line utility to clean up EBS snapshots}
    gem.description = %Q{Command-line utility to clean up EBS snapshots}
    gem.email = "bkoski@nytimes.com"
    gem.homepage = "http://github.com/bkoski/ebs_snapshot_cleanup"
    gem.authors = ["Ben Koski"]
    gem.add_dependency 'amazon-ec2', '0.9.12'
    gem.add_dependency 'aws_credentials'
    gem.files = ['bin/cleanup-ebs-snapshots','Rakefile','README.rdoc','VERSION']
    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ebs_snapshot_cleanup #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
