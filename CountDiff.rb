class CountDiff
  def initialize(str1, str2)
    raise unless str1.is_a?(String) or str2.is_a?(String)
    @str1 = str1
    @str2 = str2
  end

  def count_diff_order()
    diff = 0;

    len = @str1.length > @str2.length ? @str1.length : @str2.length
    for i in 0..len
      if !@str1[i] or !@str2[i]
        diff += len - i;
        break
      end
      if @str1[i] != @str2[i]
        diff += 1
      end
    end

    diff
  end

  def count_diff()
    (@str1.chars.to_a - @str2.chars.to_a).length
  end
end