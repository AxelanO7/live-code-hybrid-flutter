import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/main_page/main_page_controller.dart';

class MainPageDesktopPage extends StatelessWidget {
  const MainPageDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Halaman Operasi',
                style: TypographyStyle.heading3Bold.copyWith(color: ColorStyle.onSecondaryColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Divider(
                  color: ColorStyle.onTertiaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 300,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: ColorStyle.secondaryContainerColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Jenis Operasi',
                                    style: TypographyStyle.heading4Bold.copyWith(
                                      color: ColorStyle.onSecondaryContainerColor,
                                    ),
                                  ),
                                  Divider(
                                    color: ColorStyle.onSecondaryContainerColor,
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: controller.isSummation,
                                        onChanged: (value) => controller.handleChangeCheckbox(value, 'summation'),
                                      ),
                                      Text(
                                        'Penjumlahan',
                                        style: TypographyStyle.body2Medium.copyWith(
                                          color: ColorStyle.onSecondaryContainerColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: controller.isMultiplication,
                                        onChanged: (value) => controller.handleChangeCheckbox(value, 'multiplication'),
                                      ),
                                      Text(
                                        'Perkalian',
                                        style: TypographyStyle.body2Medium.copyWith(
                                          color: ColorStyle.onSecondaryContainerColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                              width: 300,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: ColorStyle.surfaceContainerColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Hasil Operasi',
                                    style: TypographyStyle.heading4Bold.copyWith(
                                      color: ColorStyle.onSurfaceColor,
                                    ),
                                  ),
                                  Divider(
                                    color: ColorStyle.onSurfaceColor,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Hasil: ${controller.result}',
                                    style: TypographyStyle.body1SemiBold.copyWith(
                                      color: ColorStyle.onSurfaceColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: ColorStyle.tertiaryContainerColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Operasi',
                                      style: TypographyStyle.heading4Bold.copyWith(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                    Divider(
                                      color: ColorStyle.onTertiaryContainerColor,
                                    ),
                                    const SizedBox(height: 24),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Nomor Pertama',
                                        style: TypographyStyle.body1SemiBold.copyWith(
                                          color: ColorStyle.onTertiaryContainerColor,
                                        ),
                                      ),
                                    ),
                                    TextField(
                                      controller: controller.firstNumberController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Masukkan nomor pertama',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Nomor Kedua',
                                        style: TypographyStyle.body1SemiBold.copyWith(
                                          color: ColorStyle.onTertiaryContainerColor,
                                        ),
                                      ),
                                    ),
                                    TextField(
                                      controller: controller.secondNumberController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Masukkan nomor kedua',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  CustomButton(
                                    width: 112,
                                    color: ColorStyle.secondaryContainerColor,
                                    onPressed: controller.handleCalculate,
                                    child: Text(
                                      'Hitung',
                                      style: TypographyStyle.body1Bold.copyWith(
                                        color: ColorStyle.onSecondaryContainerColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  CustomButton(
                                    width: 112,
                                    color: ColorStyle.tertiaryContainerColor,
                                    onPressed: controller.handleLogout,
                                    child: Text(
                                      'Logout',
                                      style: TypographyStyle.body1Bold.copyWith(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  CustomButton(
                                    width: 112,
                                    color: ColorStyle.surfaceContainerColor,
                                    onPressed: controller.handleDataPage,
                                    child: Text(
                                      'Data',
                                      style: TypographyStyle.body1Bold.copyWith(
                                        color: ColorStyle.onSecondaryContainerColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
