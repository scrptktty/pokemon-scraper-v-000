class Pokemon

  attr_accessor :name, :type, :db

  def initialize(name: name, type: type, db: db)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(wanted_id, db)
    pokemon_arr = db.execute("SELECT pokemon.* FROM pokemon WHERE pokemon.id = #{wanted_id}").flatten
    new_pokemon = Pokemon.new(name: pokemon_arr[1], type: pokemon_arr[2], db: db)
    binding.pry
    new_pokemon
  end

end
