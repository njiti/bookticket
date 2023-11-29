import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
    );
  }
}