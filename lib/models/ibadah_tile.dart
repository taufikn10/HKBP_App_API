import 'package:meta/meta.dart';

class Ibadah {
  final String? jadwal;
  final String? jam;
  final List<Ibadah> rincian;

  const Ibadah({
    @required this.jadwal,
    @required this.jam,
    this.rincian = const [],
  });
}
