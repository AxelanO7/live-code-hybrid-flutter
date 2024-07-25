import 'package:live_code/src/core/base_import.dart';

import 'main_page_controller.dart';

class MainPageMobilePage extends StatelessWidget {
  const MainPageMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text('Halaman Operasi', style: TypographyStyle.heading3Bold.copyWith(color: ColorStyle.onSecondaryColor)),
              Divider(
                color: ColorStyle.onSecondaryColor,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: ColorStyle.secondaryContainerColor,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text('Jenis Operasi', style: TypographyStyle.body1SemiBold.copyWith(color: ColorStyle.onSecondaryContainerColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Penjumlahan', style: TypographyStyle.body2Medium.copyWith(color: ColorStyle.onSecondaryContainerColor)),
                                    Checkbox(
                                      value: controller.isSummation,
                                      onChanged: (value) => controller.handleChangeCheckbox(value, 'summation'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24,
                                child: VerticalDivider(
                                  color: ColorStyle.onSecondaryContainerColor,
                                  thickness: 1,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Perkalian', style: TypographyStyle.body2Medium.copyWith(color: ColorStyle.onSecondaryContainerColor)),
                                    Checkbox(
                                      value: controller.isMultiplication,
                                      onChanged: (value) => controller.handleChangeCheckbox(value, 'multiplication'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorStyle.tertiaryContainerColor,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                TextField(
                                  controller: controller.firstNumberController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Nomor Pertama',
                                    labelStyle: TypographyStyle.body1Reguler.copyWith(
                                      color: ColorStyle.onTertiaryContainerColor,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: ColorStyle.onSecondaryContainerColor,
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              children: [
                                TextField(
                                  controller: controller.secondNumberController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Nomor Kedua',
                                    labelStyle: TypographyStyle.body1Reguler.copyWith(
                                      color: ColorStyle.onTertiaryContainerColor,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorStyle.onTertiaryContainerColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: ColorStyle.surfaceContainerColor,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Hasil: ${controller.result}', style: TypographyStyle.body1SemiBold.copyWith(color: ColorStyle.onPrimaryContainerColor)),
                          CustomButton(
                            width: 100,
                            color: ColorStyle.secondaryContainerColor,
                            onPressed: controller.handleCalculate,
                            child: Text('Hitung', style: TypographyStyle.body1SemiBold.copyWith(color: ColorStyle.onSecondaryContainerColor)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    CustomButton(
                      width: 100,
                      color: ColorStyle.tertiaryContainerColor,
                      onPressed: controller.handleLogout,
                      child: Text(
                        'Logout',
                        style: TypographyStyle.body1SemiBold.copyWith(color: ColorStyle.onTertiaryContainerColor),
                      ),
                    ),
                    const SizedBox(width: 24),
                    CustomButton(
                      width: 100,
                      color: ColorStyle.surfaceContainerColor,
                      onPressed: controller.handleDataPage,
                      child: Text(
                        'Data',
                        style: TypographyStyle.body1SemiBold.copyWith(color: ColorStyle.onSecondaryContainerColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
