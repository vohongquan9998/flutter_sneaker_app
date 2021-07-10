import 'package:flutter/material.dart';

class Sneaker {
  final int position;
  final String name;
  final double price;
  final String description;
  final String image;
  final Color color;
  final String brand;

  Sneaker(this.position,
      {this.name,
      this.price,
      this.brand,
      this.color,
      this.description,
      this.image});

  static List<Sneaker> sneakerList = [
    Sneaker(1,
        name: 'Converse X OPI Chuck Taylor',
        price: 123,
        brand: 'Converse',
        color: Colors.yellow[700],
        description:
            "The summer glo-up gets glossy with Converse x OPI. Get lost in color and keep the mood high with V-I-Pink Passes and Dance Party Teal Dawn. From your flashy nail art to your neon Chucks, stay shining.",
        image: 'assets/1.png'),
    Sneaker(2,
        name: 'Nike Air Jordan 1 Retro High',
        price: 185,
        brand: 'Nike',
        color: Colors.blue[300],
        description:
            "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        image: 'assets/2.png'),
    Sneaker(3,
        name: 'Nike Air Jordan 1 Retro High',
        price: 135,
        brand: 'Nike',
        color: Colors.red[900],
        description:
            "Familiar but always fresh, the iconic Air Jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        image: 'assets/3.png'),
    Sneaker(4,
        name:
            "Converse OPI x Chuck Taylor All Star High 'V-I-Pink Passes'Canvas Shoes/Sneakers",
        price: 130,
        brand: 'Converse',
        color: Colors.pink[200],
        description:
            "Get inspired with the new Chuck Taylor All Star Hi Sneaker from Converse! Teaming up with nail care giants OPI to bring you a bold new sneaker collection, Converse introduces a glamorous take on timeless Chuck style. These special edition sneakers rock a glossy toe cap, contrasting heel stripe, and subtle OPI branding details throughout. Please note that this shoe runs a half size large.",
        image: 'assets/4.png'),
    Sneaker(5,
        name: "Originals Women's Edge Lux Clima Running Shoe",
        price: 85,
        brand: 'Adidas',
        color: Colors.indigo[300],
        description:
            "These women's running shoes are designed with a women's-specific fit, and they keep feet cool while delivering a cushioned ride. A heathered mesh upper offers breathability and the Bounce midsole provides energized comfort.",
        image: 'assets/5.png'),
    Sneaker(6,
        name: "Converse Chuck Taylor All-Star Vulcanized Hi Off-White",
        price: 1605,
        brand: 'Converse',
        color: Colors.lightBlue,
        description:
            "x Off-White Chuck 70 high-top sneakers Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rigorously inspected by experienced experts guaranteeing authenticity. It received less attention than the other Nike and Air Jordan models in the OFF-WHITE x Nike “The Ten” collection, but the Converse Chuck Taylor All Star by Virgil Abloh is no less important. Released in early 2018—much later than the rest of the pack—the Chuck Taylor is the final installment in one of the most storied sneaker collaborations. The Chuck Taylor is inspired by the idea of 'Ghosting' and features a translucent upper with clear outsoles. The word 'Vulcanized' is boldly printed on each heel.",
        image: 'assets/6.png'),
    Sneaker(7,
        name: 'CONVERSE CHUCK TAYLOR 70 CLASSIC HIGH BLACK',
        price: 75,
        brand: 'Converse',
        color: Colors.grey[800],
        description:
            "CHUCK '70 HIGH TOPBlack unisex shoe signed Converse. Featuring a slightly higher rubber side strap, a cushioned insole for long-lasting comfort and a firmer rubber toe. Added vintage details include stitching to the side and a thicker canvas upper for comfort and durability. These add to iconic Chuck Taylor attributes such as the ankle-centre star patch and vulcanised rubber soles. A redesigned sneaker that uses modern details to celebrate the original Chuck Taylor All Star from the 1970s.",
        image: 'assets/7.png'),
    Sneaker(8,
        name: 'Jordan 4 x Off White "Sail"',
        price: 1825,
        brand: 'Nike',
        color: Colors.orange[300],
        description:
            "Appears under attractive creamy white tones. The Air Jordan 4 Off-White “Sail” pair features perforated plastic embellishments in the Jordan 4-specific mesh, heel tabs, side tabs, and laces. Around the upper of the shoe are tones that gradually deepen from top to bottom through layers of leather and fabric.Just below the heel is Off-White's trademark helvetica font 'AIR' on the Air window. The construction of these Air Jordan 4 Off White shoes is also quite similar to Virgil's previous Air Jordans, with exposed sponge in the sockliner. Classic Air Jordan laces and hang tags are also included. The OG-style shoebox will have wide openings.",
        image: 'assets/8.png'),
    Sneaker(9,
        name: 'Converse Chuck Taylor All Star Classic White',
        price: 57,
        brand: 'Converse',
        color: Colors.purple[600],
        description:
            "Classic is Converse's #1 best-selling line. Coming from America's leading sports shoe brand, this shoe model has quickly become popular around the world not only because of its affordable price, but also because of its ability to mix a variety of items with different outfits. Converse's iconic shoe for more than 100 years & best-selling of all time With 6 basic colors, black and white is an easy color to match. Shoes that everyone should have because of their durability, beauty and super easy to match, suitable for all types of outfits.",
        image: 'assets/11.png'),
  ];
}
