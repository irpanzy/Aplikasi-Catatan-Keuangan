import 'package:aplikasi_catatan_keuangan/base/resource/style/colorStyles.dart';
import 'package:aplikasi_catatan_keuangan/base/resource/style/textStyles.dart';
import 'package:aplikasi_catatan_keuangan/base/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  bool isIncomeSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
            // Title (text)
            Text(
              'Statistik',
              style: TypographyStyle.h4,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      side: const BorderSide(color: Colors.black),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8.0))
                  .copyWith(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              child: const Text(
                'May 2024 >',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isIncomeSelected = true;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Pemasukan',
                      style: TypographyStyle.h5,
                    ),
                    if (isIncomeSelected)
                      Container(
                        height: 2,
                        width: 120,
                        color: Colors.black,
                      )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isIncomeSelected = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Pengeluaran',
                      style: TypographyStyle.h5,
                    ),
                    if (!isIncomeSelected)
                      Container(
                        height: 2,
                        width: 120,
                        color: Colors.black,
                      )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 20.0,
            percent: 0.5,
            center: const Text(
              '50%',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            progressColor: isIncomeSelected
                ? ColorStyle.primaryColor50
                : ColorStyle.secondaryColor50,
            backgroundColor: Colors.black,
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              children: isIncomeSelected
                  ? _buildIncomeCategoryList()
                  : _buildExpenseCategoryList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  List<Widget> _buildIncomeCategoryList() {
    return [
      CategoryCard(
        title: 'Gajihan',
        percentage: 52,
        amount: '200.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
      CategoryCard(
        title: 'Bonus THR',
        percentage: 25,
        amount: '120.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
      CategoryCard(
        title: 'Freelance',
        percentage: 12,
        amount: '120.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
      CategoryCard(
        title: 'Olshop',
        percentage: 5,
        amount: '120.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
    ];
  }

  List<Widget> _buildExpenseCategoryList() {
    return [
      CategoryCard(
        title: 'Makanan',
        percentage: 40,
        amount: '920.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
      CategoryCard(
        title: 'Fashion',
        percentage: 40,
        amount: '220.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
      CategoryCard(
        title: 'Motor',
        percentage: 20,
        amount: '120.000 IDR',
        isIncomeSelected: isIncomeSelected,
      ),
    ];
  }
}
