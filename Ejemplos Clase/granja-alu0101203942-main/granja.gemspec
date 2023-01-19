# frozen_string_literal: true

require_relative "lib/granja/version"

Gem::Specification.new do |spec|
  spec.name          = "granja"
  spec.version       = Granja::VERSION
  spec.authors       = ["Laura Gonzalez"]
  spec.email         = ["alu0101203942@ull.edu.es"]

  spec.summary       = "Gema para representar una granja"
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-2122/granja-alu0101203942.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-2122/granja-alu0101203942.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-2122/granja-alu0101203942.git"
  spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-2122/granja-alu0101203942.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency "bundler", "~> 2.2.3"
  #spec.add_development_dependency "rake", "~> 12.0"
  #spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end

