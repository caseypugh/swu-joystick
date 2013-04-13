require 'bundler/setup'
Bundler.require

$stdout.sync = true

use Rack::TryStatic,
  :cache_control => 'private', # explicitly forbid caching for a little while; TODO REMOVEME
  :root => "public",  # static files root dir
  :urls => %w[/],     # match all requests
  :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially

# otherwise 404 NotFound
run lambda { [404, {'Content-Type' => 'text/html'}, ['whoops! Not Found']]}
