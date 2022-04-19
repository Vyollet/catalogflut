class Store {
  String itemName;
  double itemPrice;
  String itemImage;

  Store.items({
    this.itemImage = "",
    this.itemName = "",
    this.itemPrice = 0.0,
  });
}

List<Store> Items = [
  Store.items(
    itemName: "BitBucket",
    itemImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Bitbucket-blue-logomark-only.svg/1200px-Bitbucket-blue-logomark-only.svg.png",
  ),
  Store.items(
    itemName: "Gitlab",
    itemImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/GitLab_logo.svg/1200px-GitLab_logo.svg.png",
  ),
  Store.items(
    itemName: "GitHub",
    itemImage: "https://cdn-icons-png.flaticon.com/512/25/25231.png",
  ),
  Store.items(
    itemName: "IPFS",
    itemImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/IPFS_logo.png/1024px-IPFS_logo.png",
  ),
  Store.items(
    itemName: "Pastebin",
    itemImage:
        "https://api.nuget.org/v3-flatcontainer/pastebin.api.csharp/1.0.12/icon",
  ),
];

List<Store> Itemstest = [
  Store.items(
    itemName: "Telegram",
    itemImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Telegram_2019_Logo.svg/1200px-Telegram_2019_Logo.svg.png",
  ),
  Store.items(
    itemName: "Metamask",
    itemImage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/MetaMask_Fox.svg/800px-MetaMask_Fox.svg.png",
  ),
  Store.items(
    itemName: "Google",
    itemImage: "https://cdn-icons-png.flaticon.com/512/2875/2875404.png",
  ),
  Store.items(
    itemName: "OpenVPN",
    itemImage:
        "https://raw.githubusercontent.com/dperson/openvpn-client/master/logo.png",
  ),
];
