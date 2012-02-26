Gem::Specification.new do |s|
  s.name              = 'gpgme'
  s.version           = '2.0.0'
  s.authors           = ['Daiki Ueno', 'Albert Llop']
  s.date              = '2011-10-03'
  s.email             = 'ueno@unixuser.org'
  s.extensions        = ['ext/gpgme/extconf.rb']
  s.files             = Dir['{lib,ext,test,examples}/**/*']
  s.has_rdoc          = true
  s.rubyforge_project = 'ruby-gpgme'
  s.homepage          = 'http://github.com/ueno/ruby-gpgme'
  s.require_paths     = ['lib', 'ext']
  s.summary           = 'Ruby binding of GPGME.'
  s.description       = %q{Ruby-GPGME is a Ruby language binding of GPGME (GnuPG
Made Easy). GnuPG Made Easy (GPGME) is a library designed to make access to
GnuPG easier for applications. It provides a High-Level Crypto API for
encryption, decryption, signing, signature verification and key management.}

  s.add_development_dependency "mocha",     "~> 0.9.12"
  s.add_development_dependency "minitest",  "~> 2.1.0"
  s.add_development_dependency "yard",      "~> 0.6.7"
  s.add_development_dependency "rcov",      "~> 0.9.9"

  case RUBY_VERSION
  when "1.9.2"
    s.add_development_dependency "ruby-debug19" , "~> 0.11.6"
  when "1.9.3"
    # These need downloading from rubygems and installing by hand as of 2012-02-26 at least.
    # Instructions: https://gist.github.com/1331533#gistcomment-65789
    s.add_development_dependency "linecache19", "0.5.13"
    s.add_development_dependency "ruby_core_source", "0.1.5"
    s.add_development_dependency "ruby-base-debug19", "0.11.26"
    s.add_development_dependency "ruby-debug19", "0.11.6"
  when /^1\.9/
    s.add_development_dependency "ruby-debug19"
  else
    s.add_development_dependency "ruby-debug" , "0.10.0"
  end
end
