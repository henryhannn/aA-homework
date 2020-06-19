class Stack
    def initialize
        @storage = []
    end

    def push(el)
        @storage << el
    end

    def pop
        @storage.pop
    end

    def peek
        @storage.last
    end
end

class Queue
    def initialize
        @storage = []
    end

    def enqueue(el)
        @storage << el
    end

    def dequeue
        @storage.shift 
    end

    def peek
        @storage.first
    end
end

class Map
    def initialize
        @storage = Array.new() {Array.new()}
    end

    def set(key, value)
        exist = false
        index = 0
        @storage.each_with_index do |ele, i|
            if ele[0] == key
                exist = true 
                index = i
            end
        end
        if exist
            @storage[i][1] = value
        else
            @storage << [key, value]
        end
    end

    def get(key)
        @storage.each { |ele| return ele[1] if ele[0] == key }
    end

    def delete(key)
        @storage.each { |ele| ele.delete if ele[0] == key
    end

    # def show

    # end
end