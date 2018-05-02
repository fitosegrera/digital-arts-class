//If we know the data to put in the array
//This is how we declare it:
int[] myArray = {1, 5, 97, 4};

//[1] is position 1 inside the array, [3] will be position 3
//positions are called index inside an array, and they allways
//start at 0
println(myArray[0]);

//Another way of declaring arrays is like this:
float[] myNumbers = new float[100];

//one way of populating our array is to do it manually:
myNumbers[0] = 25.6;
myNumbers[1] = 2.3;

//a more efficient way is to use a for loop:
//(.length means the size of myNumbers which right now is = 100)
for(int i=0; i<myNumbers.length; i++){
  myNumbers[i] = random(0,255);
}

println(myNumbers);
