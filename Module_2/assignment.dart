/*Task
You are given a list of integers representing the grades obtained by a student in
various subjects: [85, 92, 78, 65, 88, 72].
Write a Dart program to calculate the average grade of the student.
After calculating the average, round it to the nearest integer.
Determine if the student's average grade is greater than or equal to 70 print Passed. 
Print Failed otherwise
*/

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
