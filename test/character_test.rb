require 'minitest/autorun'
require 'minitest/pride'
require './lib/character.rb'

class CharacterTest < Minitest::Test

  def test_it_exist
    kitt = Character.new({
                          name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000
                          })
    assert_instance_of Character, kitt
  end

  def test_it_has_attributes
    kitt = Character.new({
                          name: "KITT",
                          actor: "William Daniels",
                          salary: 1_000_000
                          })

    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1_000_000, kitt.salary
  end
end
