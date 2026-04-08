import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
                preferredSize:Size.fromHeight(0),
                child: Text("Sliver app bar"),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                '''Spicy chicken macaroni is a delicious and easy dish that is loved by many people. To prepare this recipe, first boil macaroni in salted water until it becomes soft, then drain and set it aside. In a pan, heat some oil and add finely chopped onions. Fry them until they turn golden brown. Then add ginger-garlic paste and cook for a minute.

Now add small pieces of chicken and cook until the chicken changes color. After that, add chopped tomatoes, green chilies, salt, red chili powder, black pepper, and a little soy sauce and chili sauce. Mix everything well and cook until the tomatoes become soft and the chicken is fully cooked.

Next, add boiled macaroni into the pan and mix it with the chicken mixture. Stir well so that all the spices coat the macaroni properly. Cook for 3–5 minutes on low heat.

Finally, garnish with fresh coriander leaves and serve hot. This spicy chicken macaroni is perfect for lunch or dinner and can be enjoyed with ketchup or sauce. It is quick to make and very tasty.picy chicken macaroni is a delicious and easy dish that is loved by many people. To prepare this recipe, first boil macaroni in salted water until it becomes soft, then drain and set it aside. In a pan, heat some oil and add finely chopped onions. Fry them until they turn golden brown. Then add ginger-garlic paste and cook for a minute.

Now add small pieces of chicken and cook until the chicken changes color. After that, add chopped tomatoes, green chilies, salt, red chili powder, black pepper, and a little soy sauce and chili sauce. Mix everything well and cook until the tomatoes become soft and the chicken is fully cooked.

Next, add boiled macaroni into the pan and mix it with the chicken mixture. Stir well so that all the spices coat the macaroni properly. Cook for 3–5 minutes on low heat.
'''


            ),
          )
        ],
      ),
    );
  }
}
