# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# puts "Destroying data"


puts "Destroying data"

Meal.destroy_all
User.destroy_all


puts "Creating Users"
user = User.create(email: "test@test.com", password: 123456)

puts "Show Meals and Recipes"

# Seeds for meals in Breakfast category (4 items)

chia_pudding = Meal.new(name: "Overnight Chia pudding",
note: "Delight in a guilt-free treat with our Overnight Chia Pudding, specially crafted for gestational diabetic women.
This nutritious blend of chia seeds soaked overnight in creamy almond milk, sweetened with a hint of honey, and topped with fresh fruit offers a low glycemic index option, perfect for maintaining stable blood sugar levels.
Whether enjoyed for breakfast or as a wholesome dessert, it's a delicious and diabetes-friendly choice to support a healthy pregnancy. ",
timing: "breakfast",
recipe:"Ingredients:
- 145 grams greek yogurt
- 120 milliliters whole milk
- 2 tablespoons chia seeds
- 1 handful raspberries
Instructions:
1) In a medium bowl, mix together the yogurt and milk. Stir in the chia seeds.
Cover and set in the refrigerator overnight.
If you can, stir the chia seed mixture a couple times after putting it in the refrigerator (after 30 minutes, after 1 hour).
2) In the morning, give the chia seed pudding a good mix, breaking apart any clumps.
3) Spoon into a bowl and top with few fresh raspberries. ",
threshold: "above",
image:"https://www.theworktop.com/wp-content/uploads/2017/09/Chia-Seeds-in-Yogurt-3.jpg"
)


mushroom_egg = Meal.new(name: "Mushroom-Spinach scrambled eggs",
note: "Kickstart your day with a savory and diabetic-friendly option like our Mushroom Spinach Scrambled Eggs.
This hearty blend of fluffy scrambled eggs cooked with sautéed mushrooms and vibrant spinach leaves provides a protein-packed meal while keeping blood sugar levels in check.
With carefully selected ingredients and balanced flavors, it's a nutritious breakfast choice for gestational diabetic women seeking both taste and health benefits. ",
timing: "breakfast",
recipe:"Ingredients:-
- 1/2 tbsp olive oil
- 60g onions
- 355g thin sliced mushrooms
- 120g fresh baby spinach
- 2 large eggs
- 1 large egg white
- 1 teaspoon water
- Kosher salt and black pepper (As needed)
Instructions:
1)In a small bowl, whisk eggs, egg white, 1 tablespoon water, 1/8 tsp salt and pepper until blended.
2) In a medium nonstick skillet, heat oil over medium heat.
3) Add onions and cook until tender and golden, 3 to 4 minutes.
4) Add the mushrooms and cook and stir 3-4 minutes or until tender. Add spinach; cook and stir until wilted.
5) Add egg mixture; cook and stir just until eggs are thickened and no liquid egg remains. If you want to add cheese, add it with the eggs",
threshold: "below",
image:"https://www.skinnytaste.com/wp-content/uploads/2022/01/Mushroom-Spinach-Scrambled-Eggs-5.jpg")



tofu_scramble = Meal.new(name: "Tofu Scramble with Vegetables",
note: "Experience a satisfying and diabetic-friendly plant-based delight with our Tofu Scramble with Vegetables.
Crafted to meet the dietary needs of gestational diabetic women, this wholesome blend of crumbled tofu and colorful sautéed vegetables offers a protein-rich alternative to traditional scrambled eggs.
Bursting with flavor and nutrients, it's a delicious vegan option that supports a balanced diet during pregnancy. ",
timing: "breakfast",
recipe:"Ingredients:
- 113g  extra-firm tofu
- Leafy greens: spinach, kale, mixed greens, or arugula (As needed)
- 60g red or yellow pepper, chopped
- 1/4 avocado, diced
- Salt and pepper (As needed)
- Spice sauce ingredients:
    - 1 tsp turmeric
    - Dash of cumin
    - Salt and pepper to taste (As needed)
    - 2 tbsp water
Instructions:
1) Heat a non-stick pan over medium heat.
2) While the pan is heating, make your spice sauce by mixing all the spices with water in a small bowl.
3) Take the block of tofu and squeeze the water out with your hands over the sink. Try to get as much water out as possible.
4) Crumble tofu with your hands as you throw it into the pan (you can also crumble with a fork if you'd like). Pour the spice sauce over it and stir.
5) Let cook for 2 to 3 minutes. Transfer to a dish and set aside.
6) Cook red peppers with some oil, salt and pepper in the same pan for 5 minutes.
7) Add the cooked red peppers with the rest of the vegetables to tofu scramble and enjoy!",
threshold: "below",
image:"https://eatsomethingvegan.com/wp-content/uploads/2021/07/Veggie-Tofu-Breakfast-Skillet-2.jpg")



