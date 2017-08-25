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
  
end
