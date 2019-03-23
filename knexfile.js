// Update with your config settings.

module.exports = {

  development: {
    client: 'mysql',
    connection: {
      filename: './dev.mysql'
    }
  },

  staging: {
    client: 'mysql',
    connection: {
      database: 'example',
      user:     'root',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'mysql',
    connection: {
      database: 'example',
      user:     'root',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};
