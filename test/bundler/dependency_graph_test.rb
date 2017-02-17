require 'test_helper'

class Bundler::DependencyGraphTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bundler::DependencyGraph::VERSION
  end
end
