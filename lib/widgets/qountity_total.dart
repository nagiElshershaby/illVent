import 'package:flutter/material.dart';

import '../dummy_data/promo_codes.dart';

class QountityTotal extends StatefulWidget {
  QountityTotal(
      {Key? key,
      required this.qountity,
      required this.price,
      required this.type,
      required this.total,
      required this.color})
      : super(key: key);
  var qountity;
  var total;
  var type;
  var price;
  Color color;
  double totalAfterPromo = 0;

  @override
  State<QountityTotal> createState() => _QountityTotalState();
}

class _QountityTotalState extends State<QountityTotal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          widget.type=='products'?Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, left: 15),
                    child: const Text(
                      'Qty:',
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: widget.color, width: 3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.qountity > 1) {
                                widget.qountity -= 1;
                                widget.total = widget.qountity * widget.price;
                                print(widget.total);
                              }
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: widget.color,
                          ),
                        ),
                        Text(
                          '${widget.qountity}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              widget.qountity += 1;
                              widget.total = widget.qountity * widget.price;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: widget.color,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, left: 10),
                    child: const Text(
                      'total:',
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 3, color: widget.color),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${widget.total}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ):Container(),
          Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: const Text(
                    'Add Promo Code : ',
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onSubmitted: (String value) {
                      setState(() {
                        for (int i = 0; i < promoCodes.length; i++) {
                          if (value == promoCodes[i]) {
                            widget.totalAfterPromo = widget.total -
                                (widget.total * promoCodesValues[i]);
                            print(widget.totalAfterPromo);
                            break;
                          }
                        }
                      });
                    },
                  ),
                ),
                if(widget.totalAfterPromo!= widget.total && widget.totalAfterPromo!= 0)Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'total after promo :',
                        style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width *0.3,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 3, color: widget.color),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '${widget.totalAfterPromo}',
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
