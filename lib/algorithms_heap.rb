class MinHeap
  attr_accessor :data, :root

  def initialize
    self.data = []
  end

  def push(value)
    self.data.push(value)
    if !root || value < root
      self.root = value
    end
  end

  def pop
    popped = self.data.pop
    if self.root === popped && !data.include?(root)
      min = self.data[0]
      self.data[1..-1].each do |n|
        if n < min
          min = n
        end
      end
      self.root = min
    end
    popped
  end

end
