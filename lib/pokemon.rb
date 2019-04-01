require "pry"
class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  @@all = []
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name
    @type = type
    @db = db 
    @@all << self 
    end
    
  def self.all 
    @@all 
  end 
  
  def self.save(name,type, db)

  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  def self.find(id, db)
<<<<<<< HEAD
  pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
  name = pokemon[1]
  type = pokemon[2]
  
  new_pokemon = Pokemon.new(id: id, name: name, type: type, db: db)
=======
  pokemon = db.execute("SELECT * pokemon WHERE id = ?", id)
>>>>>>> 85983b7f76a82f9045ecfb3af1a5cedacd66ae4a
  end 
end
