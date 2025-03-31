import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 76,
                    height: 71,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/331d/9485/5bd45806e5a69df3769da1e2e72cdba0?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=HMELj~VaZe3x9C6isY3q0B-c1HDAnQGqe7OWgHl-8DoRkcDUrcpWRibWvOalrNTekzds~OhJxN5JE94TgWNWN4H0JLtaWxGoiUOMchj~KDld2vuCEw~zA7ZZQk1wbvYFK4ZwF8kwgNHY5~uZhARfuwVer4y3AHs~slplNdgKxlCjOzH~pSIcZZtTHAeUcBM0mgxSn08ZKFlIn6exKs~-f5o7-TndOHFaprIPLpt3Zy40eNImEsPmoo2G9vFnz~HgoFqUKviZPC6PZuBNRLtst~k6GyyxKld3mwCut01doMk0UGQGgUdq6MUwa3U8stggbVYJY5OsHD0NXBUZiVPFsg__'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 300,
                    height: 72,
                    child: Text("DEVEN MESTRY is with MAHESH"),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),

          //Text post
          Align(
            alignment: Alignment.centerLeft,
            child: Text("OLS IS GOLD>>>>>!!!!!!!"),
          ),
          //image
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/018e/3843/428c2f695f0df13bbdae6f97dd07623b?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=p7U3RCoo2FWFda3AyW8H6gLD5w2DvusAC3nONH4y2szf68nrSDNiITqhG9D7-dW6cL3u3NONj5QJSOfIozw50V-r1SYZpcMozbBHG~JLGjCrvy8hnIhv072FK2ajsoH6COOyi-hf5GWaTA3XSpLyJQlCTSKt3apSYuhIfSv~jzHzidNqk4~3yb-h4udFTiTRN5FypTfaHtAp5EPxuhCnRnhynnR0~gD4-F3aKqCeZhmaDgWF5S3~AGQ6xPWgQJ4XWKrTAFBCBjTHpec6M4qWNLeSJSAZOgFjLiPF49E~u4Olc~mQBCJ9gBdRZTunQsL~J28ZP9hTx6S1gTLTVac5Hg__'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //reaction buttons
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.messenger),
              ),
            ],
          )
        ],
      ),
    );
  }
}