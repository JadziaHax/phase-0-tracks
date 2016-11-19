puts "How many employees would you like to process?"
  processing = gets.to_i
  
process_counter = 0

until process_counter == processing

  puts "What is your name?"
    name = gets.chomp

  puts "How old are you?"
    given_age = gets.to_i

  puts "What year were you born?"
    birth_year = gets.to_i
    current_year = 2016
    true_age = current_year - birth_year

  if true_age == given_age || true_age - given_age == 1
    age_correct = true
  else
    age_correct = false
  end

  garlic_counter = 0

  while garlic_counter == 0
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
      garlic = gets.chomp
      garlic = garlic.downcase

      if garlic == "y"
        garlic = true
        garlic_counter += 1
      elsif garlic == "n"
        garlic = false
        garlic_counter += 1
      else puts "please answer y or n"
      end
  end

  insurance_counter = 0

  while insurance_counter == 0
    puts "Would you like to enroll in the company's health insurance? (y/n)"
      insurance = gets.chomp
      insurance = insurance.downcase

      if insurance == "y"
        insurance = true
        insurance_counter += 1
      elsif insurance == "n"
        insurance = false
        insurance_counter += 1
      else puts "please answer y or n"
      end
  end

  puts "Please list all allergies, pressing return after each one. When finished type 'done' and press return"
  done = false
  until done == true
      allergy = gets.chomp
      allergy = allergy.downcase

      if allergy == "done"
        done = true
      elsif allergy == "sunshine"
        sunshine = true
        done = true
      else
        done = false
      end
  end

  if sunshine == true
    results = "Probably a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    results = "Definitely a vampire."
  elsif age_correct == true && (garlic == true || insurance == true)
    results = "Probably not a vampire"
  else age_correct == false && (garlic == false || insurance == false)
    if age_correct == false && garlic == false && insurance == false
      results = "Almost certainly a vampire."
    else results = "Probably a vampire."
    end
  end
  puts results
  process_counter += 1
end
