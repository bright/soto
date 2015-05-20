require 'nokogiri'
require 'net/http'

module Soto
  class Soto
    def self.read(username, password, teamcity_url, build_configuration)

      path = "#{teamcity_url}/app/rest/buildTypes/id:#{build_configuration}/builds/status:SUCCESS"

      uri = URI(path)

      req = Net::HTTP::Get.new(path)
      req.basic_auth username, password

      Net::HTTP.start(uri.host, uri.port) { |http|
        resp = http.request(req)

        if resp.code != '200'
          STDERR.puts "#{resp.message} (#{resp.code})"
          exit -1
        end

        dom = Nokogiri::XML(resp.body)
        revision_version = dom.xpath('//revisions/revision[1]/@version')

        if revision_version.empty?
          STDERR.puts 'No revision found'
          STDERR.puts 'Response from server:'
          STDERR.puts resp.body
          exit -1
        end

        puts revision_version
      }

    end
  end
end