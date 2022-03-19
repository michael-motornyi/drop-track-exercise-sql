CREATE TABLE users (id serial PRIMARY KEY, username VARCHAR(50) UNIQUE NOT NULL, email VARCHAR(255) NOT NULL, created_at DATE NOT NULL);
CREATE TABLE artists (id serial PRIMARY KEY, user_id INT, artist_name VARCHAR(100), tagline VARCHAR(255) NOT NULL, FOREIGN KEY (user_id) REFERENCES users (id));
CREATE TABLE tracks (id serial PRIMARY KEY, artist_id INT NOT NULL, name VARCHAR(255) NOT NULL, isrc VARCHAR(12), FOREIGN KEY (artist_id) REFERENCES artists (id));

INSERT INTO users (username, email, created_at) VALUES
('matt', 'mail@muse.com', '2017-03-14'),
('till', 'mail@rammstein.com', '2017-03-14'),
('anthony', 'mail@rhcp.com', '2017-03-14'),
('mike', 'mail@gmail.com', '2017-03-14'),
('fredie', 'mail@queen.com', '2017-03-14'),
('brain', 'mail@queen.com', '2017-03-14'),
('roger', 'mail@queen.com', '2017-03-14'),
('john', 'mail@queen.com', '2017-03-14');

INSERT INTO artists (artist_name, tagline) VALUES
('Mike', 'rnb');

INSERT INTO artists (user_id, artist_name, tagline) VALUES
(1, 'Muse', 'alternative'),
(2, 'Rammstein', 'industrial'),
(3, 'RHCP', 'rock'),
(5, 'Queen', 'rock');

INSERT INTO tracks (artist_id, name, isrc) VALUES
(2, 'New born', 'RadioRocks'), (2, 'Plug in baby', 'RadioRocks'),
(3, 'Sonne', 'RadioRocks'), (3, 'Mutter', 'RadioRocks'), (3, 'Ich will', 'RadioRocks'),
(5, 'Killer Queen', 'RadioRocks'), (5, 'Show must go on', 'RadioRocks'), (5, 'Scandal', 'RadioRocks'), (5, 'Innuendo', 'RadioRocks');
