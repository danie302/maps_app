part of 'index.dart';

class _AccessButton extends StatelessWidget {
  const _AccessButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Required GPS access',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.black,
          shape: const StadiumBorder(),
          child: const Text(
            'Grant access',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
