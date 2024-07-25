import 'package:flutter_svg/svg.dart';
import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/login/login_controller.dart';

class LoginMobilePage extends StatelessWidget {
  const LoginMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => SingleChildScrollView(
        child: controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
              child: SizedBox(
                  width: Get.width,
                  height: Get.height,
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
                      const SizedBox(height: 60),
                      Text(
                        'Login',
                        style: TypographyStyle.heading2Bold.copyWith(
                          color: ColorStyle.onPrimaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: controller.usernameController,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TypographyStyle.body1Reguler.copyWith(
                                  color: ColorStyle.onPrimaryColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorStyle.onPrimaryColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorStyle.onPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: controller.passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TypographyStyle.body1Reguler.copyWith(
                                  color: ColorStyle.onPrimaryColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorStyle.onPrimaryColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorStyle.onPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            CustomButton(
                              width: Get.width / 3,
                              color: ColorStyle.onPrimaryColor,
                              onPressed: controller.handleLogin,
                              child: Text(
                                'Login',
                                style: TypographyStyle.body1Bold.copyWith(
                                  color: ColorStyle.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
      ),
    );
  }
}
