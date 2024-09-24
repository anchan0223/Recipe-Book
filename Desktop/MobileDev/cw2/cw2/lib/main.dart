import 'package:flutter/material.dart';
import 'screen2.dart'; // Import your Details Screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // The starting screen is HomeScreen
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Brownies',
      'ingredients': '''1 1/2 cups granulated sugar

3/4 cup all-purpose flour

2/3 cup cocoa powder

1/2 cup powdered sugar

1/2 cup dark chocolate chips

3/4 teaspoons sea salt

2 large eggs

1/2 cup canola oil or extra-virgin olive oil

2 tablespoons water

1/2 teaspoon vanilla''',
      'instructions':
          '''1. Preheat the oven to 325°F. Lightly spray an 8x8 baking dish with cooking spray and line it with parchment paper. Spray the parchment paper.

2. In a medium bowl, combine the sugar, flour, cocoa powder, powdered sugar, chocolate chips, and salt.

3. In a large bowl, whisk together the eggs, olive oil, water, and vanilla.

4. Sprinkle the dry mix over the wet mix and stir until just combined.

5. Pour the batter into the prepared pan and use a spatula to smooth the top. Bake for 40 to 48 minutes, or until a toothpick comes out with only a few crumbs attached. Cool completely before slicing.'''
    },
    {
      'name': 'Chocolate Chip Cookies',
      'ingredients': '''

4 1/4 cups all-purpose flour

1 1/2 teaspoons baking soda

1 teaspoon baking powder

1 tablespoon cornstarch

2 teaspoons kosher salt

1 1/2 cups salted butter, softened

1 1/4 cups brown sugar

1 cup white sugar

2 large eggs, at room temperature

4 teaspoons vanilla extract

12 ounces milk chocolate chips, such as Guittard® Milk Chocolate Chips
''',
      'instructions': '''

1. Combine flour, baking soda, baking powder, cornstarch, and kosher salt in a large bowl and whisk until well incorporated; set aside.

2. Add butter, brown sugar, and white sugar to the bowl of a stand mixer fitted with a paddle attachment. Mix on medium speed until light and fluffy, about 3 minutes. Add in eggs one at a time, until just combined. Add in vanilla; gradually add in dry ingredients, mixing until just combined. Stir in chocolate chips.

3. Using a 1/2 cup measure, scoop balls of dough into hands and form into a loose ball. Place cookie dough balls on a rimmed baking sheet and place in refrigerator for about 1 hour or until ready to bake. Alternatively, place in the freezer for 25 to 30 minutes.

4. Preheat the oven to 375 degrees F (190 degrees C). Line baking sheets with parchment. Working in batches of 3 or 4 cookies per baking sheet, carefully tear each dough ball in half and place one half on top of the other with the broken, jagged side up. Gently press the 2 halves together, taking care not to smooth the top. Place cookies on the prepared baking sheet, leaving plenty of space between cookies.

5. Bake in the preheated oven until golden around the edges and barely set in the middle, 10 to 12 minutes. Allow to cool completely on the baking sheet. '''
    },
    {
      'name': 'Banana Pudding',
      'ingredients': '''

    1 cup plus 1 tablespoon sugar

    1/2 cup flour

    1/8 teaspoon salt

    6 cups whole milk

    6 egg yolks

    3 eggs

    1/2 cup butter

    3 teaspoons vanilla extract

    9 ripe bananas

    2 (12 ounce) boxes vanilla wafers

    6 egg whites

    1/4 teaspoon cream of tartar
''',
      'instructions': '''

1. In a bowl, mix 1 cup sugar, flour, salt, milk, egg yolks, and whole eggs until smooth.

2. Melt butter in a saucepan over medium heat. Add the milk mixture, reduce heat, and whisk for about 20 minutes until thickened. Stir in 2 tsp vanilla. Let it cool for 1 hour.

3. Line two 9x13 dishes with vanilla wafers. Layer banana slices on top, then pour the cooled custard over.

4. For meringue, beat egg whites, cream of tartar, 1 tbsp sugar, and 1 tsp vanilla until stiff peaks form (about 5 minutes). Spread meringue over the custard.

5. Broil the meringue until browned (1-2 minutes). Cool for 15 minutes and serve. '''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
