require 'mysql2'
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require './todo.rb'


configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => '') 
enable :sessions
set :session_secret, 'randomesecretkey112324'

get '/' do
@res = client.query("show databases")
erb :list_databases
end  

get '/show_table' do
db_name = params["item"]
client.query("use #{db_name}")
@res = client.query("show tables")
erb:show_table
end
get '/show_content' do 
@tname = params["table"]     
@content = []    
@content = client.query("select * from #{@tname}")
erb:show_content
end   


