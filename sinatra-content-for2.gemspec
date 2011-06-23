#encoding: utf-8

Gem::Specification.new do |s|
  s.name    = "sinatra-content-for2"
  s.version = "0.2.4"
  s.date = Time.now.strftime('%Y-%m-%d')

  s.description = "Small Sinatra extension to add a content_for helper similar to Rails'"
  s.summary     = "Small Sinatra extension to add a content_for helper similar to Rails'"
  s.homepage    = "https://github.com/Undev/sinatra-content-for2"

  s.authors = ["Nicolás Sanguinetti"]
  s.email   = "contacto@nicolassanguinetti.info"

  s.require_paths     = ["lib"]
  s.rubyforge_project = "sinatra-ditties"
  s.has_rdoc          = true
  s.rubygems_version  = "1.3.7"

  s.add_dependency "sinatra"
  s.add_development_dependency "slim"
  s.add_development_dependency "erubis"
  s.add_development_dependency "haml"
  s.add_development_dependency "bundler", ">= 1.0.10"
  

  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
end

