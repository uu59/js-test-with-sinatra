# -- coding: utf-8

require "rubygems"
require "bundler"
Bundler.setup
Bundler.require
require "sinatra/reloader" if development?

Tilt.register  Tilt::StringTemplate, "html"
set :run, true
set :inline_templates, true
set :layout, true
set :public_folder, File.dirname(__FILE__) + "/public"

helpers do
  def str(*args)
    render(:str, *args)
  end
end

get "/" do
  str %Q!Visit <a href="/it-works">test page</a>!, :layout_engine => :erb
end

get "/:template" do
  str params[:template].to_sym, :layout_engine => :erb
end

__END__
@@ layout
<!DOCTYPE html> 
<html>
<head> 
  <title><%= @title || "js test with Sinatra" %></title> 
  <script type="text/javascript" src="/it-works.js"></script>
</head> 
<body>
<%= yield %>
</body></html> 
