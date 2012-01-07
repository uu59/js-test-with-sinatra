# -- coding: utf-8

require "spec_helper"

describe "health check", :js => true do
  it "should work script integrally" do
    visit "/it-works"
    page.find('body').text.strip.should == "It works!"
    page.evaluate_script("healthCheck()").should == "script works!"
  end
end
