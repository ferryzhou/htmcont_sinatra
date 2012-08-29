require 'rubygems'

require 'sinatra'
require 'readability'
require 'open-uri'

get '/' do
  source = open(params[:link]).read
  Readability::Document.new(source).content
end

