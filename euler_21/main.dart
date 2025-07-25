
void main(){
  listeYapici(10000);
  listeCozucu();
  print(resultShow());
}

int sumOProperDivisor(int a){
  int sum=0;
  List<int> propersDivisors =[];
  for (var i = 1; i < a; i++) {
    a%i==0?propersDivisors.add(i):null;
  }
  for (var i in propersDivisors) {
    sum= sum+ i;
  }

  return sum;
}

Map<int,int> liste ={};

void listeYapici (int a){
  while (a>0) {
    liste.addAll({a : sumOProperDivisor(a)});
    a--;
  }
}

Set<int> results ={};

int resultShow (){
  int sum=0;
  for (var i in results) {
    sum=sum+i;
  }
  return sum;
}

void listeCozucu (){
  for (var entry in liste.entries) {
    int a = entry.key; 
    int b = entry.value; 
    if (b > 1 && liste.containsKey(b) && liste[b] == a && a != b) {
      results.add(a); 
      results.add(b);
    }
  }
}