extension StringExtension on String {
    bool validateMinLength([double value = 6]){
          return this.length > value;
    }
}