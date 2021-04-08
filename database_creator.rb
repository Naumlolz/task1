class Database
  def initialize
    ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      host: 'localhost',
      username: 'postgres',
      password: 'postgres',
      database: 'postgres' 
    )
  end

  def create_table(query)
    ActiveRecord::Base.connection.execute(query)
  end

  def drop_table(table_name)
    query = <<-SQL
      DROP TABLE IF EXISTS #{table_name};
    SQL
    ActiveRecord::Base.connection.execute(query)
  end
end