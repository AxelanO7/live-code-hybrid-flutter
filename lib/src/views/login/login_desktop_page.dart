import 'package:flutter_svg/svg.dart';
import 'package:live_code/src/core/base_import.dart';

import 'login_controller.dart';

class LoginDesktopPage extends StatelessWidget {
  const LoginDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => SingleChildScrollView(
        child: controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: Get.height,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Live Code',
                            style: TypographyStyle.heading1Bold.copyWith(
                              color: ColorStyle.onPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 60),
                          SvgPicture.asset(
                            'assets/images/illustrations/welcome.svg',
                            width: Get.width / 4,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryContainerColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TypographyStyle.heading2Bold.copyWith(
                                color: ColorStyle.onPrimaryContainerColor,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              constraints: BoxConstraints(
                                maxWidth: 480,
                              ),
                              child: TextField(
                                  controller: controller.usernameController,
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    hintStyle: TextStyle(color: ColorStyle.onPrimaryContainerColor),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  style: TypographyStyle.body1Reguler.copyWith(
                                    color: ColorStyle.onPrimaryContainerColor,
                                  )),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              constraints: BoxConstraints(
                                maxWidth: 480,
                              ),
                              child: TextField(
                                controller: controller.passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: ColorStyle.onPrimaryContainerColor),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                style: TypographyStyle.body1Reguler.copyWith(
                                  color: ColorStyle.onPrimaryContainerColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            CustomButton(
                              width: Get.width / 4,
                              color: ColorStyle.onPrimaryContainerColor,
                              onPressed: controller.handleLogin,
                              child: Text(
                                'Masuk',
                                style: TypographyStyle.body1Bold.copyWith(
                                  color: ColorStyle.primaryContainerColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
