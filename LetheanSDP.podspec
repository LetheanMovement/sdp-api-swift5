Pod::Spec.new do |s|
  s.name = 'LetheanSDP'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.2.2'
  s.source = https://github.com/organizations/LetheanMovement/sdp-api-swift5.git
  s.authors = 'OpenAPI Generator'
  s.social_media_url = 'https://twitter.com/LetheanVPN'
  s.license = EUPL-1.2
  s.homepage = 'https://lt.hn'
  s.summary = 'Lethean SDP'
  s.source_files = 'LetheanSDP/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