spinach_omlette = Meal.new(name: "Spinach Feta Omelette with Toast",
note: "Indulge in a gourmet breakfast while managing gestational diabetes with our Spinach Feta Omelette with Toast.
This mouthwatering combination of fluffy eggs, sautéed spinach, and creamy feta cheese provides a satisfying meal without compromising blood sugar levels.
Served alongside lightly toasted bread, it's a diabetic-friendly option that's both elegant and nourishing, perfect for ensuring a healthy pregnancy journey.",
timing: "breakfast",
recipe:"Ingredients:
- 2 large eggs
- 1/2 cup fresh spinach, chopped
- 2 tbsp crumbled feta cheese
- 1/4 tsp salt
- 1/4 tsp black pepper
- 1 slice whole grain bread
- 1 tsp olive oil
Instructions:
1) In a bowl, whisk the eggs with salt and pepper.
2) Heat olive oil in a non-stick skillet over medium heat.
3) Add spinach to the skillet and cook until wilted.
4) Pour the whisked eggs over the spinach and cook until set.
5) Sprinkle feta cheese on top of the omelette and fold in half.
6) Toast the whole grain bread.
7) Serve the omelette with the toast on the side.",
threshold: "above",
image:"https://images.squarespace-cdn.com/content/v1/62d61e7ece25bb77f9eef8a8/d6b6e515-327d-4718-9708-1522e5771b04/Spinach+and+feta+omelette+with+wholemeal+toast.jpg?format=1500w")


# Seeds for meals in Lunch category (4 items)

chicken_veg = Meal.new(name: "Chicken, Vegetable, and Brown Rice",
note: "Savor the wholesome goodness of our Chicken, Vegetable, and Brown Rice dish, thoughtfully crafted with the health needs of gestational diabetic women in mind.
Tender chicken breast, colorful vegetables, and nutrient-rich brown rice come together in a flavorful medley that's low in glycemic index, providing sustained energy without spiking blood sugar levels.
Packed with protein, fiber, and essential nutrients, it's a nourishing meal choice to support a balanced diet during pregnancy.",
timing: "lunch",
recipe:"Ingredients:
- 75g brown rice
- 75g broccoli - broken into smaller florets
- 1-2 carrots - peeled and chopped into bitesize pieces
- 1 chicken breast
- Salt and pepper
- Garlic powder
- Paprika
- Cumin or cayenne pepper (Optional)
Instructions:
1) Pat dry the chicken breast and season well with salt, pepper, paprika and garlic powder. Optionally add a pinch of cumin or cayenne pepper.
2) Bake the chicken breast at 180 degrees for around 25 minutes or until fully cooked through.
3) Meanwhile, boil the brown rice.
4) Break up the broccoli into smaller florets and peel and chop up the carrots into small pieces.
5) Bring a pan of water to the boil and add a pinch of salt. Add the carrots.
6) Once carrots begin to soften (around 5 minutes), add the broccoli and continue cooking for 3-4 more minutes until tender.
7) Drain the veg and mix with the cooked rice. Season well with salt, pepper and a little garlic powder.",
threshold: "below",
image:"app/assets/images/lunch/chicken_vege_rice_l.jpg")



