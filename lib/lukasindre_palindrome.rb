require "lukasindre_palindrome/version"

module LukasindrePalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    self.chars.select { |c| c.match(/[a-z0-9]/i) }.join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include LukasindrePalindrome
end

class Integer
  include LukasindrePalindrome
end

