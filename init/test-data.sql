INSERT INTO users (id, name) VALUES (1, 'Dog');

INSERT INTO recipes (user_id, title, description, ingredients) VALUES
  (1, 'Test recipe', 'it is test description for recipe', ARRAY['test ingredient 1', 'test ingredient 2']);