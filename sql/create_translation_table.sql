/*
  VerseBot for reddit
  By Matthieu Grieger
  create_translation_table.sql
  Copyright (c) 2015 Matthieu Grieger (MIT License)
*/

CREATE TABLE translation_stats (id SERIAL PRIMARY KEY, name TEXT, trans TEXT, lang TEXT,
  count INTEGER DEFAULT 0, has_ot BOOLEAN DEFAULT TRUE, has_nt BOOLEAN DEFAULT TRUE, has_deut BOOLEAN DEFAULT FALSE,
  available BOOLEAN DEFAULT FALSE, last_used TIMESTAMP WITH TIME ZONE DEFAULT NULL);

CREATE TRIGGER update_translation_stats_timestamp BEFORE UPDATE
  ON translation_stats FOR EACH ROW EXECUTE PROCEDURE
  update_timestamp_column();
