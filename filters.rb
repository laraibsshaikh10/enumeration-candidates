# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

require 'date'



#Takes in an id
# Returns the candidate with that :id
# If there is no candidate with that id, it naturally returns nil
def find(id, candidates)
  candidates.find { |candidate| candidate[:id] == id }

end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# Returns true if the candidate is over 17 years old
def age_limit?(candidate)
  candidate[:age] > 17
end
  
# Takes in the collection of candidates
# Returns a subset of the candidates that meet the following criteria:
# Are experienced
# Have 100 or more Github points
# Know at least Ruby or Python
# Applied in the last 15 days
# Are over the age of 17 (18+)
# Tip: Consider creating other methods to help keep this clean.
  
def qualified_candidates(candidates)
  candidates.select do |candidate|
  experienced?(candidate) &&
  candidate[:github_points] >= 100 &&
  (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
  (Date.today - candidate[:date_applied]).to_i <= 15 &&
  age_limit?(candidate)

  end
end

# Takes in a collection of candidates
# Instead of filtering on the candidates, returns them all back but reordered such that:
# Candidates with the most experience are at the top
# For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)
def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end

  
  


  
  