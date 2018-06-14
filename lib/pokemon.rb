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

  def self.find(id_int, db)
    db.execute("SELECT * FROM pokemon WHERE pokemon.id = id_int")
  end

end
