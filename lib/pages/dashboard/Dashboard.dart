import 'package:fitness/pages/dashboard/stat_cards.dart';
import 'package:flutter/material.dart';

class Dashboard_tabs extends StatelessWidget {
  const Dashboard_tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          toolbarHeight: 60,
        ),
        body: Column(
          children: [
            // Custom TabBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F2F2),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  labelColor: const Color(0xFFB3B1A9),
                  unselectedLabelColor: const Color(0xFFB3B1A9),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  tabs: const [
                    Tab(text: 'STATS'),
                    Tab(text: 'HISTORY'),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, thickness: 1, color: Color(0xFFF3F2F2)),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Stats Tab
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'MY STATS',
                            style: TextStyle(
                              color: Color(0xFFB3B1A9),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 16),
                          GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              StatCard(title: 'ACTIVE\nSTREAK'),
                              StatCard(title: 'LONGEST\nSTREAK'),
                              StatCard(title: 'DAYS\nCOMPLETED'),
                              StatCard(title: 'LAST\nSTRETCH'),
                            ],
                          ),
                          const SizedBox(height: 32),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: null,
                              icon: const Icon(Icons.lock_outline, color: Colors.white),
                              label: const Text(
                                'Restore Streak',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF3F2F2),
                                disabledBackgroundColor:  Colors.black,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // History Tab
                  const Center(child: Text('History Content Coming Soon')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

