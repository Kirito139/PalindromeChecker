public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  String foobar = new String();
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    foobar = onlyLetters(lines[i]).toLowerCase();
    if(palindrome(foobar)) System.out.println(lines[i] + " IS a palindrome.");
    else System.out.println(lines[i] + " is NOT a palindrome.");
  }
}

public boolean palindrome(String word) {
  return reverse(word).equals(word);
}

public String reverse(String str) {
  String foo = new String();
  for (int i = str.length()-1; i >= 0; i--) { foo += str.charAt(i); }
  return foo;
}

public String onlyLetters(String str) {
  String bar = "";
  for (int i = 0; i < str.length(); i++) {
    if (Character.isLetter(str.charAt(i))) bar += str.charAt(i);
  }
  return bar;
}
