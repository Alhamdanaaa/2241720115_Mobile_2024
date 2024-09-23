// Praktikum 1: Eksperimen Tipe Data List
void main(){
  final List<String?> list = List.filled(5, null);

  list[1] = 'Alhamdana';  
  list[2] = '2241720115';  
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = '1';
  assert(list[1] == 1);
  print(list[1]);
}

// Praktikum 2: Eksperimen Tipe Data Set
void main1() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Alhamdana");
  names1.add("2241720115");
  names2.addAll({"Alhamdana","2241720115"});
  
  print(names1);
  print(names2);
}

// Praktikum 3: Eksperimen Tipe Data Maps
void main() {
  var gifts = {
      // Key:    Value
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 1
  };

  var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  
  gifts['nama']="Alhamdana";
  gifts['nim']="2241720115";
  nobleGases.addAll({100:'Alhamdana',200:'2241720115'});
  mhs1.addAll({'nama':'Alhamdana','nim':'2241720115'});
  mhs2.addAll({1:'Alhamdana',2:'2241720115'});
  
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

// Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
void main() {
  var nim = {2241720115};
  var list = [1, 2, 3, ...nim];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Manager';
  var nav2 = [
      'Home',
      'Furniture',
      'Plants',
      if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

// Praktikum 5: Eksperimen Tipe Data Records
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  var record1 = (1, 2);
  var swaprecord = tukar(record1);
  print(swaprecord);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ("Alhamdana", 2241720115);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last',nama:'Alhamdana',nim:2241720115);

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  print(mahasiswa2.nama); // Prints 'nama'
  print(mahasiswa2.nim); // Prints 'nim'
}