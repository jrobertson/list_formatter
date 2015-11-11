Gem::Specification.new do |s|
  s.name = 'list_formatter'
  s.version = '0.1.2'
  s.summary = 'Formats a list of Hash records, suitable for displaying on the command-line.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/list_formatter.rb']
  s.signing_key = '../privatekeys/list_formatter.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/list_formatter'
end
