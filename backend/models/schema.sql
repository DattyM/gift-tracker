CREATE TABLE IF NOT EXISTS categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tags (
    tag_id SERIAL PRIMARY KEY,
    tag_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS items (
    item_id INT SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(6, 2),
    category_id INT REFERENCES categories(category_id),
    link TEXT,
    notes TEXT,
    date_added DATE DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS item_tags (
    item_id INT REFERENCES items(item_id),
    tag_id INT REFERENCES tags(tag_id),
    PRIMARY KEY(item_id, tag_id)
);