vege_salad = Meal.new(name: "Roasted Vegetables, Chickpea, and Quinoa Salad",
note: " Elevate your dining experience with our Roasted Vegetables, Chickpea, and Quinoa Salad, a vibrant and diabetes-friendly option perfect for expecting mothers.
Roasted seasonal vegetables, protein-packed chickpeas, and wholesome quinoa combine to create a satisfying salad bursting with flavor and nutrients.
With its balanced blend of complex carbohydrates, fiber, and protein, this dish helps regulate blood sugar levels while providing essential prenatal nutrition.",
timing: "lunch",
recipe:"Ingredients:
- 2 red or yellow peppers, deseeded and cut into chunks
- 1 red onion, cut into small wedges
- 2 large beetroot, peeled and cut into small wedges
- 4 garlic cloves, unpeeled
-  4 tbsp olive oil
-  200g quinoa
-  480ml vegetable stock (check it's vegan and gluten-free)
-  400g tin chickpeas, drained and rinsed
-  1 ripe avocado, stoned, peeled and sliced
Instructions:
1. Heat the oven to 200°C/180°C fan/ gas 6. Put the peppers, onion and beetroot in a roasting tin, tuck the garlic cloves in between, then drizzle with the olive oil to coat everything.
Roast for 25-30 minutes or until tender. Squeeze the garlic cloves out of their skins and mix the flesh into the vegetables (discard the skins).
2. Meanwhile, rinse the quinoa under cold running water and drain in a sieve.
Bring the stock to the boil in a saucepan, add the quinoa and reduce the heat to a simmer.
Cover and cook for 15 minutes until the quinoa is tender and has absorbed most of the stock.
When cooked, the sprout or 'tail' will pop out of each quinoa seed. Remove from the heat and leave for 5 minutes before straining off any excess stock. Fluff up the quinoa with a fork.
3. Mix together the quinoa, roasted vegetables (reserving the oil left in the roasting tin), chickpeas and avocado in a serving bowl.
4. Whisk the dressing ingredients with the reserved oil from the roasting tin and gently toss with the salad. Serve warm.",
threshold: "above",
image:"https://www.deliciousmagazine.co.uk/wp-content/uploads/2020/02/069-roasted-vegetable-salad-768x960.jpg")



lentil_soup = Meal.new(name: "Red Lentil and Zucchini Soup",
note: " Warm your soul with our comforting Red Lentil and Zucchini Soup, a hearty option ideal for gestational diabetic women seeking a nourishing and balanced meal.
Made with wholesome ingredients like red lentils, zucchini, and aromatic spices, this flavorful soup is rich in fiber and protein while being low on the glycemic index.
Enjoy a bowlful of goodness that's not only satisfying but also supports stable blood sugar levels and overall well-being during pregnancy.",
timing: "lunch",
recipe:"Ingredients:
- ¼ cup olive oil
- 1 onion, finely chopped
- 3-4 garlic cloves, grated
- 3 zucchinis, diced
- 8 ounces spinach leaves, roughly chopped
- 15 ounces canned tomatoes, pureed
- 400 g red lentils, soaked in cold water
- Salt and pepper, to taste
- 1 bay leaf
Garnish:
- Yogurt or sour cream
- Sliced scallions or chives
- Lemon wedges
Instructions:
1. Cook the onion in the olive oil over medium heat until soft and golden. About 10 minutes.
2. Add the garlic and warm through for 30 seconds.
3. Add the diced zucchini and the spinach. Season with salt.
4. Cook until tender. About 10 minutes.
5. Transfer the vegetables to a blender along with 1 cup of water. Puree until smooth and pour back into the pot.
Make sure that the pot is off of the heat so that the puree doesn’t splatter.
6. Drain the lentils and add them to the pot along with the pureed tomatoes, the bay leaf, salt, and pepper. Cover with water or vegetable broth.
7. Bring to a boil and reduce the heat to low.
8. Cook the soup stirring often, until the lentils start to break down. About 25-30 minutes. Add more liquid if needed.
9. Taste and adjust seasoning if needed. Serve with a dollop of yogurt, sliced scallions, and lemon wedges. Enjoy!",
threshold: "above",
image:"app/assets/images/lunch/red_lentil_soup_l.jpg")



sweet_potato = Meal.new(name: "Roasted Sweet Potatoes and Chickpea Salad",
note: "Treat yourself to a delicious and nutritious meal with our Roasted Sweet Potatoes and Chickpea Salad, specially tailored for gestational diabetic women.
Oven-roasted sweet potatoes and hearty chickpeas mingle with fresh greens and a zesty dressing to create a satisfying salad that's both filling and diabetes-friendly.
Rich in fiber, vitamins, and minerals, it's a flavorful choice that helps stabilize blood sugar levels while supporting maternal health during pregnancy.",
timing: "lunch",
recipe:"Ingredients:
SALAD
- 100g organic sweet potatoes* sliced into 1/2-inch rounds with skin on
- 212.5g can chickpeas (rinsed, drained and patted dry // ~1 1/4 cups drained as original recipe is written)
- 15 ml grape seed or melted coconut oil (divided)
- 7-10.5g tandoori masala spice blend*
- pinch of sea salt
- 1/4 tsp turmeric (optional)
- 200g rainbow chard or kale(chopped, large stems removed)
- 7-10.5g roasted lightly salted or unsalted pumpkin seeds (optional)
DRESSING
- 28g tahini
- 7.5ml maple syrup
- 15ml lemon, juiced
- 7.5-15ml hot water (to thin)
Instructions:
1. Preheat oven to 400 degrees F (204 C) and line a baking sheet with foil.
2. Add chickpeas to a small mixing bowl and toss with half of the oil and all of the tandoori masala spice blend, salt.
Taste and adjust seasonings as needed, making sure they're well-salted and thoroughly seasoned.
Arrange on half of the prepared baking sheet.
3. Add sweet potato rounds to the other half of the baking sheet and drizzle with remaining oil - toss.
Sprinkle with a bit of salt and arrange in a single layer.
4. Bake for 20 minutes, then remove from oven to toss chickpeas and flip sweet potatoes to ensure even cooking.
Return to oven and cook for 10-15 minutes more or until sweet potatoes are tender and golden brown, and chickpeas are firm and crispy.
5. In the meantime, add tahini, lemon juice, and maple syrup to the mixing bowl you used earlier (for the chickpeas) and whisk to combine.
Thin with hot water until pourable. Taste and adjust seasonings as needed. Set aside.
6. Once the potatoes and chickpeas are done roasting, let cool for a few minutes. To serve, divide chard or massaged* kale between serving dishes and top with sweet potatoes, chickpeas, and pumpkin seeds (optional).
Serve with dressing on the side. Best when fresh, though leftovers will keep covered separately for 2-3 days.",
threshold: "below",
image:"https://minimalistbaker.com/wp-content/uploads/2015/08/10-ingredient-HEALTHY-Sweet-Potato-Crispy-Chickpea-Salad-with-a-CREAMY-Tahini-Dressing-So-easy-so-delicious-vegan-glutenfree-salad-recipe-healthy-dinner.jpg")


# Seeds for meals in Dinner category (4 items)

chicken_salad = Meal.new(name: "Grilled Chicken and Mixed Green Salad",
note: "Elevate your dining experience with our Grilled Chicken and Mixed Green Salad, a refreshing and diabetes-friendly option perfect for expectant mothers.
Juicy grilled chicken breast, crisp mixed greens, and an assortment of colorful vegetables come together to create a vibrant and nutritious salad.
With its balanced combination of lean protein, fiber, and essential vitamins and minerals, it's a wholesome choice that supports blood sugar control and maternal health throughout pregnancy.",
timing: "dinner",
recipe:"Ingredients:
- 2 cups fresh mixed greens (various types of lettuce)
- 1 cucumber
- 1 bell pepper
- 3 cherry tomatoes
- 1 carrot
- 1 tbsp canned corn
- 50g grilled chicken (breasts/filet)
- Parmesan cheese
- Balsamic vinegar
- Olive oil
- Lemon
- Salt and pepper to taste
Instructions:
1) Season your chicken and put it in a hot pan to grill on both sides for a couple of minutes.
Remove from heat and set aside to cool, then cut into smaller bites.
2) Wash and drain the mixed greens. Use any kind of lettuce you like, or a mixture of it.
3) Peel and slice the cucumber. Wash and slice your bell pepper (I had a light-green variety in my garden).
Peel the carrot and cut into thin slices (or grate it). Cut cherry tomatoes in half.
4) For the dressing, pour in a bowl or small jar olive oil and balsamic vinegar (1:3 ratio), add a squeeze of lemon juice or water, a small pinch of salt and some pepper.
Mix well with a whisk or shake in a jar until well combined.
5) Assemble your salad. In a bowl, place your washed salad greens, cucumber and bell pepper slices, halved cherry tomatoes, carrot sticks and a tablespoon of canned corn.
Add chicken bites.
6) Top the salad with some shaved parmesan cheese and the balsamic dressing.",
threshold: "above",
image:"app/assets/images/dinner/chicken_green_salad_l.jpg")



