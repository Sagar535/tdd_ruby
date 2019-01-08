require "test_helper"

class SagarPalindromeTest < Minitest::Test
  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_literal_palindrome
  	assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
  	assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
  	assert "racecar!".palindrome?
  	assert "madam, I'm adam".palindrome?
  end

  def test_letters
  	assert_equal "madamimadam", "madam, i'm adam.".letters
  end
end
