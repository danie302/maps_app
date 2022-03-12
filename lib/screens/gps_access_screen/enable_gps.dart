part of 'index.dart';

class EnableGpsMsg extends StatelessWidget {
  const EnableGpsMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enable GPS location',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
