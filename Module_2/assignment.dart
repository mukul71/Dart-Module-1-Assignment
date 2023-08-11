void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];
  
  // Calculate the sum of grades
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  
  // Calculate the average grade
  double average = sum / grades.length;
  
  // Round the average to the nearest integer
  int roundedAverage = average.round();
  
  // Determine if the student passed or failed
  if (roundedAverage >= 70) {
    print("Average grade: $roundedAverage");
    print("Passed");
  } else {
    print("Average grade: $roundedAverage");
    print("Failed");
  }
}
