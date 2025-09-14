import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2EDF5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 24,
              children: [
                ProfileSection(),
                AboutMeSection(),
                FavoriteSection(),
                InterestSection(),
                MottoBadge(),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class ProfileSection extends StatelessWidget{
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/fotoku.jpg'),
        ),
        SizedBox(height: 24,),
        Text(
          "Muhammad Arif Septian",
          style: GoogleFonts.spaceGrotesk(
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal
              )
          ),
        ),
        SizedBox(height: 12,),
        Text(
          "Universitas Mulawarman, Informatika",
          style: GoogleFonts.spaceGrotesk(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0573F3),
              )
          ),
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_rounded,
              color: Color(0xFF0573F3),
              size: 20,
            ),
            SizedBox(width: 8,),
            Text(
              "Samarinda, Indonesia",
              style: GoogleFonts.spaceGrotesk(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF728197),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class AboutMeSection extends StatelessWidget{
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFcae0ed),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                "Tentang Saya",
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight. bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Text(
                "Halo, Saya Muhammad Arif Septian dengan NIM 2309106046. Mahasiswa yang berfokus pada belajar dan pengembangan diri. Saya senang memperdalam pengetahuan serta mengeksplorasi hal baru untuk meningkatkan keterampilan.",
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12,),
              Text(
                '"Belajar tanpa henti, berkembang tanpa batas"',
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 12,
                    height: 1.6,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF0573F3),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
    );
  }
}

class FavoriteSection extends StatelessWidget{
  const FavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Kegemaran Saya",
          style: GoogleFonts.spaceGrotesk(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight. bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Wrap(
          spacing: 8,
          runSpacing: 16,
          children: [
            BoxFavorite(icon: Icons.menu_book_outlined, headline: 'Kegemaran', subHeadline: "Membaca"),
            BoxFavorite(icon: Icons.keyboard_alt_outlined, headline: 'Hobi', subHeadline: "Bermain"),
            BoxFavorite(icon: Icons.coffee_outlined, headline: 'Minuman favorit', subHeadline: "Teh tarik"),
            BoxFavorite(icon: Icons.fastfood_outlined, headline: 'Makanan favorit', subHeadline: "Nasi kuning"),
          ],
        )
      ],
    );
  }
}

class BoxFavorite extends StatelessWidget{
  final IconData icon;
  final String headline;
  final String subHeadline;

  const BoxFavorite({super.key, required this.icon, required this.headline, required this.subHeadline});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        decoration: BoxDecoration(
            color: Color(0xFFcae0ed),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    color: Color(0xFFE2EDF5),
                    borderRadius: BorderRadius.circular(999)
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: Color(0xFF0573F3),
                ),
              ),
              SizedBox(height: 8,),
              Text(
                subHeadline,
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF728197),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4,),
              Text(
                headline,
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
    );
  }
}

class InterestSection extends StatelessWidget{
  const InterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Minat Saya",
          style: GoogleFonts.spaceGrotesk(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight. bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 24,),
        Column(
          spacing: 16,
          children: [
            InterestBox(icon: Icons.palette_outlined, headline: "UI/UX", subHeadline: "Tertarik membuat tampilan menarik dan fungsional"),
            InterestBox(icon: Icons.android_outlined, headline: "Android Developer", subHeadline: "Tertarik dengan Pembuatan aplikasi android"),
            InterestBox(icon: Icons.settings, headline: "Quality Assurance", subHeadline: "Tertarik dalam menguji perangkat lunak"),
          ]
        )
      ],
    );
  }
}

class InterestBox extends StatelessWidget{
  final IconData icon;
  final String headline;
  final String subHeadline;

  const InterestBox({super.key, required this.icon, required this.headline, required this.subHeadline});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: Color(0xFF8593A8),
            width: 1
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: Color(0xFFcae0ed)
            ),
            child: Icon(
              icon,
              size: 20,
              color: Color(0xFF0573F3),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8,),
              Text(
                subHeadline,
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF728197),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MottoBadge extends StatelessWidget{
  const MottoBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: Color(0xFF0573F3)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Icon(
            Icons.light_mode_outlined,
            size: 20,
            color: Colors.white,
          ),
          Text(
            "Terus Belajar, Terus Berkembang",
            style: GoogleFonts.spaceGrotesk(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}









