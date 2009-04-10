require File.dirname(__FILE__) + '/../spec_helper'

describe 'Routing for', ContactController do
  it "should map { :contoller => 'contact', :action => 'index' to '/contact' }" do
    route_for(:controller => 'contact', :action => 'index').should == '/contact'
  end
end
