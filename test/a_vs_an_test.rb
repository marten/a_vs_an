require 'test_helper'

class AVsAnTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AVsAn::VERSION
  end

  def test_standard_cases
    {
      "unanticipated result" => "an",
      "unanimous vote" => "a",
      "honest decision" => "an",
      "honeysuckle shrub" => "a",
      "0800 number" => "an",
      "∞ of oregano" => "an",
      "NASA scientist" => "a",
      "NSA analyst" => "an",
      "FIAT car" => "a",
      "FAA policy" => "an",
      "A" => "an",
      "uniformed agent" => "a",
      "unissued permit" => "an",
      "unilluminating argument" => "an",
      "unilateral vote" => "a"
    }.each do |example, expected|
      assert_equal expected, AVsAn.query(example), "Failed for: #{example.inspect}"
    end
  end
end
