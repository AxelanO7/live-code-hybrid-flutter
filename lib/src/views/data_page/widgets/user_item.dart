import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/data_page/data_page_controller.dart';

class UserItem extends StatelessWidget {
  final DataPageController controller;
  final Users item;
  const UserItem({super.key, required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyle.tertiaryContainerColor,
        border: Border.all(color: ColorStyle.onSurfaceColor),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(item.name),
          Text(item.email),
        ],
      ),
    );
  }
}
