Gem::Specification.new do |s|
  s.name = 'card-management-sdk'
  s.version = '1.1.0'
  s.summary = 'SDK for using Shell Card Management APIs'
  s.description = "The Shell Card Management API is REST-based and employs OAUTH 2.0,Basic and ApiKey authentication. The API endpoints accept JSON-encoded request bodies, return JSON-encoded responses and use standard HTTP response codes.\nAll resources are located in the Shell Card Platform. The Shell Card Platform is the overall platform that encompasses all the internal Shell systems used to manage resources. The internal workings of the platform are not important when interacting with the API. However, it is worth noting that the platform uses a microservice architecture to communicate with various backend systems and some API calls are processed asynchronously. All endpoints use the POST verb for retrieving, updating, creating and deleting resources in the Shell Card Platform. The endpoints that retrieve resources from the Shell Card Platform allow flexible search parameters in the API request body."
  s.authors = ['developer sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://www.shell.com/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.0')
  s.add_dependency('apimatic_core', '~> 0.3.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
