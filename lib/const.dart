import 'package:connected_badarganj/views/common_list_page.dart';
import 'package:flutter/material.dart';

import 'views/home_page.dart';

// scaffold color for light mode
Color lightScaffoldColor = Colors.grey.shade200;

List allPages = const [HomePage(), CommonListPage()];
int currentPageIndex = 0;

List<String> dashIcons = [
  'icon_administration.png',
  'icon_leader.png',
  'icon_office.png',
  'icon_education.png',
  'icon_emergency.png',
  'icon_journalist.png',
  'icon_municipal.png',
  'icon_union.png',
  'icon_rail.png',
  'icon_bus.png',
  'icon_doctors.png',
  'icon_blood_donor.png',
  'icon_leadership.png',
  'icon_travel.png',
];

List<String> dashTitles = [
  'উপজেলা প্রশাসন',
  'জনপ্রতিনিধি',
  'সরকারি অফিস্‌',
  'শিক্ষা প্রতিষ্ঠান',
  'জরুরী সেবা',
  'সাংবাদিক',
  'বদরগঞ্জ পৌরসভা',
  'ইউনিয়ন পরিষদ',
  'রেল যোগাযোগ',
  'বাস যোগাযোগ',
  'ডাক্তার চেম্বার',
  'ব্লাড ডোনারস',
  'উল্লেখযোগ্য ব্যক্তিত্ব',
  'দর্শনীয় স্থান'
];
