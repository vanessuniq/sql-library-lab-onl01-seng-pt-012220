def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
  FROM books
  WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT DISTINCT(species), COUNT(species)
  FROM characters
  ORDER BY COUNT(species)
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
  FROM authors 
  INNER JOIN subgenres
  WHERE authors.id = series.author_id and subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series 
  WHERE books.series_id = series.id and books.id = character_books.book_id and character_books.character_id = characters.id and characters.species = 'human'
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(book_id)
  FROM characters
  INNER JOIN character_books
  WHERE characters.id = character_books.character_id
  GROUP BY "
end
