require 'sinatra/base'
require 'erubis'
require 'haml'
require 'slim'

class SpecTemplates < Sinatra::Base 
  set :environment, :test
  set :views, File.join(File.dirname(__FILE__), '..', '..', 'templates')

  helpers Sinatra::ContentFor2
end

describe Sinatra::ContentFor2 do

  def templates
    @templates ||= begin
      r = SpecTemplates.new
      # remove Rack magic
      while !r.kind_of?(SpecTemplates) do
        r = r.instance_variable_get(:@app)
      end
      r
    end
  end

  [ :erb, :erubis, :haml, :slim ].each do |engine|
    it "should render #{engine} template" do
      sr = templates.send(engine, :sub, :layout => false, :eat_errors => false)
      sr.should_not =~ /sub/
      r = templates.send(engine, :main, :layout => false, :eat_errors => false)
      r.should =~ /main/
      r.should =~ /sub/
    end
  end
end

