import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/data_page/data_page_controller.dart';
import 'package:marquee/marquee.dart';

class DataPageDesktopPage extends StatelessWidget {
  const DataPageDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataPageController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: controller.isLoadingUser
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: CircularProgressIndicator()),
                )
              : Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Halaman Data User',
                      style: TypographyStyle.heading3Bold.copyWith(color: ColorStyle.onSecondaryColor),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Divider(),
                    ),
                    if (controller.isLoadingUser)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    color: ColorStyle.surfaceContainerColor,
                                    child: const Center(
                                      child: Text('Nama'),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    color: ColorStyle.surfaceContainerColor,
                                    child: const Center(
                                      child: Text('Phone'),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    color: ColorStyle.surfaceContainerColor,
                                    child: const Center(
                                      child: Text('Email'),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    color: ColorStyle.surfaceContainerColor,
                                    child: const Center(
                                      child: Text('Website'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            for (var user in controller.listUser)
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Container(
                                      height: 48,
                                      padding: const EdgeInsets.all(8),
                                      color: ColorStyle.surfaceContainerLowestColor,
                                      child: Center(
                                        child: Marquee(
                                          blankSpace: 20,
                                          decelerationDuration: const Duration(milliseconds: 500),
                                          accelerationCurve: Curves.easeInOut,
                                          decelerationCurve: Curves.easeInOut,
                                          text: user.name,
                                          style: TypographyStyle.body4SemiBold.copyWith(color: ColorStyle.onPrimaryContainerColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 48,
                                      padding: const EdgeInsets.all(8),
                                      color: ColorStyle.surfaceContainerLowestColor,
                                      child: Center(
                                        child: Marquee(
                                          blankSpace: 20,
                                          decelerationDuration: const Duration(milliseconds: 500),
                                          accelerationCurve: Curves.easeInOut,
                                          decelerationCurve: Curves.easeInOut,
                                          text: user.phone,
                                          style: TypographyStyle.body4SemiBold.copyWith(color: ColorStyle.onPrimaryContainerColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 48,
                                      padding: const EdgeInsets.all(8),
                                      color: ColorStyle.surfaceContainerLowestColor,
                                      child: Center(
                                        child: Marquee(
                                          blankSpace: 20,
                                          decelerationDuration: const Duration(milliseconds: 500),
                                          accelerationCurve: Curves.easeInOut,
                                          decelerationCurve: Curves.easeInOut,
                                          text: user.email,
                                          style: TypographyStyle.body4SemiBold.copyWith(color: ColorStyle.onPrimaryContainerColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 48,
                                      padding: const EdgeInsets.all(8),
                                      color: ColorStyle.surfaceContainerLowestColor,
                                      child: Center(
                                        child: Marquee(
                                          blankSpace: 20,
                                          decelerationDuration: const Duration(milliseconds: 500),
                                          accelerationCurve: Curves.easeInOut,
                                          decelerationCurve: Curves.easeInOut,
                                          text: user.website,
                                          style: TypographyStyle.body4SemiBold.copyWith(color: ColorStyle.onPrimaryContainerColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    // ListView.separated(
                    //   shrinkWrap: true,
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   itemCount: controller.listUser.length,
                    //   separatorBuilder: (context, index) => const SizedBox(height: 8),
                    //   itemBuilder: (context, index) {
                    //     var user = controller.listUser[index];
                    //     return UserItem(
                    //       controller: controller,
                    //       item: user,
                    //     );
                    //   },
                    // ),
                  ],
                ),
        );
      },
    );
  }
}
