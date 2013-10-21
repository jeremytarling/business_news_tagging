#!/usr/bin/env ruby

require 'sinatra'
require 'restclient'
require 'json'
require './tag_list'

SSL = {
  :ssl_client_cert => OpenSSL::X509::Certificate.new(File.read("./dependencies/cert.pem")),
  :ssl_client_key => OpenSSL::PKey::RSA.new(File.read("./dependencies/cert.pem")),
}  

BASE_URL = "https://api.bbc.co.uk/ldp-core/creative-works?about="

BASE_URL_NAW = "https://api.bbc.co.uk/ldp-core/creative-works?about-tag-type=http%3A%2F%2Fwww.bbc.co.uk%2Fontologies%2Fnews%2FOrganisation&about-tag-predicate=http%3A%2F%2Fwww.bbc.co.uk%2Fontologies%2Fnews%2FnotablyAssociatedWith&about-tag-object="

def getDataAbout
  @url = BASE_URL + params[:guid]
  @data = RestClient::Resource.new(@url, SSL).get({:accept => "application/json-ld"}) 
  @data_json = JSON.parse @data.body  
  @results =  @data_json['results']
end

def getDataNaw
  @url = BASE_URL_NAW + params[:guid]
  @data = RestClient::Resource.new(@url, SSL).get({:accept => "application/json-ld"}) 
  @data_json = JSON.parse @data.body  
  @results =  @data_json['results']
end

get '/' do
  erb :index  
end

get '/storylines/:guid' do
  getDataAbout
  erb :storylines_article_list
end

get '/business_themes/:guid' do
  getDataAbout
  erb :business_themes_article_list
end

get '/business_themes_inferred/:guid' do
  getDataNaw
  erb :business_themes_inferred_article_list
end

get '/uk_companies/:guid' do
  getDataAbout
  erb :uk_companies_article_list
end

get '/international_companies/:guid' do
  getDataAbout
  erb :international_companies_article_list
end

get '/uk_institutions/:guid' do
  getDataAbout
  erb :uk_institutions_article_list
end

get '/international_institutions/:guid' do
  getDataAbout
  erb :international_institutions_article_list
end
