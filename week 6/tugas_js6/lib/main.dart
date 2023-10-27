import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class VerticalImage extends StatelessWidget {
  final String gambar;

  const VerticalImage({
    super.key,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            gambar,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 70,
      height: 300,
    );
  }
}

class ContainerImage extends StatelessWidget {
  final String nama;
  final String gambar;

  const ContainerImage({
    super.key,
    required this.nama,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.red,
        height: 200,
        width: 370,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      gambar,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                nama,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Jobsheet 6',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bola Dunia'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Berita Terbaru'),
                    Text('Pertandingan Hari Ini'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  VerticalImage(
                      gambar:
                          'https://assets.pikiran-rakyat.com/crop/0x0:1080x758/x/photo/2022/02/16/3654850085.jpg'),
                  VerticalImage(
                    gambar:
                        'https://static.republika.co.id/uploads/images/inpicture_slide/eric-cantona-saat-masih-berkostum-manchester-united-_130325172019-613.jpg',
                  ),
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/3/31/Carlos_Tevez_with_Argentina_November_2014_%28cropped%29.jpg',
                  ),
                  VerticalImage(
                    gambar:
                        'data:image/jpeg;base64,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',
                  ),
                  VerticalImage(
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Ruud_van_Nistelrooy_2017.jpg/800px-Ruud_van_Nistelrooy_2017.jpg',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Lima Pesepak Bola yang terkenal dermawan'),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ContainerImage(
                    nama: 'Del Piero',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Alessandro_Del_Piero%2C_New_York_NY_2015.jpg/330px-Alessandro_Del_Piero%2C_New_York_NY_2015.jpg',
                  ),
                  ContainerImage(
                    nama: 'Éric Cantona',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Eric_Cantona_Cannes_2009.jpg/300px-Eric_Cantona_Cannes_2009.jpg',
                  ),
                  ContainerImage(
                    nama: 'Carlos Tévez',
                    gambar:
                        'data:image/jpeg;base64,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',
                  ),
                  ContainerImage(
                    nama: 'Pablo Aimar',
                    gambar:
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFRUVFRYVFRUVFRAVFRUVFRUWFhUVFRUYHSggGB0nGxcVITEhJSkrLi4uFx80OTQtOCgtLisBCgoKDg0OGhAQGi0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIANoA5wMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EAD8QAAEEAAQDBQYEBAUDBQAAAAEAAgMRBBIhMQVBUQYTImFxMoGRobHRQlLB8BQjYnJDgrLh8SQzwhU0Y3OD/8QAGgEAAgMBAQAAAAAAAAAAAAAAAgMBBAUABv/EADQRAAEDAgMFBwQABwEAAAAAAAEAAhEDIQQSMSJBUWFxBYGRocHR8BMyseFCUmKSwtLxBv/aAAwDAQACEQMRAD8A1h2JjFGhMKEe1yz3FOlcSMQcsaOeVC4aIWCSja4pe6NCzRphKUJIVfptTAUveKQ8kqOlYl00afFkJN1sTIqCVAiJEwxkLgiaUeHKGYLYeo5ZV0Jhel+KNJVPIms7rQOIha9rvCWPbZ0vK4DcevMJbjCW524JeHqaMreGiFZqzdWnTf8Ae6LnwQBDmXkcLF7tI9pp9Dz9FM3hVSuYwio41HDEUdCxGElxUPcoiHCqdkaLiiRIQZULIFPHAFMI1OxiAlOatMgC3lpTtYuHtQFPa5ZG9TF6EUgXBMmVK1ykLUOCpRImBLcFFJGsUpcsUpZQOHxCLE6rOExaZR4lZ7qa6U175cvmS3+JWGdcxkJjQiZHodxXDpFzatiyaGlSEIZ0WqLaFt0aYLpbrIJsOqkyUpg1dEIoQSlU7qQrpkVjhWyhwmDc/U3Xn9dUDjFyuDyUdFj2MZq0k7n2cobVlY2driCRlv2QTQPMAu/DvsEo4ji+5NMIOtE9f0UU3ERLTminN/Cao+bXHn5eXkqpbJlFniybunga7xMLXOHs0C02dtwjpHtyZmhrTYqgOdDY2FTIJH3mI8qJ5D15I5vG3NOgBGmlDWl2Q8V2ccFZhEHFoIF7gtFb9R60uP4FzRdWPp6hKncbGUy7uAOgOnVtAbVpfopeCPe8B7HlsjrLjmc4Udaq6rQrhUc0IXUwUyjYimBd2XCy2iKB6X5HmNFy0qw1+YSklmUwVOxila1cMcsL1ykIkUopFjCpMq5FKBkW2uRDoLWDDrg1Na8KBbBRAiWjEjhHmBWgFi6LaWIoQZVQMLIQmDMSlkQRTEotlKARomU0TrQkLUZGEl5DVbpMm6IaFI1i5jaiWNVR1YhXW0wpIWKR8a3Cpnq1RqyEirTugJGoLF4wM0zAO5A8rvU/AphOa1VQ4rjWyOPQ8idDWxI/T086sPfs2VRzIKOn44xuhDSaskbAE0Ovnr5JbPx9zvC01fP7O56pNjwxvhGu2u218kNmoZWj9lJyzcpRcRYIuXGB92dtrUDpczrzEVpWtG90IIHOOgPwWGB3Q2jmEMEqfEuIIt24vTXmQogTyK3JhnhocRpWl9N0PG0krgZUEQmEchBBb4TzrUKw8Jx5br5ctNOpH2VYBokE3yv9QioJeV2Btyvp70L2go2OIXp3B3teCQdD1NKV7G2aI872A6k/JVLgfEiGMF6kgUbo0Deo6KwwzhwBsCvEQb1O40VXMWFWMocJU7jWxBHIjULGm1ziHjKK0pbw71cpnMFVe2CmEDUXHEhsOUdEVYDQlSumwLowBSsUtJgAXAoCSJQOYjpmoSRCQmtcg5isWp3LECsjRUaOJTtjU7Yl1lVcORFglcsRMIULGouFqr1CrLAiYWooNUcTVOFn1ZlXKYWgaW3PXLyoXvTKL4UVGSouINzMc26zNIv1FLzvGT5XubVEGuoFAA1Xna9BnfYrn5Lz3joHeuyke7YHp++q0WmVl4oQAgZpM2hFnqN/JOOEcMc7LWpN5hWjRy16/dAcLgzytA+f1Xo3CsCGgVroLPouqPiwSKbJuhsDwRlAFuo56I1nZ9l2N/7fumzJGhTsLDqCqZPNWwqtj+zRc0tzDqNNj9lS+J8GliNFvw2P3Xr0rQNyk/EIw4VuibUc1CWNcvIzGenxXMcmU2rZxThI1cBR5+aqOJZRVxj8yqvplqMZOLsGvQFW3s9i8+Vjn202ASBqavK6uWm//KpUAHOwOo2HqOac8Ace+jb/AFg6bGjv8ChqNkLqboKvGLNeWy5w8i1ix/woYijp6BG9qe4WRM4HJBhZU4wr1Za5Vy1NI1NmQbJFhmRyghTSlL5yiHSoSfVcSjbZAYh6xdSsWkCsA2SV8dKMMR00aiyKlEK4BKiaxTR6LVLZUEJgCJjepg5DRKW1WdTTQ6F29yFlepHuQsr0Laak1EFxjiRiiOURu5DM5oIJ05kfbVUGXEa6DL5V8d9ld8Zgg8ZnPIG4HhJHmCbLfUBU7iMbc5y87JskknUk3zvzVulAkLKxAJMph2SbmkceYoj4p5xTGSVQkLBegF2T+qVdh4P5zr/L+oVuxnAWy6nlsOXvUVDDl1K7VRZ+K4lhsSk61YNi+l7fNWzsbjZMRmD3ezRtTP7Ogv7wxAHbWg3arrXy+CacB4eIi7KK0r7Jby11gO9MYxwMkqpdou0U0crmNNZTz52gMP2rxLtLHwpWLiPC2S4lxc0HUHXnX6ILifZ9rnlzWvaOTG+y01u1S0sAghc9ry6xUDsfK8ZZA0eY3PkUg45CAQRorDBwqRgGbWkg7RAhwHkmMN7IKghl0shfX+36jmn/AGbY3vGlw8OxI5Xe/QbKtgJjwl9SA3XSvr5+ia/RIZ9wXpOL11+f380OxqJwrDJH4aJ6at9KDv0KhYCDql0nSFoZQQpotEyw8yBAUkTlZVR7E0E6x0qHiKmpTKWQttkK7K0xqkyoghQ72LEQWrFCJKJwh3BEyuQr3JDgtOmLLlaK0HKNz9UJToRbCuyUPG5dlyHLKQ4riVyEkcppnICVylrEl9SFHxCshblLr52Gj7lVSPDN/iGNuwSATyskNoe80rdNC/JYq6q62JvX5WFVOKva0tDGkOZQ3sWDe/M3XwUMMqvU4q18DZ/1MhLQ22gAVyaa+yuUJ6KsjGRPfHJG4ElpDqIuzR1buKop3h8SKtIJsJTgBNkfKaBvlzSnBccgIdlcDRIJB5jqhuIdoGAENaX6dCqXxFzjoGZOtCr/AFKholGbK1YTHxzT2wjTQgEFPXu8l572XkZG+z4T8ldziCTuMte+/tS6oIKhpkKPG1S8/wCPtzvFa00uPornxGWgaVSAzPfdcm35D/ekdMxdC8SISF+G2pS4SBzjoa5enqi8eS14a0VQ19/XoiDgnNZHI38ZPoRpSdnsq2S/RWDgeDlaPFMW3s0HeuROx9PRO5jZGx03+6rfZ/NJuSS2iOQGorTnpm+SskgQNs4lXacQumOXbCoGlSNKsByFwlGQvRJkQDF256nMg+mmEUiIalUMiNilUhyB1IowNW1G2RYilB9MpG8IOYouUoCcpJWmwLjOuSdVEXKWNRCl74REZUhWRsXbmog1Uaj0FiHILvKNnZMZYkDLEeinRIJJQTMM83mncGEkkCxfrySnirYWHwuLzyTl2H7wOdI51C6Y3QUOv796V8RkiyhrBkAGoG5Prvsq4IzWRkWugezsv889XNI+yuokPdOaCbP6nVeeRy5JAW9fqrPFjiAQbDhoR0XVWk3XUXQEybw5wGZ0x11cGho06XuoH4lg8LcVIP6TlJ+eyZ4d8cjDmOp6aIGXgUY8QlPXUNNfBIa7irQtolr8PK4ksDX+bhld8hSYYDEuaCHWCOXQpiBFE3R1/fzVd4hjAScqkbR0UG10RNjC7ny/VVXFY57XuDXUPcjziC7Qbn92k8zfG71VljVVquMWU2HBOp1vf1VioOZGxgObT3HT5WFXIH6Ueug5J1wGTM4AWX3QAsEA6e9RUG9RTO5Wjs/gshPl4fI1p900eERBDkaAOijc1LYTCutbayGDV2wLssUkbEYU5VprVjgp8qjeEa4BRMKIjkQbnLYkUZoTxTkJoyZbS1sy2uzqPoriZqFljTCVqElCZCEPQRiUkLVLlUsbETQqtZ91JE1TiNbiap2sRKmXIV8SElgTfu0PLEkOTWCUjxjA1jjQ0B1rbTelRcTJRs+0VfuN4YmJxBoN8Tv7QLP6Hz25qgR4cmTK/Q9CdtLJJ6ALmjeoqcFDhoi6Rg6vb/qCufGOHBxzDekiw0f/AFEVAgZhqdzWu3JXSRuldUuo64R0WWKpbsW9nh10+a7/APViBvf7/wCUzxuBDgdP9lXpsM8GlAa1yIuLV3NjnEUsyOquZ3UuFwt7oyOPVTYaKWiblR4TChoSPENqV3qrcxmiR8VwRH82tC6rvfQWKRMddDVbshKW1dItryKcAbb+IA/MhcNeL2HP4KxdlW0+x7Lj3b+hzBxb8MqNxSmNkwrL2Y4g+WFufMSBRcdifLryTZzVHBhhG0NaNApgUDWwtFrYC5DFI1i0FI1HEKHLKQ0zUUQhZVyEGChJAh5CiZSg3uSXq9RMrbZFi4aFiSrdk6miKBkjVpmwyV4nDK0yqCvPsrSlTWKRrVK9lKMO1T0LxKLw4RbGoWAo2NSqxEFbyKGWNFtC4e1LcJRMdCU43Bd5E+PbOxzb/uBC85x+DeyXvHtO4DrGjXAAFp+HvBXsGGwD3Au0axvtSPOVjQN7P2XbOCNmI/kCSN1NdJNbDlJ1MDN/O3a+iHLoB8+eCc1uYF5Igb5i/C8X5a8oBig8H4OJg6ck5YI82nORxyiz56n3I8jReiT8GiZE/DRNaxr202hQzDUWvO8TG6NxY4EFpog8ilYmnkj5vRYaoHz83IaaOzaT42No8inbn0gZIGvN2kBycQlEDdbRMTLKlkw1ezqtxR0jLlACmDaVgl7KfxGAYzaRzjKwnld0D5EfVa7N8AMxEkgqFp98hH4W+XU/sei8Pw+Y2RQGgHQcgFbw1IwXFVsTUH2jcvC29icXmLO6c51WACxo3APie4BWDst2Zmj/AO80sOcOLT7VtFNB6VZV+41jsC6XuJs1M/EPZa873RuxtdEDXzUjuHTMaDG4YmKvDZuRrf6HbPHl8AEBIkxcDWNfD2lWGUIY0u2XG4zCARydpPXL1Ss4ZRvwqexYPM3PGcwGjm0WyMPR8Z1afj6oZ8SaAHCQkuqvY4tdYpG/DkLbQmj40HMxdlU/XlQOXD2qUqJ6KFBqSgp2BDiIIuQKAlKc26fTqwtMiHRYpIysQ5E8VyrrNElmKiT6diV4pqy6D1jU3KuY0Ul2fVNeINSaXdagdsrQobVkywz0xiSfhoc9wY0FzjsArSODuYQ177ef8KIZ5AP6ifCweZ09UQdaVL6Euyz+hxPLnu3odp5c+g1PwUuEjMpqJneHYuJLYmf3uG5/pafsi8QzD4cf9Q8Wde4jdmc48jK/2n+/K3ySLi3al8je7iAiiqg1ltJHQkbDyFe9KqVQ37jHIa/r8qzhsB9S9NuYfzOkM7gLu7rf1XTvG4+DD130n8TK32Y25e5jI2AYPC2upsqr8S41NPIHueWhptrWkhoPIhvXzKWNC6VKpWc8RoOHud5W/hsDToHN9zuJi3JoFmjkOOpXpeCm/iYGSD2tneTxv9/QhKuPcH/iRY8MzRWugeByJ5Hof2EfZfjhw0ni1jdWZvTo4eY+fwXoj4mSND2EEEAtI2IOxC06NVtenDtd/uvK9o4R2DrS37TdvqO78QvG8XA5ltc0hzSQQdCD5pK6TUhezcZ4I3EN2AkAoH8w6O+6o0nZ2nEFtEGiOap1KZpG+m4qadQVRbVIMBCTqrh2e7KB4E2IbTd2s2L/ADPRv1Tzs/2WbGA+Vuu7WHl0LvsrSyIblPo4e+Z/h7+yr1sRGyzxSuHh5dWlNGgaBQAGwAQHanjbcMzuoyO9cOX+GD+I+fQe/wBddq+1bYAYoiDJsXaEM+7vpz6LzXEYguJc4kkmySbJJ5krsTi42Ga/Pn700+zOyTUitWGzqBx5nl+emu3OsprwfjE2GPgfpza7Vp93L1FJTAbRAWYHFpkWXqXMbUaWvEg7irvhe1WGm0nY6N2wkYbr/M3xAeVEJvDh2vZmDxKz8MjaLh5SAb+v+kBeX3qmHCOKSYd4ew1/R+EjoR+6VpmLM7fiNf2snEdjsyEUTH9Ju3uJu3xI4g7rhjsE5mpot08Q212vpfzSucqx8O4nFiR/KIbJRzQPqjftZenqND+IKDF8Phla8Rh0czBbo3HXz9R0cNPKlebUnpxXnn4fLIggjUHUc+nA3BkXkwq0SuXLQK2UYMpFRuVCzhLXv1TLFOSSeaiuKWHEI6ORYlwxC0uhTnK9gnCVYpiYSyJfOVlUqaQ2yr/EYkmbgpHvDGC3ONAffoFZcSy1rC4U6AaOmd3QI3bGQXTOHTwjL6uWiG2hXqFQg/LcT3CSeQRPC4I4Iy4SCOL2X4jaWZw3bBzaywaI1NfATGdqgxpjwjMjTvI7/uE/m05+Zv3JD2h4sJpcrNIox3cbRtlaR4vl8KS7vVRq4gzDD3+3AfnUkr0uGwDHNDqwnflOg4Zv5nRrNhcNAACnkeSSSSbNkkkknqSd1wSuMyxpVVa6mauZHLLUDrJXLlyXFW3sb2k7o9zKf5bj4SfwE/8Aiflv1VS9NfRdtbSOnULHZmqvXw7K9M06gsfLgRzC9r0Kz+HaXBxaC4bFef8AZrtUYgI5rcwaNcNXNHT0+avkfEojH3okbkq81ivitinWZVEjw4LxOLwNbCvyuEg6EaH98te66IpVHtV2qDLhhd4tnSD8PVrTyPny9dl3aTtg59xwW1uxfs4/29B8/RUzLzVTEYqdmn4+3utns3sfKRVxA6N/29vHeFo251nr8+a05tmui7Zp7vd81JE0DU3Z8vss9ekiVuNtBdWtueORULjp6qCjWA/M0pmlQEUG+v1WsRJlaT8PU6LlBOqKExBBBIINgg0QRzB5K4cN4qcTHnaaxUAzWP8AEYNwR57EdT5qg97sp+D8SMM7Xg1ROboW62D7vorFB+R19Dr79RqFQxtD6zJb94+31aeLXaEcL6gK6cWDJGNnibRcMzgOQ2cCOrXV7neSSd8ncJySzRVYI/iGN6g22Vg9QSFX8fCYn5bsEBzHcnsdq1w9R87Wg4lpv8+a9IXnTTbUGzpqOMESJ5jQ8wdwlQY6bRVnGYl1p/O+0lxWHs6I5lZj2FhhBNxLisTHCcLceSxRKiF6wZVDI5BjErvvbQhgCDKskCB4rjcge4WMmE08nTuDAfWm370VK+h5kgD1cQ0fMhK+0Nd1ij0MMY9Gtafq4onEhpI+WJ/MK5hGB1QZt5A8XNBHg7w6qmxy8vJTxFL4D4qRrXgbmlkkL2jHSJKmLrK7bLRqrI9w+KgjlBstNVqSenohcRiTVD2pNR5Dl8d0MIy8ASicRjOV69G/crvDxF2+3nZ+q1gcEGi3auO6MceQXE7gpaCbuWDy2C0VuqC5UIlikbKaqzV3V6X1pRlaBXLpXbguAF0Da0Vy5SNajYsBK7Vsb3ejXq5dl+CMjjbK9oMjgHWdcoOoAHI1zRuHM3fG/ZPhvK7KQw6ZRm8JOZ2p0NeiuswZgF034DS03WBie3gx7m0mgxvJibxYC/mFQ38CxB1MEnrkdaDxeBkZ7bXt6WK+oXqXEs+Q5NzQoCyQ7Q68qu78lBBEXRZZRm3aWuA2acovrtd+aM4ITlBOkzAj56KtT/8ARVBdzBHAEg+cheQGd2cMdtu2t9ORHM+i3xR+jADu4fdE9teG9zM4MJy0JI/6Rrbb9x+SQzTE0/3+uiqGmQ6DuW6zEtqU8zbggEHl+kdE/M/TZv6KCGS8zv6Xn4391vBmo3O+vXmoIzULj1pvz1URu7lJfoepV/w+PtuCxHNuWGQ/3CiT8C73ojjMAMeU7xS5Gn/45PEwegJyj0KScIbn4fKzmynjy0aT8g5Pcf8AzYWu276Ai+kzB3sfzD/ktJpzt6gHv0/IHmvPvaGVI3Bzh0H3Dwa548EpZwy0Xh+EDojeBSiWFj/zDX+4aO+abxwqaZELMxOYPLXaiyBw3DWjksTmONaTZCrquUVsEpm7DLh2HQrkFFZkjB2z2f8AK1zh8wEk7QyXh8S782LLfcwAfUJ5dYho/LC559Xva1v+lyrnGJQcAD+ed7vW3SoHnZPf6D1K0cICHM6t83Od/iqpNIWnMOYWYbFnxBw8Vb/ZRk2wn8n0UDJADZ/D9FnxZeiNQhwM2+SmkhDWhvkHSef5W+9EcPw3+I/c7eQUeEhL9Xbe071Ow9woJkxpeQADroAAST0ACUeCuME7RXTbJAAsk0ANST0AT3Fdmnx4VuIzB1kW0A+Fp0sk8w7QitL8k57McPbCWPAlMoIEofEWtY14HsEj2gSw3zFjS02ZjmkSfyZDDMXeA9w1zXODQ/RzwGtdnYQCQ7M52mqsMoDLtf8APmnJZOK7TqCoBRFgQTptagi+nEGbjwPmNrCj+KcMfA4WCGuJyZi0nKCPaomjRCAVYgixW0x7XjM0yOS4BWwVorAoRLpikeNvVRgKVuq5SDBXqkBEkTCCQHMaQWkg6gVRCTY3h+JZZbL3kdHM2RxAqtnZjRCi7EcTzMMDj4o7LfNhPL0J+BCh47OGuc54dI0PyZSaqwddPPT3rVqObUY18eZERczAO/kbnqvBPw1SliHUN82sLzpqYuOaH4U7Eyt7uJ4a1uUnXKQCKIAq606c+u1iwWBMerpHvd5udlHo20njwrXMD8rmuIBbmzZh4iBrdV90xixzY8N30riQ0OLiauwSMo66ighw1PJBde2syIHK0buPWZSqhLjDeMRF56jW9typnbmUOxGX8kTL9XOca+FfFUYihl6H5cvkmnF+IOkdI93tyOLj5XoGj0FD3JMZLF+X0VVxzuLuJXq6TBRospHUC/r5onGT5YwPzO+XVaxRqNjepzfZC4h190PK/iVJJJnmDeQpo9BuoDdO9G6pJPOAPyVdOxMgL5onbGNunpbXf6gmPB5j/BHm7DyEn/8AN2Zw97S4e9VrsxNWKrm8vHwbf6KycAaRNioHDd111z5ifk5it0Dst7x5SsrG7NWoeGR/gcv4K12Jlyung5Mfmb/aSRp7g0+9XOFi887MB0eJs7PbIw/3xluYHzrKf8y9DwkimgJaqXabQ2ueYHfunyU/dFYjI22FisZCs3MoTg1GcGmxXBTA0ICV5/jDeNmaNMkUTT77f/5Ko42VxwMTeQkdXuL/ALovtzK5uMnyuIvurokX4G71uqnjiTus59WSWdR5z6L1GHwgaxtWdzDHRpHnMqGR4By9f2FFHq4NPUArMVsFy/22/wCT6oG6Jz3X8PNWSHGNI0GlkNHWtyff9EdgsW6N7ZG1beRFjUEEEehKQcL3H/1j6pq1V3DKbLTpO+oza3qwN7TTA+EMFABtMFtAy6AknTwD4LkdoMQNntGtmo49T4fG7TxO8DfEddEmauwozu4qRhaA/gHgi8Xj5Za7x5dluroUTVnQanQa+QQq0tP2Qkk6pzWhogCAtE6rYUI3UgXKQVKFgNLTVtyhSp8PiHMc2RhpzTYP75K24bGMxYsNbnOV0kJP4m7PZqMw8rVKChmkLaIJBDhRBII96ZTqmn0VHG4BmKAkw4aH30kb9e/WfQCx7GGSbwOI/mSPIawUSBkHpy6lUjtN2gM2WKOxFHtehefzvHXehyv4CcUxkj6zyPdVVmc418SlYT31Z2Rp89bneTqdFnYPANpxVN3HS0AdBJ6DgNANVBISDqlc+hI6Ov5H7ppPsleM9r3BdTuUzFWbZTYV/izHZrb+G3zpFcJb7UjuX1KCZ7D/AFZ+qNH/ALb3rn/pdQNwTuBd3zHou+HcQDJmS6jK69ADpz59CVbeHcbjbixMXeBzC1xIqjoaI5+w34qhw7hHt5Kc5ZYcZUCk2tJfqQR3G/TVXnCYtjppaqjK2WMg83Asf/q+St/DpbpeTYX22+q9H4MrWFqZ5nd6kn5yWX2thxSLHA6iP7Q0eevVXDDFYosJstK4sWF//9k=',
                  ),
                  ContainerImage(
                    nama: 'Nistelrooy',
                    gambar:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Ruud-van-Nistelrooy3.jpg/375px-Ruud-van-Nistelrooy3.jpg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
