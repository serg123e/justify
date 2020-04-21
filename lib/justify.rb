require "justify/version"

class String
  def justify(len = 80)
    unless self.length < len

      words = self.gsub("\n", " ").scan(/[\w.-]+/)
      actual_len = 0
      output = ""
      words.each do |w|
        if (actual_len > 0)
          if (actual_len + w.length>len)
            output += "\n"
            actual_len = 0
          else
            output += " "
          end
        end
        output += w
        actual_len += w.length + 1
      end
      return output
    else
      self
    end

  end
end
