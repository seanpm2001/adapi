# encoding: utf-8

require 'test_helper'

module Adapi
  class FindLocationTest < Test::Unit::TestCase
    context "non-existent Location" do
      setup do 
        @location = Adapi::Location.find( :city => "Shamballa" )
      end

      should "not be found" do
        assert_nil @location
      end
    end

    context "existing Location" do
      
      should "be found by name" do
        @location = Adapi::Location.find( :country=>"CZ", :province=>"Prague", :city=>"Prague" )
        assert_not_nil @location
        assert_equal 1003803, @location[:id]
        assert_equal "Prague", @location[:location_name]
        assert_equal "City", @location[:display_type]
      end

      should "be found by id" do
        @location = Adapi::Location.find( :id => 1003803 )
        assert_not_nil @location
        assert_equal 1003803, @location[:id]
        assert_equal "Prague", @location[:location_name]
        assert_equal "City", @location[:display_type]
      end
    end

  end
end
