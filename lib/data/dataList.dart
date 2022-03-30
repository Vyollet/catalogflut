class Data {
  String label;
  String imageUrl;
  String ResUrl;

  List<Value> datas;

  Data(this.label, this.imageUrl, this.ResUrl, this.datas);

  static List<Data> samples = [
    Data(
      'Google',
      'https://cdn-icons-png.flaticon.com/512/2875/2875404.png',
      'https://Google.com',
      [
        Value(
          1,
          'box',
          'Spaghetti',
        ),
      ],
    ),
    Data(
      'OpenVPN',
      'https://raw.githubusercontent.com/dperson/openvpn-client/master/logo.png',
      'https://OpenVPN.org',
      [
        Value(
          1,
          'test',
          'test',
        ),
      ],
    ),
    Data(
      'BitBucket',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Bitbucket-blue-logomark-only.svg/1200px-Bitbucket-blue-logomark-only.svg.png',
      'https://BitBucket.org',
      [
        Value(
          1,
          'test',
          'test',
        ),
      ],
    ),
    Data(
      'Gitlab',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/GitLab_logo.svg/1200px-GitLab_logo.svg.png',
      'https://Gitlab.com',
      [
        Value(
          1,
          'test',
          'test',
        ),
      ],
    ),
    Data(
      'Github',
      'https://cdn-icons-png.flaticon.com/512/25/25231.png',
      'https://github.com',
      [
        Value(
          1,
          'test',
          'test',
        ),
      ],
    ),
  ];
}

class Value {
  double quantity;
  String measure;
  String name;

  Value(
      this.quantity,
      this.measure,
      this.name,
      );
}
