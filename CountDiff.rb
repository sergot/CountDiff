class CountDiff
  def initialize(str1, str2)
    raise unless str1.is_a?(String) or str2.kind_of?(String)
    @str1 = str1
    @str2 = str2
  end

  # Returns number of different characters when their order is important
  def count_diff_order()
    diff = 0

    len = @str1.length > @str2.length ? @str1.length : @str2.length
    for i in 0..len
      if !@str1[i] or !@str2[i]
        diff += len - i
        break
      end

      diff += 1 if @str1[i] != @str2[i]
    end

    diff
  end

  # Returns number of different characters when their order is not important
  def count_diff()
    (@str1.chars.to_a - @str2.chars.to_a).length
  end
end