def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(array)
  array.collect{
    |name| badge_maker(name)
  }
end

def assign_rooms(array)
  array.each_with_index.collect {
    |array, index| "Hello, #{array}! You'll be assigned to room #{index+1}!"
  }
end

def printer (array)
  batch_badge_creator(array).each do |badge|
    puts badge
  end
  assign_rooms(array).each do |room_assignments|
    puts room_assignments
  end
end
