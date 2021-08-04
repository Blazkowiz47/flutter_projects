class Animal {
  final String name;
  final String image;
  final String description;
  final int number;
  bool status = false;
  Animal({this.name , this.description , this.image ,this.number ,this.status});

}


List<Animal> dogs = [
  Animal(
    name: 'German Shepherd',
    image: 'assets/dogbreeds/dogbreed1_0.jpg',
    description: 'As a herding dog, German Shepherds are working dogs developed originally for herding sheep. Since that time, however, because of their strength, intelligence, trainability, and obedience, German Shepherds around the world are often the preferred breed for many types of work, including disability assistance, search-and-rescue, police and military roles and acting. The German Shepherd is the second-most registered breed by the American Kennel Club and seventh-most registered breed by The Kennel Club in the United Kingdom.',
    number: 1,
  ),
  Animal(
    name: 'Siberian Husky',
    image: 'assets/dogbreeds/dogbreed2_0.jpg',
    description: 'Siberian Huskies originated in Northeast Asia where they are bred by the Chukchi people for sled-pulling, guarding, and companionship. It is an active, energetic, resilient breed, whose ancestors lived in the extremely cold and harsh environment of the Siberian Arctic. William Goosak, a Russian fur trader, introduced them to Nome, Alaska during the Nome Gold Rush, initially as sled dogs.',
    number: 2,
  ),
  Animal(
    name: 'Beagle\n',
    image: 'assets/dogbreeds/dogbreed3_0.jpg',
    number: 3,
    description: 'The beagle is a breed of small hound that is similar in appearance to the much larger foxhound. The beagle is a scent hound, developed primarily for hunting hare (beagling). Possessing a great sense of smell and superior tracking instincts, the beagle is the primary breed used as detection dogs for prohibited agricultural imports and foodstuffs in quarantine around the world. The beagle is intelligent. It is a popular pet due to its size, good temper, and a lack of inherited health problems. The modern breed was developed in Great Britain around the 1830s from several breeds, including the Talbot Hound, the North Country Beagle, the Southern Hound, and possibly the Harrier.',
  ),
  Animal(
    name: 'Shiba Inu\n',
    image: 'assets/dogbreeds/dogbreed4_0.jpg',
    number: 4,
    description: 'A small, alert and agile dog that copes very well with mountainous terrain and hiking trails, the Shiba Inu was originally bred for hunting.[1][2] It looks similar to and is often mistaken for other Japanese dog breeds like the Akita Inu or Hokkaido, but the Shiba Inu is a different breed with a distinct blood line, temperament, and smaller size than other Japanese dog breeds',
  ),
];

List<Animal> cats = [
  Animal(
    name: 'Persian Cat\n',
    image: 'assets/catbreeds/catbreed1_0.jpg',
    number: 1,
    description: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. It is also known as the "Persian Longhair" in the English-speaking countries. The first documented ancestors of the Persian were imported into Italy from Iran (historically known as Persia in the west) around 1620. Recognized by the cat fancy since the late 19th century, it was developed first by the English, and then mainly by American breeders after the Second World War. Some cat fancier organizations breed standards subsume the Himalayan and Exotic Shorthair as variants of this breed, while others treat them as separate breeds. The selective breeding carried out by breeders has allowed the development of a wide variety of coat colors, but has also led to the creation of increasingly flat-faced Persians. Favored by fanciers, this head structure can bring with it a number of health problems. As is the case with the Siamese breed, there have been efforts by some breeders to preserve the older type of cat, the traditional breed, having a more pronounced muzzle, which is more popular with the general public. Hereditary polycystic kidney disease is prevalent in the breed, affecting almost half the population in some countries.',
  ),
  Animal(
    name: 'Scottish Fold',
    image: 'assets/catbreeds/catbreed2_0.jpg',
    number: 2,
    description: 'The Scottish Fold is a breed of domestic cat with a natural dominant-gene mutation that affects cartilage throughout the body, causing the ears to "fold", bending forward and down towards the front of the head, which gives the cat what is often described as an "owl-like" appearance.Originally called lop-eared or lops after the lop-eared rabbit, Scottish Fold became the breeds name in 1966. Depending on registries, longhaired Scottish Folds are varyingly known as Highland Fold, Scottish Fold Longhair, Longhair Fold and Coupari',
  ),
  Animal(
    name: 'Exotic Shorthair',
    image: 'assets/catbreeds/catbreed3_0.jpg',
    number: 3,
    description: 'The Exotic Shorthair is a breed of cat developed as a short-haired version of the Persian. The Exotic is similar to the Persian in many ways, including temperament and conformation, a flat nose and face with the exceptions of the short dense coat' ,
  ),
  Animal(
    name: 'Burmese Cat',
    image: 'assets/catbreeds/catbreed4_0.jpg',
    number: 4,
    description: 'Most modern Burmese are descendants of one female cat called Wong Mau, which was brought from Burma to America in 1930 and bred with American Siamese. From there, American and British breeders developed distinctly different Burmese breed standards, which is unusual among pedigreed domestic cats. Most modern cat registries do not formally recognize the two as separate breeds, but those that do refer to the British type as the European Burmese.Originally, all Burmese cats were dark brown (sable), but are now available in a wide variety of colours; formal recognition of these also varies by standard. Both versions of the breed are known for their uniquely social and playful temperament and persistent vocalisation.',
  ),
];
