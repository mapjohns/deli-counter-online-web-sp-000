# Write your code here.
katz_deli = []
def line(katz_deli)
    line_status = "The line is currently: "
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        counter = 1
        katz_deli.each do |customer|
            line_status += "#{counter}. #{customer} "
            counter+=1
        end
        puts line_status.strip
    end
end

def take_a_number(katz_deli, person)
    counter = katz_deli.size
    if katz_deli.size == 0
        katz_deli.push(person)
        puts "Welcome, #{person}. You are number #{counter+1} in line."
        counter += 1
    else
        katz_deli.push(person)
        counter += 1
        puts "Welcome, #{person}. You are number #{counter} in line."
    end
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end