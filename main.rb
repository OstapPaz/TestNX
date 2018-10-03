class QuestionMarkChecker
  def questions_marks(str)
 str = str.gsub(/[a-zA-Z]/, '')
 found = []

     str.each_char.with_index do |char, idx|
       if char =~ /\d/
         if str[idx + 1] =~ /\d/
           if char.to_i + str[idx + 1].to_i == 10
             return false
           end
         elsif str[idx + 2] =~ /\d/
           if char.to_i + str[idx + 2].to_i == 10
             return false
           end
         elsif str[idx + 3] =~ /\d/
           if char.to_i + str[idx + 3].to_i == 10
             return false
           end
         elsif str[idx + 4] =~ /\d/
           if char.to_i + str[idx + 4].to_i == 10
             if str[idx + 1] == '?' && str[idx + 2] == '?' && str[idx + 3] == '?'
               found << true
             end
           end
         end
       end
     end

     if found.empty?
       false
     else
       true
     end

  end
end