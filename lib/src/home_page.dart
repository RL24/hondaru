import 'package:flutter/material.dart';
import 'package:hondaru/src/feature.dart';
import 'package:hondaru/src/feature_list.dart';
import 'package:hondaru/src/spaced_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: features.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          Feature feature = features[index];
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(feature.backgroundAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SpacedColumn(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    Text(
                      feature.name,
                      style: const TextStyle(
                        fontFeatures: [FontFeature.enable('smcp')],
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ...feature.description.map((String f) => Text(f,  textAlign: TextAlign.center)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
