class Contact {
  final String avtUrl;
  final String name;
  final String phone;

  Contact({this.avtUrl, this.name, this.phone});
}

List<Contact> contacts = [
  Contact(
      avtUrl: 'assets/images/contact_avt1.png',
      name: 'Arla Waing',
      phone: '+61 854 97136521'),
  Contact(
      avtUrl: 'assets/images/contact_avt2.png',
      name: 'Alexander',
      phone: '+61 822 63698795'),
  Contact(
      avtUrl: 'assets/images/contact_avt3.png',
      name: 'Carza Heldan',
      phone: '+61 857 15993422'),
  Contact(
      avtUrl: 'assets/images/contact_avt4.png',
      name: 'Steven Swap',
      phone: '+61 857 15993422')
];
