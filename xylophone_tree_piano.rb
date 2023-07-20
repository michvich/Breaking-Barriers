class BreakingBarriers
  attr_accessor :name, :type, :ethnicity
  def initialize(name, type, ethnicity)
    @name = name
    @type = type
    @ethnicity = ethnicity
  end

  def build_barriers
    puts "Creating #{@name} Barrier"
    puts "Type: #{@type}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Building #{@name} Barrier..."
  end

  def break_barriers
    puts "Breaking #{@name} Barrier..."
  end
end

barrier1 = BreakingBarriers.new('Gender', 'Social', 'American')
barrier1.build_barriers
barrier1.break_barriers

barrier2 = BreakingBarriers.new('Economic', 'Financial', 'African')
barrier2.build_barriers
barrier2.break_barriers

barrier3 = BreakingBarriers.new('Racial', 'Social', 'Asian')
barrier3.build_barriers
barrier3.break_barriers

barrier4 = BreakingBarriers.new('Age', 'Social', 'European')
barrier4.build_barriers
barrier4.break_barriers

def build_barriers
  puts "Building Barriers..."
  barriers.each do |barrier|
    barrier.build_barriers
  end
end

def break_barriers
  puts "Breaking Barriers..."
  barriers.each do |barrier|
    barrier.break_barriers
  end
end

def barriers
  [barrier1, barrier2, barrier3, barrier4]
end

build_barriers
break_barriers