salmon_asparagus = Meal.new(name: "Salmon and Grilled Asparagus with Quinoa:",
note: "Indulge in a flavorful and nutritious meal designed with the health of gestational diabetic women in mind.
Our Salmon and Grilled Asparagus with Quinoa dish offers a perfect balance of protein, healthy fats, and complex carbohydrates.
Tender grilled salmon, vibrant asparagus spears, and fluffy quinoa come together to create a delicious and blood sugar-friendly meal.
Packed with omega-3 fatty acids, fiber, and essential nutrients, it's a nourishing option that supports maternal health during pregnancy.",
timing: "dinner",
recipe:"Ingredients:
- 2 salmon fillets
- 20 green asparagus
- 200g quinoa
- 1 tbsp olive oil
- salt and pepper
Instructions:
1. Start by cooking the salmon in the oven for approximately 15 minutes at 200°C (400°F).
2. Midway through cooking the salmon, add the asparagus mixed with olive oil, salt, and pepper to the oven.
3. Simmer the quinoa with water just above the top, covered, for 10 minutes.
4. Assemble on a plate.",
threshold: "below",
image:"app/assets/images/dinner/salmon_asparag_quinoa_d.jpg")



tofu_curry = Meal.new(name: "Tofu and Vegetable Curry",
note: "Experience the exotic flavors of our Tofu and Vegetable Curry, tailored to meet the dietary needs of gestational diabetic women.
This aromatic and diabetes-friendly dish features protein-rich tofu simmered in a fragrant blend of spices, paired with an array of colorful vegetables.
Low in glycemic index and brimming with plant-based goodness, it's a satisfying curry that helps regulate blood sugar levels while providing essential nutrients for a healthy pregnancy.",
timing: "dinner",
recipe:"Ingredients:
- 454g extra firm tofu (cut into 1-inch cubes)
- 142g baby kale or baby spinach
- 180g uncooked brown rice
- 2 medium tomatoes (roughly chopped)
- 2 medium carrots (roughly chopped)
- 1 medium sweet onion (roughly chopped)
- 900ml low-sodium vegetable broth
- 2 tablespoons curry powder
- 1 tablespoon minced garlic (use a  microplane to make a paste) minced garlic (I used a microplane to make a paste)
- 1 tablespoon minced ginger (use a  microplane to make a paste)
- 1 teaspoon salt
Instructions:
1. Place the rice in a sauce pan with 2 cups of water and a pinch of salt, bring to a boil, cover and reduce to simmer.
Cook for 25-30 minutes until cooked and water is absorbed.
2. Place the tomatoes, carrots, onion, garlic, ginger, curry powder and broth in a large pot and bring to a boil.
Reduce to simmer and cook for 20 minutes.
3. Place the soup, in batches, in a blender or food processor, or using an immersion blender, puree the soup until smooth.
4. Return to the pot and bring to a boil. Reduce to simmer and add the tofu and kale. Cook for 5 minutes. Add salt to taste.
5. Either mix the rice directly into the soup, or serve the rice on the side. Serve hot.",
threshold: "below",
image:"https://parsleyinmyteeth.com/wp-content/uploads/2015/08/Vegetable-Curry-with-Tofu-Kale-Brown-Rice-from-Parsley-In-My-Teeth-1024x683.jpg")



