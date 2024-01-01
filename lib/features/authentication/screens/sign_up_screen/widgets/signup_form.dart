import 'package:e_commerce/features/authentication/screens/sign_up_screen/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/sign_up_screen/widgets/terms_and_condition.dart';
import 'package:e_commerce/utils/constant/sizes.dart';
import 'package:e_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObsecure = true;

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSize.spaceBtwInoutFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),

          // username
          TextFormField(
            validator: MultiValidator([
              RequiredValidator(errorText: 'UserName fill is required'),
            ]),
            decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_tick),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),

          // Email
          TextFormField(
            validator: MultiValidator([
              EmailValidator(errorText: 'This Email is not valid '),
              RequiredValidator(errorText: 'Email id fill is required'),
            ]),
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          // phone number
          TextFormField(
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: TSize.spaceBtwItems,
          ),

          //password
          TextFormField(
            obscureText: isObsecure,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                icon: const Icon(Iconsax.eye_slash),
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
              ),
            ),
          ),

          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          // Terms and condition checkbox

          const TermsAndConditionText(),

          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          // signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  Get.to(() => const VerifyEmail());
                }
              },
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
