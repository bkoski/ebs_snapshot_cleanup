# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ebs_snapshot_cleanup}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Koski"]
  s.date = %q{2010-05-10}
  s.default_executable = %q{cleanup-ebs-snapshots}
  s.description = %q{Command-line utility to clean up EBS snapshots}
  s.email = %q{bkoski@nytimes.com}
  s.executables = ["cleanup-ebs-snapshots"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/cleanup-ebs-snapshots"
  ]
  s.homepage = %q{http://github.com/bkoski/ebs_snapshot_cleanup}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Command-line utility to clean up EBS snapshots}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<amazon-ec2>, ["= 0.9.12"])
      s.add_runtime_dependency(%q<aws_credentials>, [">= 0"])
    else
      s.add_dependency(%q<amazon-ec2>, ["= 0.9.12"])
      s.add_dependency(%q<aws_credentials>, [">= 0"])
    end
  else
    s.add_dependency(%q<amazon-ec2>, ["= 0.9.12"])
    s.add_dependency(%q<aws_credentials>, [">= 0"])
  end
end