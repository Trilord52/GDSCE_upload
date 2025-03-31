import 'package:flutter/material.dart';
import 'package:task_7/post.dart';
import 'package:task_7/secondApp.dart';
import 'package:task_7/thirdapp.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home_outlined),
              Icon(Icons.people_outline),
              Icon(Icons.person_outline),
              Icon(Icons.video_call_outlined),
              Icon(Icons.notification_add_outlined),
              Icon(Icons.menu_outlined),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.messenger,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first row
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 54,
                  width: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/d271/9b90/e4c11a2e7ebc227a1e71dfcbfdd8d758?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xg5Uk-VaRKfK2G4tY9dY5jq2Ex0GZ6BRxRKeuSsH0mYaN-ZVqh0degQaWUX6xkLiWgV8wflZa8500nYNT26pzTz16MQsbilFh9HGxdTjaX~0DGzmWlkc2t6D5-wLX67wOtL3W9fW1DfoW2E17DkkcuYT20RY6fHfioGVoNyly8nAeJ4lsGLHKWa63vqjyZX45bfiEoUkAHg7900YOSvnIkknvwhjxnef0~vbeeRGPV4S~ejkRKE1FH1-ViYAPYfF8LOoIXhf4b6zFxobJwqWX4h10DGSgNcI3LzpimWKAXQgpW1NjvWyAUEvRBy~k3Emqc6P0wZC9Iovd8ghlWZk8A__'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What's in your mind?",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: Icon(Icons.photo_library),
                    ),
                  ),
                ),
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[200]),
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Secondrow(
                  name: "Reals",
                  icon: Icon(Icons.movie),
                  color: Colors.yellow[200],
                ),
                Secondrow(
                  name: "Room",
                  icon: Icon(Icons.video_call),
                  color: Colors.green[200],
                ),
                Secondrow(
                  name: "Group",
                  icon: Icon(Icons.group),
                  color: Colors.red[200],
                ),
                Secondrow(
                  name: "Live",
                  icon: Icon(Icons.video_camera_back_rounded),
                  color: Colors.blue[200],
                ),
              ],
            ),

            //third row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 140,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/d271/9b90/e4c11a2e7ebc227a1e71dfcbfdd8d758?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xg5Uk-VaRKfK2G4tY9dY5jq2Ex0GZ6BRxRKeuSsH0mYaN-ZVqh0degQaWUX6xkLiWgV8wflZa8500nYNT26pzTz16MQsbilFh9HGxdTjaX~0DGzmWlkc2t6D5-wLX67wOtL3W9fW1DfoW2E17DkkcuYT20RY6fHfioGVoNyly8nAeJ4lsGLHKWa63vqjyZX45bfiEoUkAHg7900YOSvnIkknvwhjxnef0~vbeeRGPV4S~ejkRKE1FH1-ViYAPYfF8LOoIXhf4b6zFxobJwqWX4h10DGSgNcI3LzpimWKAXQgpW1NjvWyAUEvRBy~k3Emqc6P0wZC9Iovd8ghlWZk8A__'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          bottom: -10,
                          right: 28,
                          left: 30,
                          child: IconButton(
                            iconSize: 17,
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.blue),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Thirdrow(
                      image:
                          'https://s3-alpha-sig.figma.com/img/4431/6037/bea761cbd2d4483c5dec5f8359ede007?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pvQ8mcuAxg1dzFwxEPqw1tkKee1CT1d8ULUF~WqJdG7SRuByNN4rhmchAqdG320g7Bprl5Z1VuXNMJld10WZANcbWFkL3EGdmv~-yDM51c8LafI5HBt0MOett6ENo1ZL2TjyTn5GhbptNKWaMePjKbh9wRR7SEynNCHZ86rnGcDSbc8ELgamrvB~cMJAhPsRx2ZZznqvgYcHx88xIgmtbdiMAGY2wTtDGw0wYlK8YjwpaFN~QRDbx093qxptrqY-NJjsCXfS6BLlG~8NRp8BSXW8uPXKY4i4Sc2YTxoap5adoQciUD6Eoyihgx2DOhirIXMJYJOSFWx15MsFMWvX7Q__',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Thirdrow(
                        image:
                            'https://s3-alpha-sig.figma.com/img/48b7/f4e7/3ece1193fd2ffdea3cbef380808d50a7?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=uAOWa0lRpb3RexT17o4Ecbb8Swxw7siTinWbD3wdDgGBADyAJp8477lKIGJs0OkD9GvY35q4yyNv4oN4PVkBLM46Kf0cSSM02qt735kp6JJbGUFv2PMtmPF3cUAuTVcSYYS6~utKHhmOz5lARwsHIeUZEJ2gyC1qNWuJfG7~swdCKYdNf2lSdc41ZL-oXOxxSABx5JIOVtkzJA8hQt6oATK-asGbUWrCd5BOY2QtPzkco9WFmuBWiGPbBdMvCxlw84EJ-6GAVbVkqiDUhnybOOQ-ZXYr1p7tbuw5h4l91A8nNkZbt~1q5-gRCvEKf36kuVW3HpULyCWBkRm9m5xz8Q__'),
                    SizedBox(
                      width: 10,
                    ),
                    Thirdrow(
                      image:
                          'https://s3-alpha-sig.figma.com/img/9f74/aa50/f62ed23c109e71ad71c763e9d5092f4b?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pnIguBMZFozwdOR6wL8S8sA9gUL-qZVB--AbMj2xzgy-7xI~Jl3C~MXPjYKQAuEg8e2ogrhY6O4DTKdbR98p9Ez6I~TyY56-eYSQEtIOTG5maHjcFe63qPDNnIC28squzO5y5APwmjDx9GTokGi00Tcibt735j~1ycCfPq21uypqizrjMqrKDdbwTJKkPkY6GgoXWxO0h5CRgahWJ9AeYFD30gAmIHlbo~sZnO1uyv-Jmld-QCSGsxHHP1Sc5syV10IpoGltNcI~a4PxavR0ft0Yp3OtIZBlWQMWRp0GI63GLIBDv5NU2a2TINTLWT0h6cxD0tbMEMps~49S~gMhSg__',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Thirdrow(
                      image:
                          'https://s3-alpha-sig.figma.com/img/4431/6037/bea761cbd2d4483c5dec5f8359ede007?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pvQ8mcuAxg1dzFwxEPqw1tkKee1CT1d8ULUF~WqJdG7SRuByNN4rhmchAqdG320g7Bprl5Z1VuXNMJld10WZANcbWFkL3EGdmv~-yDM51c8LafI5HBt0MOett6ENo1ZL2TjyTn5GhbptNKWaMePjKbh9wRR7SEynNCHZ86rnGcDSbc8ELgamrvB~cMJAhPsRx2ZZznqvgYcHx88xIgmtbdiMAGY2wTtDGw0wYlK8YjwpaFN~QRDbx093qxptrqY-NJjsCXfS6BLlG~8NRp8BSXW8uPXKY4i4Sc2YTxoap5adoQciUD6Eoyihgx2DOhirIXMJYJOSFWx15MsFMWvX7Q__',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Thirdrow(
                      image:
                          'https://s3-alpha-sig.figma.com/img/9f74/aa50/f62ed23c109e71ad71c763e9d5092f4b?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pnIguBMZFozwdOR6wL8S8sA9gUL-qZVB--AbMj2xzgy-7xI~Jl3C~MXPjYKQAuEg8e2ogrhY6O4DTKdbR98p9Ez6I~TyY56-eYSQEtIOTG5maHjcFe63qPDNnIC28squzO5y5APwmjDx9GTokGi00Tcibt735j~1ycCfPq21uypqizrjMqrKDdbwTJKkPkY6GgoXWxO0h5CRgahWJ9AeYFD30gAmIHlbo~sZnO1uyv-Jmld-QCSGsxHHP1Sc5syV10IpoGltNcI~a4PxavR0ft0Yp3OtIZBlWQMWRp0GI63GLIBDv5NU2a2TINTLWT0h6cxD0tbMEMps~49S~gMhSg__',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            //post container
            Post(),
          ],
        ),
      ),
    );
  }
}
