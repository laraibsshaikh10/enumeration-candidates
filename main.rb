# # This is the main entrypoint into the program
# # It requires the other files/gems that it needs
# require 'pp'
# require './candidates'
# require './filters'

# ## Your test code can go here

# pp @candidates

# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# Pretty print the candidates
pp @candidates

# Find a candidate by ID
pp find(1, @candidates)  # Should print the hash for Jane Doe
pp find(5, @candidates)  # Should print nil

# Check if a candidate is experienced
pp experienced?(@candidates[0])  # Should return true for Jane Doe
pp experienced?(@candidates[1])  # Should return false for John Smith

# Qualified candidates
pp qualified_candidates(@candidates)  # Should print the hashes for Jane Doe and Emily Jones

# Ordered by qualifications
pp ordered_by_qualifications(@candidates)
