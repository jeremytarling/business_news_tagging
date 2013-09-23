#!/usr/bin/env ruby

require 'sinatra'
require 'restclient'
require 'json'
require './tag_list'

SSL = {
  :ssl_client_cert => OpenSSL::X509::Certificate.new(File.read("/Users/tarlij01/Documents/Certs/Forge.pem")),
  :ssl_client_key => OpenSSL::PKey::RSA.new(File.read("/Users/tarlij01/Documents/Certs/Forge.pem")),
}  

BASE_URL = "https://api.live.bbc.co.uk/ldp-core/creative-works-legacy?about="
  
get '/' do
  erb :index  
end

get '/:guid' do
  @url = BASE_URL + params[:guid]
  @data = RestClient::Resource.new(@url, SSL).get({:accept => "application/json-ld"}) 
  @data_json = JSON.parse @data.body  
  @results =  @data_json['results']
  erb :article_list
end
