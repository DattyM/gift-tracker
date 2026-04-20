const pool = require('./db');

pool.query('SELECT NOW()', (err, res) => {
    if(err) {
        console.error('Database connection failed:', err);
    } else {
        console.log('Database connected at:', res.rows[0].now);
    }
});