# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- list(breakfast_drink = "almond milk latte")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- list(lunch_food = "bagel", topping = "cream cheese")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast_lunch = my_breakfast, my_lunch)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals <- list(sixteen_breakfast = my_breakfast, sixteen_lunch = my_lunch, sixteen_dinner = my_dinner <- list(dinner_food = "salmon", side_1 = "mashed potatoes", side_2 = "asparagus"))

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$sixteen_dinner
print(dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[[5]] <- meals[["sixteen_lunch"]]
print(meals[[5]])


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- meals[c("sixteen_breakfast", "sixteen_lunch")]
print(early_meals)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
length(meals$sixteen_breakfast)
length(meals$sixteen_lunch)
length(meals$sixteen_dinner)

num_items <- lapply(meals, length)
print(num_items)

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(meal_vector) {
  # add pizza to that vector
  new_vector <- c(meal_vector, "Pizza")
  
  # return the new vector
  return(new_vector)
}

add_pizza(c("nachos"))

# Create a vector `better_meals` that is all your meals, but with pizza!
lapply(meals, add_pizza)
