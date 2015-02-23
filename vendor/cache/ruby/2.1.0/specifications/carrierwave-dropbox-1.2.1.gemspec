# -*- encoding: utf-8 -*-
# stub: carrierwave-dropbox 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-dropbox"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Robin Dupret"]
  s.date = "2014-02-24"
  s.description = "CarrierWave storage for Dropbox"
  s.email = ["robin.dupret@gmail.com"]
  s.homepage = "https://github.com/robin850/carrierwave-dropbox"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Dropbox integration for CarrierWave"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, ["~> 0.9"])
      s.add_runtime_dependency(%q<dropbox-sdk>, ["~> 1.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<mini_magick>, [">= 0"])
      s.add_development_dependency(%q<capybara-webkit>, ["~> 1.0"])
      s.add_development_dependency(%q<rails>, ["< 5.0", ">= 3.2.14"])
    else
      s.add_dependency(%q<carrierwave>, ["~> 0.9"])
      s.add_dependency(%q<dropbox-sdk>, ["~> 1.6"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<capybara>, ["~> 2.2"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 0"])
      s.add_dependency(%q<capybara-webkit>, ["~> 1.0"])
      s.add_dependency(%q<rails>, ["< 5.0", ">= 3.2.14"])
    end
  else
    s.add_dependency(%q<carrierwave>, ["~> 0.9"])
    s.add_dependency(%q<dropbox-sdk>, ["~> 1.6"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<capybara>, ["~> 2.2"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 0"])
    s.add_dependency(%q<capybara-webkit>, ["~> 1.0"])
    s.add_dependency(%q<rails>, ["< 5.0", ">= 3.2.14"])
  end
end
