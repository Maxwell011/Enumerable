module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    myarray = []
    list.each do |element|
      myarray.push(element) if yield(element)
    end
    p myarray.length == list.length
  end

  def any?
    myarray = []
    list.each do |element|
      myarray.push(element) if yield(element)
    end
    puts !myarray.empty?
  end

  def filter?
    my_array = []
    list.each do |element|
      my_array.push(element) if yield(element)
    end
    p my_array
  end
end
