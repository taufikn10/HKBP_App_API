import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/belanja/pesanan/components/pesanan/pesanan.dart';
import 'package:hkbp_app/screens/menu/belanja/pesanan/components/riwayat/riwayat.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              size: 20, color: darkColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Transaksi',
          style: txtSB16d,
        ),
        bottom: TabBar(
          indicatorColor: blueColor,
          controller: _tabController,
          tabs: [
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Pesanan",
                  style: _tabController.index == 0 ? txtM12b : txtM12d,
                ),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Riwayat",
                  style: _tabController.index == 1 ? txtM12b : txtM12d,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Pesanan(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Riwayat(),
          ),
        ],
      ),
    );
  }
}
