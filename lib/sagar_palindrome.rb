require "sagar_palindrome/version"

class String 
	def palindrome?
		processed_content == processed_content.reverse
	end

	def letters
		alphabets = self.split("")
		final_value = alphabets.select { |alphabet| !!alphabet.match(/[a-zA-Z]/) }
		final_value.join
	end

	private
	def processed_content
		self.letters.downcase
	end
end


