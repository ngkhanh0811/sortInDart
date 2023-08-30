

void main(){
  List<int> listNum = [12, 1, 3, 4, 134, 7, 39, 0];
  print('Before sorted: ');
  print(listNum);
  print('After bubble sorted:');
  print('Min to max: ');
  bubbleSort(false, listNum);
  print('Max to min: ');
  bubbleSort(true, listNum);

  print('After insertion sorted:');
  insertionSort(listNum);


  // for(var x = 0; x<listNum.length; x++){
  //   flexSort();
  // }
}

void bubbleSort(bool boolean, listNum){
      for(var x = 0; x<listNum.length; x++){
      for(var y = x+1; y<listNum.length; y++){
        if(boolean==true){
          if(listNum[x] < listNum[y]){
          var temp = listNum[y];
          listNum[y] = listNum[x];
          listNum[x] = temp;
        }
        } else{
          if(listNum[x] > listNum[y]){
          var temp = listNum[y];
          listNum[y] = listNum[x];
          listNum[x] = temp;
        }
        }
      }
    }
    print(listNum);
}

void insertionSort(listNum){
   List<int> sortedList = [];
    var i;
    var j;
   if(listNum.length == 1){
    return listNum;
   } else{
      sortedList.add(listNum[0]);
      if(listNum[1]>sortedList[0]){
        sortedList.add(listNum[1]);
      } else{
        sortedList.insert(0, listNum[1]);
      }
      for(i=2;i<listNum.length;i++){
        for(j=0;j<sortedList.length-1;j++){
          if(listNum[i]<sortedList[j+1] && listNum[i]>sortedList[j]){
            sortedList.insert(j+1, listNum[i]);
          }
          if(listNum[i]<sortedList[0]){
            sortedList.insert(0, listNum[i]);
          }
          if(listNum[i]>sortedList[sortedList.length-1]){
            sortedList.add(listNum[i]);
          }
        }
      }
      print(sortedList);
   }
}

// void flexSort(){
//   List<int> sortedList = []; 
//   for(var i = 0;i<listNum.length;i++){
//     var count = 0;
//     for(var j = 0; j<listNum.length;j++){
//       if(listNum[i] < listNum[j]){
//         count+=1;
//         if(count == (listNum.length-1)){
//           // print(listNum.length-1);
//           sortedList.add(listNum[i]);
//           listNum.remove(listNum[i]);
//         }
//       }

//       if(listNum.length==1){
//         sortedList.add(listNum[0]);
//         listNum.remove(listNum[0]);
//       }
//     }
//   }
//   print(sortedList);
// }
