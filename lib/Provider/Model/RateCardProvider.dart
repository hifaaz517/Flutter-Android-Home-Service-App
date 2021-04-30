import 'package:flutter/cupertino.dart';

class XXX {
  final String particulars;
  final String unit;
  final String price;

  XXX(
    this.particulars,
    this.unit,
    this.price,
  );
}

class RateCardProvider with ChangeNotifier {
  final List<Map<dynamic, dynamic>> listOfColumns = [
    {
      "Name": "AAAAAA",
      "Number": "1",
      "State": "Yes",
    },
    {
      "Name": "BBBBBB",
      "Number": "2",
      "State": "no",
    },
    {
      "Name": "CCCCCC",
      "Number": "3",
      "State": "Yes",
    },
    {
      1: ['']
    }
  ];

  List list = [
    {
      1: [
        [
          "sdfasdfasds adasdasdssad",
          "sdfasdf12 1334sad",
          "  00000da     ",
        ],
        [
          "sdfasdfasds adasdasdssad",
          "sdfasdf12 1334sad",
          "  00000da     ",
        ],
        [
          "sdfasdfasds adasdasdssad",
          "sdfasdf12 1334sad",
          "  00000da     ",
        ],
        [
          "sdfasdfasds adasdasdssad",
          "sdfasdf12 1334sad",
          "  00000da     ",
        ],
      ],
    }
  ];

  var listtt = [
    {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"}
  ];

  returnTable(int serviceID) {
    switch (serviceID) {
      case 1:
        return [
          {
            "Particulars": "Window AC Service123456",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 2:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 3:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 4:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 5:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 6:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 7:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 8:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 9:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 10:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      case 11:
        return [
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
          {
            "Particulars": "Window AC Service",
            "Unit": "1",
            "Charges": " ₹ 450",
          },
        ];
        break;
      default:
    }
  }
}
