module ApplicationHelper

  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title)                          # Method definition
    base_title = "Chro_nose "  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      "#{base_title} | #{page_title}"                 # String interpolation
    end
  end

  # Returns empty array or array of N unique, random ordinals / e.g. ordinals to Event.count
  # if deletes are not allowed.
  def rand_indexes(n, lim)
  	# lim = Event.count
  	return [] if (n < 1 || n > lim)
  	ray = []
  	while ray.count != n do
  		ray << (rand * lim).round
  		ray.delete(0)
  		ray.uniq!  		
  	end
  	return ray
  end

 # Adapt for deletions in database by binding ordinals to legitimate ids
 # NB. [1,2,5,6,7].combination(4).to_a.inspect 
 def rand_recs(n)  
  	ub = Event.maximum("id")
  	r = ApplicationHelper::rand_indexes(n, ub) 
  	return [] if r == [] || n > 2 # only valid for a = 2
 	(0..1).each do |i|
	  	while (Event.exists?(r[i])==nil) || (r[0] == r[1]) do
	  	 r[i]+=(rand * ub).round  
	  	 r[i] %= ub
	  	end
	end
  	return r  # exit with array of n unique record ids for db permitting deletions...
  end

end
