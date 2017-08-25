class MinHeap
  attr_accessor :root

  def initialize
    @data = []
    self.root = nil
  end

  def data
    @data
  end

  def push(value)
   @data.push(value)
   if self.root == nil || self.root > value
     self.root = value
   end
  end

  def pop
   popped = @data.delete_at(-1)
   if root == popped && !data.include?(root)
      min = @data[0]
      @data[1..-1].each do |num|
        if num < min
          min = num
        end
      end
      self.root = min
    end
    popped
  end
end
