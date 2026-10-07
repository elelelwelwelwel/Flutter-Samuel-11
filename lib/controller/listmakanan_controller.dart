import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Soto Ayam',
      hargaMakanan: '10.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLR4MpKLuCJgG5Ddy5mJdSpuNpdQcMkDYV0MKh8jJxUg&s=10',
      deskripsiMakanan: 'Soto ayam dengan kuah yang lezat dan bumbu yang harum',
      rating: 4,
      reviewMakanan: 'Enak enak mantap ',
    ),
    MakananModel(
      namaMakanan: 'Lentog',
      hargaMakanan: '80.000',
      gambarMakanan: 'https://tourism.kuduskab.go.id/wp-content/uploads/2024/12/lentog-tanjung-3-1024x683.jpg',
      deskripsiMakanan: 'Lentog adalah makanan tradisional yang terbuat dari daging sapi dan bumbu rempah-rempah',
      rating: 4,
      reviewMakanan: 'Sedap',
    ),
    MakananModel(
      namaMakanan: 'Pindang Kerbau',
      hargaMakanan: '20.000',
      gambarMakanan: 'https://tourism.kuduskab.go.id/wp-content/uploads/2024/10/DSC05157-e1731813463632.jpg',
      deskripsiMakanan:
          'Pindang kerbau dengan rasa asam pedas yang menggugah selera',
      rating: 4,
      reviewMakanan: 'Kenyang',
    ),
    MakananModel(
      namaMakanan: 'Jenang',
      hargaMakanan: '15.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpsxKDN7GwMh8rykAtImSS4eW-29R09Qq5pWbuEYnpiw&s=10',
      deskripsiMakanan: 'Jenang adalah minuman tradisional yang terbuat dari gula merah dan santan',
      rating: 4,
      reviewMakanan: 'Manis enak',
    ),
    MakananModel(
      namaMakanan: 'Bolang Baling',
      hargaMakanan: '5.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQqGJ5sJnM7nIuDoqjOp6aImVCwUznxpk_0KVGRWRTgg&s=10',
      deskripsiMakanan: 'Bolang baling adalah jajanan tradisional yang terbuat dari tepung beras dan gula',
      rating: 4,
      reviewMakanan: 'Ini dia jajanan enak bgt bos',
    ),
  ];
}