chickpea_stew = Meal.new(name: "Vegan Chickpea Stew",
note: "Delight in a hearty and diabetes-friendly meal with our Vegan Chickpea Stew, thoughtfully crafted for gestational diabetic women seeking nutritious and flavorful options.
This comforting stew boasts tender chickpeas simmered with an assortment of vegetables and aromatic herbs, creating a rich and satisfying dish that's both low in glycemic index and high in fiber.
Enjoy a bowlful of plant-based goodness that supports stable blood sugar levels and promotes maternal well-being during pregnancy.",
timing: "dinner",
recipe:"Ingredients:
- 30 ml olive oil
- 1 medium onion, finely chopped
- 5 garlic cloves, finely chopped
- 2 tsp ground coriander
- 3 tsp ground cumin
- 1½ tsp smoked paprika
- 4 tsp harissa paste
- 400 g tin chopped tomatoes
- 500 ml chickpea brine
- 1 vegetable (vegan) stock cube
- black pepper, to taste
- ¾ tsp salt, adjust to taste
- ½ tsp hot chilli flakes, adjust to taste
- 800 g tin chickpeas
- fresh coriander, chopped (optional)
Instructions:
1. Heat up the oil in a heavy-bottomed pot.
2. Add the diced onion and fry it gently (on a low heat) until almost translucent (for about 7 minutes), stirring from time to time.
3. Add chopped garlic. Keep on frying gently until the onion is translucent and the garlic softens completely and releases its beautiful aroma (approx. 5 minutes).
4. Stir all the ground spices into the onion-garlic mixture. Fry them off gently for a minute or two (stirring the whole time) as they tend to burn easily.
5. Stir harissa paste into the onion and garlic mixture.
6. Add chopped tomatoes, chickpea brine, stock cube and salt to the pan.
Simmer for about 15-25 minutes for the stew to thicken and for the excess moisture to evaporate. Adjust simmering time to achieve the desired thickness.
Give the stew a good stir from time to time.
7. Once the sauce thickens, taste it and season with a generous amount of black pepper, more salt if needed, chilli flakes (if your harissa is quite mild).
8. Finally, stir in cooked chickpeas and let them warm through. Serve topped with chopped coriander  if you wish.",
threshold: "above",
image:"https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2017/11/vegan-chickpea-stew-lablabi-lunch-800x1200.jpg")



