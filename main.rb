class QuestionMarkChecker
  def initialize(string)
    @string = string
  end

  def check
    found = []

    decorated_string.each_char.with_index do |char, idx|
      if char =~ /\d/
        if decorated_string[idx + 1] =~ /\d/
          if char.to_i + decorated_string[idx + 1].to_i == 10
            return false
          end
        elsif decorated_string[idx + 2] =~ /\d/
          if char.to_i + decorated_string[idx + 2].to_i == 10
            return false
          end
        elsif decorated_string[idx + 3] =~ /\d/
          if char.to_i + decorated_string[idx + 3].to_i == 10
            return false
          end
        elsif decorated_string[idx + 4] =~ /\d/
          if char.to_i + decorated_string[idx + 4].to_i == 10
            if decorated_string[idx + 1] == '?' && decorated_string[idx + 2] == '?' && decorated_string[idx + 3] == '?'
              found << true
            end
          end
        end
      end
    end

    found.any?
  end

  private

  attr_reader :string

  def decorated_string
    @decorated_string ||= string.gsub(/[a-zA-Z]/, '')
  end
end

puts QuestionMarkChecker.new('as???as???da???').check

