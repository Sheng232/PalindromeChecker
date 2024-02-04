public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(Palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean Palindrome(String sWord){
  if(sWord.equals(reverse(sWord)))
  return true;
  else return false;
}
public String reverse(String sWord){
  String newWord = "";
  for(int i = sWord.length(); i>0; i--){
    newWord = newWord + sWord.substring(i-1,i);
  }
  return newWord;
}


