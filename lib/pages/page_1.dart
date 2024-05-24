
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  final int _totalDots = 3;

  final int _activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  "T O M A S ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "tomas shelby ",
                  style: GoogleFonts.dancingScript(
                      textStyle: const TextStyle(
                    fontSize: 23,
                  )),
                ),
                const SizedBox(
                  height: 40,
                  width: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/tomas_profile.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'xThomas Shelby is a central character in the British television series "Peaky Blinders," portrayed by actor Cillian Murphy. He is the leader of the Peaky Blinders, a gangster family based in Birmingham, England, in the aftermath of World War I.',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black.withOpacity(.3),
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      _totalDots,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CircleAvatar(
                              radius: 4,
                              backgroundColor: index == _activeIndex
                                  ? Colors.grey
                                  : Colors.grey.shade300,
                            ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
