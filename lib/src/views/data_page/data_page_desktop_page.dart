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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  children: [
                    Text('Jenis Operasi'),
                    SizedBox(width: 48),
                    Column(
                      children: [
                        Text('Penjumlahan'),
                        Checkbox(
                          value: controller.isSummation,
                          onChanged: (value) => controller.handleChangeCheckbox(value, 'summation'),
                        ),
                      ],
                    ),
                    SizedBox(width: 48),
                    Column(
                      children: [
                        Text('Perkalian'),
                        Checkbox(
                          value: controller.isMultiplication,
                          onChanged: (value) => controller.handleChangeCheckbox(value, 'multiplication'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Nomor Pertama'),
                          TextField(
                            controller: controller.firstNumberController,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 48),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Nomor Kedua'),
                          TextField(
                            controller: controller.secondNumberController,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              Text('Hasil: ${controller.result}'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.handleCalculate,
                child: Text('Hitung'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.handleCalculate,
                child: Text('Data'),
              ),
            ],
          ),
        );
      },
    );
  }
}
