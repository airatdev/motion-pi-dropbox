#!/usr/bin/env ruby

require "dropbox_sdk"
require "dotenv"

client = DropboxClient.new(ENV["DROPBOX_ACCESS_TOKEN"])
file = open(ARGV[0])
response = client.put_file(ARGV[0], file)
puts "uploaded:", response.inspect