# Seeds for meals in Snacks category (4 items)


apple_almond = Meal.new(name: "Apple Slices with Almond Butter",
note: "Treat yourself to a delightful snack that's both satisfying and blood sugar-friendly.
Our Apple Slices with Almond Butter offer a perfect balance of sweetness from crisp apple slices paired with the creamy richness of almond butter.
Packed with fiber, protein, and healthy fats, it's a nutritious option for gestational diabetic women seeking a tasty and satiating snack to help stabilize blood sugar levels and curb cravings during pregnancy.",
timing: "snack",
recipe:"Ingredients:
- Delicious apple, cored and cut into 8 wedges
- 1 fresh lemon, juiced (optional)
- 1 tbsp Creamy almond butter ( can substitute with peanut butter)
Instructions:
1. Combine the apple slices and lemon juice in a zip-close bag and toss.
2. Remove apples from bag and arrange them in a circle on a small plate.
3. Scoop the almond/peasnut butter in a small bowl and place in the centre of the dish.",
threshold: "above",
image:"app/assets/images/snack/apple_slices_almond_butter.jpg")



greek_yoghurt = Meal.new(name: "Greek Yogurt with Berries",
note: "Indulge in a creamy and diabetes-friendly treat with our Greek Yogurt with Berries, specially curated for expectant mothers managing gestational diabetes.
Creamy Greek yogurt topped with a medley of fresh berries provides a burst of flavor and essential nutrients, including protein, calcium, and antioxidants.
Low in sugar and high in satiating protein, it's a satisfying snack or breakfast option that supports stable blood sugar levels and promotes maternal well-being throughout pregnancy",
timing: "snack",
recipe:"Ingredients:
- 177ml Greek Yogurt
- 120g blueberries
- 100g chopped strawberries
Instructions:
1) Place all of the yogurt in a bowl.
2) Wash and slice your berries, place on top of the yogurt.
3) Enjoy as an amazing breakfast!",
threshold: "below",
image:"app/assets/images/snack/greek_yoghurt_with_berries_s.jpg")



cheddar = Meal.new(name: "Cheddar Cheese",
note: "Enjoy the rich and savory goodness of Cheddar Cheese as a wholesome and blood sugar-friendly snack option for gestational diabetic women.
Packed with protein and calcium, cheddar cheese provides a satisfying and nutritious snack choice that helps regulate blood sugar levels and supports fetal development during pregnancy.
Pair it with whole grain crackers or crisp vegetable slices for a delicious and balanced snack that satisfies cravings without causing spikes in blood sugar.",
timing: "snack",
recipe:"Ingredients:
- 30g of cheddar cheese cubed
Instructions:
1) snack on cubed cheddar cheese inbetween your meals ( feel free to alternate between other hard cheese too)",
threshold: "below",
image:"app/assets/images/snack/cheese_s.jpg")



boiled_egg = Meal.new(name: "Boiled Egg & Cucumber",
note: "Nourish your body with a simple yet satisfying snack that's perfect for gestational diabetic women.
Our Boiled Egg and Cucumber combination offers a protein-rich and low-glycemic option that's ideal for managing blood sugar levels during pregnancy.
Nutrient-dense boiled eggs paired with hydrating and crunchy cucumber slices provide a refreshing and satiating snack choice that supports maternal health and fetal development.
Enjoy this wholesome snack anytime to keep hunger at bay while maintaining stable blood sugar levels.",
timing: "snack",
recipe:"Ingredients:
- 2 boiled eggs
- sliced cucumbers
- optional brown bread
Instructions:
1) boil 2 eggs and deshell it and place it on the plate
2) add sliced cucumbers to plate",
threshold: "above",
image:"app/assets/images/snack/boiled_egg_s.jpg")
