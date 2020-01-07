

int countLayers(List<String> rugLayers){
  int count = 0;
  while(rugLayers.isNotEmpty){
    rugLayers = removeLayer(rugLayers);
    count++;
  }
  return count;
}

List<String> removeLayer(List<String> layerOfStrings){
  List <String> newList = [];
  for(String s in layerOfStrings){
   if(removeTarget(s).isNotEmpty){
     newList.add((removeTarget(s)));
   }

  }
  return newList;
}

String removeTarget(String letters){
  List <String> lettersList = letters.split('').toList();
    String target = lettersList.first;
    while(lettersList.isNotEmpty && (lettersList.first == target || lettersList[lettersList.length-1] == target)  ) {
      if (lettersList == []) {

        return "";
      }
      else {
        if (lettersList[0] == target && lettersList.length>0) {
          lettersList.removeAt(0);

        }

        if (lettersList.length > 1 && lettersList[lettersList.length - 1] == target  ) {
          lettersList.removeLast();

        }
      }
    }


  return lettersList.join("");
}


void main() {

  //print(removeTarget("AABCBAA"));
  //print(removeTarget("AAAAAAAA"));
  print(removeLayer([
    "AAAAAAAAAAA",
    "AABBBBBBBAA",
    "AABCCCCCBAA",
    "AABCAAACBAA",
    "AABCADACBAA",
    "AABCAAACBAA",
    "AABCCCCCBAA",
    "AABBBBBBBAA",
    "AAAAAAAAAAA"
  ]));
  print(countLayers([
    "AAAAAAAAAAA",
    "AABBBBBBBAA",
    "AABCCCCCBAA",
    "AABCAAACBAA",
    "AABCADACBAA",
    "AABCAAACBAA",
    "AABCCCCCBAA",
    "AABBBBBBBAA",
    "AAAAAAAAAAA"
  ]));

  print(countLayers([
    "AAAAAAAAA",
    "ABBBBBBBA",
    "ABBAAABBA",
    "ABBBBBBBA",
    "AAAAAAAAA"
  ]));
}


