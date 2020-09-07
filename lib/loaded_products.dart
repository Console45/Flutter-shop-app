import 'package:Myshop/models/products.dart';

final List<Product> loadedProducts = [
  Product(
    id: 'p1',
    title: 'Jam',
    description:
        'Jams are made from the entire fruit, including the pulp, while preserves are essentially jellies that contain whole or large pieces.',
    price: 4.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/3142/3142534.svg',
    category: Category.Breakfast,
    nutrition: Nutrition(
      calories: 278,
      cabohydrate: '69 g',
      protein: '0.4 g',
      fat: '0.1 g',
    ),
  ),
  Product(
    id: 'p2',
    title: 'Orange',
    description:
        "Oranges are among the world's most popular fruits. Also called sweet oranges, they grow on orange trees (Citrus x sinensis) and belong to a large group of fruits known as citrus fruits.",
    price: 2.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2909/2909906.svg',
    category: Category.Fruits,
    nutrition: Nutrition(
      calories: 47,
      cabohydrate: '12 g',
      protein: '0.9 g',
      fat: '0.1 g',
    ),
  ),
  Product(
    id: 'p3',
    title: 'Peach',
    description:
        ' Peaches are a fuzzy fruit native to northwest China. They are a member of the stone fruit family, which means that their flesh surrounds one large middle seed.',
    price: 3.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/590/590775.svg',
    category: Category.Fruits,
    nutrition: Nutrition(
      calories: 39,
      cabohydrate: '10 g',
      protein: '0.9 g',
      fat: '0.3 g',
    ),
  ),
  Product(
    id: 'p4',
    title: 'Bread',
    description:
        'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world.',
    price: 5.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/3014/3014538.svg',
    category: Category.Breakfast,
    nutrition: Nutrition(
      calories: 265,
      cabohydrate: '49 g',
      protein: '9 g',
      fat: '3.2 g',
    ),
  ),
  Product(
    id: 'p5',
    title: 'Tom brown',
    description:
        'Tom brown porridge is a food commonly eaten as a breakfast cereal dish, made by boiling ground, crushed or chopped starchy plants—typically grain—in water or milk',
    price: 5.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2764/2764134.svg',
    category: Category.Breakfast,
    nutrition: Nutrition(
      calories: 50,
      cabohydrate: '11 g',
      protein: '1.4 g',
      fat: '0.2 g',
    ),
  ),
  Product(
    id: 'p6',
    title: 'Can Coke',
    description:
        'Coke is a carbonated soft drink containing an extract made from kola nuts, together with sweeteners and other flavorings.',
    price: 10.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2933/2933122.svg',
    category: Category.Beverages,
    nutrition: Nutrition(
      calories: 50,
      cabohydrate: '10 g',
      protein: '0.1 g',
      fat: '0.2 g',
    ),
  ),
  Product(
    id: 'p7',
    title: 'Cowbell Milk',
    description:
        "It's packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, it's an excellent source of protein. Drinking milk and dairy products may prevent osteoporosis and bone fractures and even help you maintain a healthy weight",
    price: 7.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2935/2935394.svg',
    category: Category.Beverages,
    nutrition: Nutrition(
      calories: 42,
      cabohydrate: '5 g',
      protein: '3.4 g',
      fat: '1 g',
    ),
  ),
  Product(
    id: 'p8',
    title: 'Broccoli',
    description:
        'Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable.',
    price: 2.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2909/2909841.svg',
    category: Category.Vegetables,
    nutrition: Nutrition(
      calories: 31,
      cabohydrate: '6 g',
      protein: '2.5 g',
      fat: '0.4 g',
    ),
  ),
  Product(
    id: 'p9',
    title: 'Banana',
    description:
        "Bananas are one of the world's most appealing fruits. Global banana exports reached about 18 million tons in 2015, according to the United Nations. About half of them went to the United States and the European market.",
    price: 3.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2909/2909808.svg',
    category: Category.Fruits,
    nutrition: Nutrition(
      calories: 89,
      cabohydrate: '23 g',
      protein: '1.1 g',
      fat: '0.3 g',
    ),
  ),
  Product(
    id: '10',
    title: 'Cabbage',
    description:
        'Cabbage, which is often lumped into the same category as lettuce because of their similar appearance, is actually a part of the cruciferous vegetable family.',
    price: 1.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/765/765544.svg',
    category: Category.Vegetables,
    nutrition: Nutrition(
      calories: 25,
      cabohydrate: '6 g',
      protein: '1.3 g',
      fat: '0.1 g',
    ),
  ),
  Product(
    id: '11',
    title: 'Carrot',
    description:
        "The carrot is a root vegetable, usually orange in color, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe and Southwestern Asia.",
    price: 0.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/2517/2517984.svg',
    category: Category.Vegetables,
    nutrition: Nutrition(
      calories: 41,
      cabohydrate: '10 g',
      protein: '0.9 g',
      fat: '0.2 g',
    ),
  ),
  Product(
    id: '12',
    title: 'Can Fanta',
    description:
        'Fanta is a brand of fruit-flavored carbonated soft drinks created by Coca-Cola Deutschland under the leadership of German businessman Max Keith. There are more than 100 flavors worldwide',
    price: 6.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/3076/3076047.svg',
    category: Category.Beverages,
    nutrition: Nutrition(
      calories: 35,
      cabohydrate: '6.6 g',
      protein: '1.3 g',
      fat: '0.1 g',
    ),
  ),
  Product(
    id: '13',
    title: 'Corn Flakes',
    description:
        'Corn flakes, or cornflakes, is a breakfast cereal made by toasting flakes of corn. The cereal, originally made with wheat, was created by William Kellogg in 1894 for his brother John Kellogg',
    price: 10.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/1919/1919011.svg',
    category: Category.Breakfast,
    nutrition: Nutrition(
      calories: 357,
      cabohydrate: '84 g',
      protein: '8 g',
      fat: '0.4 g',
    ),
  ),
  Product(
    id: '14',
    title: 'Apple',
    description:
        'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.',
    price: 7.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/1041/1041384.svg',
    category: Category.Fruits,
    nutrition: Nutrition(
      calories: 52,
      cabohydrate: '14 g',
      protein: '0.3 g',
      fat: '0.2 g',
    ),
  ),
  Product(
    id: '15',
    title: 'Lipton Tea',
    description:
        'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured or fresh leaves of the Camellia sinensis, an evergreen shrub native to East Asia.',
    price: 2.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/1992/1992720.svg',
    category: Category.Beverages,
    nutrition: Nutrition(
      calories: 1,
      cabohydrate: '0.2 g',
      protein: '0.1 g',
      fat: '0 g',
    ),
  ),
  Product(
    id: '16',
    title: 'Onions',
    description:
        'The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. Its close relatives include the garlic, scallion, shallot, leek, chive, and Chinese onion.',
    price: 1.99,
    imageUrl: 'https://image.flaticon.com/icons/svg/951/951990.svg',
    category: Category.Vegetables,
    nutrition: Nutrition(
      calories: 40,
      cabohydrate: '9 g',
      protein: '1.1 g',
      fat: '0.1 g',
    ),
  ),
];
