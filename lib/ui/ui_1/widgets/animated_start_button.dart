import 'package:flutter/material.dart';

class AnimatedStartButton extends StatefulWidget {
  const AnimatedStartButton({super.key});

  @override
  State<AnimatedStartButton> createState() => _AnimatedStartButtonState();
}

class _AnimatedStartButtonState extends State<AnimatedStartButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  double counter = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animationController.addListener(() {
      setState(() {
        counter = animationController.value;
      });
    });
  }

  void start() => animationController.forward();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.redAccent.withOpacity(0.5),
              width: 3,
            ),
          ),
        ),
        CustomPaint(
          size: const Size(100, 100),
          painter: RoundProgress(counter),
        ),
        GestureDetector(
          onTap: start,
          child: Container(
            height: 80,
            width: 80,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
            child: const Text(
              "Start",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RoundProgress extends CustomPainter {
  final double counter;

  RoundProgress(this.counter);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.deepOrange;
    paint.style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final path = Path();
    path.addArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      0,
      counter * 7,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
