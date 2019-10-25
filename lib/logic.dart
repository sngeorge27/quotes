import 'package:gianna_quotes/quotes.dart';

class Logic {
  int _quoteNumber = 0;

  List<Quote> _quoteBucket = [
    Quote(q: 'I’ve found that my life calling is to become a jukebox.'),
    Quote(q: 'Hi my name is Gianna and I like to sleep and eat cookies.'),
    Quote(q: 'So I’m delirious and we’re walking through target and I’m just like woot woot.'),
    Quote(
        q: 'Funny thing was I was procrastinating studying for my Econ final and my friend and I went to Lowe’s and Home Depot to look at kitchens.'),
    Quote(
        q: 'Something happened and made me think of a spongebob meme and then i realized my whole day could be a spongebob episode. '
            'It’s like the spongebob movie how everyone didn’t like me and the other 3 college students they hired for the week and then literally i befriended the grouchiest squidwards all today.'),
    Quote(q: 'Today I realized that my life is literally like a cartoon.'),
    Quote(q: 'I feel like my whole life is a meme.'),
    Quote(
        q: 'I think that my life is very comparable to a connect the dots coloring page. Like a giant picture of dumbo winnie the poo and tigger.'),
    Quote(q: 'I love HOBY.'),
    Quote(
        q: 'Actually i am one of those people who has a crazy looking google calendar and wonders how people don’t make time to eat.'),
    Quote(q: 'I should just be a sleeky french fry.'),
    Quote(
        q: 'As alicia keys once said, she’s just a girl and she’s on fire. Like alicia keys, I am superwoman.'
            'And as beyoncé once said, who run the world? GIRLS!! And just like ajr, i gotta go so much bigger so they can never shut me down!'),
  ];

  void nextQuote() {
    if (_quoteNumber < _quoteBucket.length - 1) {
      _quoteNumber++;
    }
  }

  String getQuote() {
    return _quoteBucket[_quoteNumber].quoteText;
  }

  void reset() {
    _quoteNumber = 0;
  }
}
