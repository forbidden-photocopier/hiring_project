#!/usr/bin/env ruby
require 'yaml'
app_name = ARGV[0]
manifest_path = ARGV[1]
manifest = YAML.load_file(manifest_path)
app = manifest['apps'].find { |app| app['name'] == app_name }
puts app['values']['image']['tag']
