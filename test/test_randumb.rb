$:.unshift '.';require File.dirname(__FILE__) + '/test_helper'

class TestRandumb < Test::Unit::TestCase
  
  should "have working fixtures and blueprints" do
    
    artist = Artist.find(1)
    assert_equal "High On Fire", artist.name
    
    artist = Artist.make!
    assert_equal false, artist.new_record?
    puts "artist id: #{artist.id}"
    
  end
  
  
  should "correctly extend active record" do
    
    Artist.random
    
  end
  
end