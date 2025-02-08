// data yang tidak akan berubah karna konstan
class AppConstants {
  static const appName = 'Di Laundry';

  static const _host = 'http://192.168.100.110'; // Backend

  //// baseURL = 'http://192.168.100.110/api'  ```
  static const baseURL = '$_host/api';

  //// baseURL = 'http://192.168.100.110/storage'  ```
  static const baseImageUrl = '$_host/storage';

  static const laundryStatusCategory = [
    'All',
    'Pickup',
    'Queue',
    'Process',
    'Washing',
    'Oried',
    'Ironed',
    'Done',
    'Delivery',
  ];
}
