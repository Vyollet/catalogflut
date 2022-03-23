
class Store{
  String itemName;
  double itemPrice;
  String itemImage;
  Store.items({
    this.itemImage = "",
    this.itemName = "",
    this.itemPrice = 0.0,
  });
}

List<Store> storeItems =[

  Store.items(
    itemName: "Google",
    itemImage: "https://cdn-icons-png.flaticon.com/512/2875/2875404.png",
  ),
  Store.items(
    itemName: "OpenVPN",
    itemImage: "https://raw.githubusercontent.com/dperson/openvpn-client/master/logo.png",
  ),
];