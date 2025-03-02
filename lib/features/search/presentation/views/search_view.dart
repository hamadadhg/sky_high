import 'package:flutter/material.dart';
import 'package:sky_high/core/components/gradient_colors_component.dart';
import 'package:sky_high/features/search/presentation/views/widget/custom_search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientColorsComponent(widget: CustomSearchViewBody()),
    );
  }
}
