require "sagar_palindrome/version"

module SagarPalindrome
	def palindrome?
		if processed_content.empty?
			false
		else
			processed_content == processed_content.reverse
		end
	end

	private
	def processed_content
		self.to_s.scan(/[a-z0-9]/i).join.downcase
	end
end

class String 
	include SagarPalindrome

	def letters
		alphabets = self.split("")
		final_value = alphabets.select { |alphabet| !!alphabet.match(/[a-zA-Z]/) }
		final_value.join
	end
end

class Integer
	include SagarPalindrome
end
