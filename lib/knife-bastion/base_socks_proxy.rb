require_relative 'client_proxy'

# Load socksify gem, required to make Chef work with SOCKS proxy
begin
  require 'socksify'
rescue LoadError
  puts "FATAL: Failed to load 'socksify' gem. Please run 'bundle install' to continue."
  # Hard exit to skip Chef exception reporting
  exit! 1
end
