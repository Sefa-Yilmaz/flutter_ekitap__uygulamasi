import 'package:flutter/material.dart';
import 'package:flutter_ekitap__uygulamasi/consttants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xFD3D3D3D).withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          const SizedBox(height: 5),
          Text(
            '$score',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
