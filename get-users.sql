SELECT u.id user_id, username, email, a.id artist_id, a.artist_name artist_name, a.tagline, t.name track_name, t.isrc track_isrc
FROM users u
  INNER JOIN artists a ON u.id = a.user_id
  FULL JOIN tracks t ON a.id = t.artist_id
