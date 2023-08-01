# Create the Phoenix class here
class Phoenix
  attr_reader :name,
              :color,
              :mood,
              :pharaoh,
              :emotional_awareness

  def initialize(name, color = "golden", mood = "stoic", pharaoh = nil)
    @name = name
    @color = color
    @mood = mood
    @pharaoh = pharaoh
    @emotional_awareness = Hash.new(0)
  end

  def feels_emotion(emotion)
    @emotional_awareness[emotion]+=1
    if @emotional_awareness[emotion] == 1
      @color = "amber"
      @mood = "heated"
    elsif @emotional_awareness[emotion] == 2
      @color = "scarlet"
      @mood = "fiery"
    elsif @emotional_awareness[emotion] == 3
      @color = "crimson"
      @mood = "ablaze"
    elsif @emotional_awareness[emotion] == 4
      @color = "deep violet"
      @mood = "incandescent"
    end
  end

end