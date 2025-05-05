import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TransferAmountPage> {
  final TextEditingController _amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    _amountController.addListener(() {
      final text = _amountController.text;

      _amountController.value = _amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: ' ',
        ).format(
          int.tryParse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  void addamount(String number) {
    if (_amountController.text == '0') {
      _amountController.text = '';
    }
    setState(() {
      _amountController.text = _amountController.text + number;
    });
  }

  void deleteAmount() {
    if (_amountController.text.isNotEmpty) {
      setState(() {
        _amountController.text = _amountController.text
            .substring(0, _amountController.text.length - 1);
        if (_amountController.text == '') {
          _amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 58,
        ),
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: _amountController,
                obscureText: false,
                enabled: false,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp.',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputBotton(
                title: '1',
                onTap: () {
                  addamount('1');
                },
              ),
              CustomInputBotton(
                title: '2',
                onTap: () {
                  addamount('2');
                },
              ),
              CustomInputBotton(
                title: '3',
                onTap: () {
                  addamount('3');
                },
              ),
              CustomInputBotton(
                title: '4',
                onTap: () {
                  addamount('4');
                },
              ),
              CustomInputBotton(
                title: '5',
                onTap: () {
                  addamount('5');
                },
              ),
              CustomInputBotton(
                title: '6',
                onTap: () {
                  addamount('6');
                },
              ),
              CustomInputBotton(
                title: '7',
                onTap: () {
                  addamount('7');
                },
              ),
              CustomInputBotton(
                title: '8',
                onTap: () {
                  addamount('8');
                },
              ),
              CustomInputBotton(
                title: '9',
                onTap: () {
                  addamount('9');
                },
              ),
              const SizedBox(
                height: 60,
                width: 60,
              ),
              CustomInputBotton(
                title: '0',
                onTap: () {
                  addamount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: ' Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/transfer-success', (route) => false);
              }
            },
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextButton(
            title: 'Terms & Conditions',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
