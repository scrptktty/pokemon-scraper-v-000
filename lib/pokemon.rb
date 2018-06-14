class Pokemon

  attr_accessor :name, :type, :db, :id

  def initialize(id: id, name: name, type: type, db: db)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(wanted_id, db)
    pokemon_new = db.execute("SELECT pokemon.* FROM pokemon WHERE pokemon.id = #{wanted_id}").flatten
    Pokemon.new(pokemon_new)
  end

end
