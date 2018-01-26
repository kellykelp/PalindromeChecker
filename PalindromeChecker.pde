public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)) == true)
    {
      s = s + word.charAt(i);
    }
  }

  s = s.toLowerCase();


  if (reverse(s).equals(s))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    int nLast = str.length()-1;
    for (int i = nLast; i >= 0; i--)
    {
      sNew = sNew + str.substring(i, i+1);
    }
    
    return sNew;
}


