class CountDiff
  def initialize(str1, str2)
    raise unless str1.kind_of?(String) or str2.kind_of?(String)
    @str1 = str1
    @str2 = str2

    @str1, @str2 = @str2, @str1 if @str2.length > @str1.length # for zip in count_diff_order
  end

  # Returns number of different characters when their order is important
  def count_diff_order
    @str1.chars.zip(@str2.chars).count do |fc, sc|
      fc != sc
    end
  end

  # Returns number of different characters when their order is not important
  def count_diff
    (@str1.chars.to_a - @str2.chars.to_a).length
  end
end