# frozen_string_literal: true

require 'resolv'
# This Class is responsible for parsing log file
class Parser

  def self.log_me
    lines = File.readlines 'public/webserver.log'
    urls = []
    ip_addresses = []
    lines.each_with_index do |line, _idx|
      line.strip.split.each do |element|
        urls << element if element.include?('/')
      end
      ip_addresses << line.strip.split
    end
    [urls.tally, ip_addresses.tally]
  end

end
