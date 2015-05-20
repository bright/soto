require 'soto'

command :read do |c|
  c.syntax = 'soto read -u username -p password -t teamcity_url -b build_configuration'
  c.summary = 'Read revision version of last successful TeamCity build specified build'
  c.description = 'Read revision version of last successful TeamCity build specified build'

  c.option '-u', '--username USERNAME', 'TeamCity username'
  c.option '-p', '--password PASSWORD', 'TeamCity password'
  c.option '-c', '--teamcity_url TEAMCITY_URL', 'TeamCity url'
  c.option '-b', '--build_configuration BUILD_CONFIGURATION', 'Build configuration'

  c.action do |args, options|

    say_error 'Missing TeamCity username' and abort unless options.username
    say_error 'Missing TeamCity password' and abort unless options.password
    say_error 'Missing TeamCity url' and abort unless options.teamcity_url
    say_error 'Missing build configuration' and abort unless options.build_configuration

    Soto::Soto.read(options.username, options.password, options.teamcity_url, options.build_configuration)

  end

end