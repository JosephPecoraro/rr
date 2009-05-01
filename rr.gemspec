# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rr}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joseph Pecoraro"]
  s.date = %q{2009-05-01}
  s.default_executable = %q{rr}
  s.description = %q{A multi-line search and replace utility that uses Ruby regular expressions
for searching and allows back references to  captured groups from the pattern
to appear in the replacement text.}
  s.email = ["joepeck02@gmail.com"]
  s.executables = ["rr"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/rr", "lib/rr.rb", "test/test_rr.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://blog.bogojoker.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{bogojoker}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A multi-line search and replace utility that uses Ruby regular expressions for searching and allows back references to  captured groups from the pattern to appear in the replacement text.}
  s.test_files = ["test/test_rr.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.12.2"])
    else
      s.add_dependency(%q<hoe>, [">= 1.12.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.12.2"])
  end
end
