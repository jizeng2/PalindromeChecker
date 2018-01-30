public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sString = new String();
  for (int i =0; i<word.length(); i++)
  {
    if (!(word.substring(i, i+1).equals(" ")))
      sString = sString + word.substring(i, i+1);
  }
  String sString2 = new String();
  for (int i =0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)) == true)
    {
      sString2 = sString2 + word.substring(i, i+1);
    }
  }

  String sString3 = new String();
  sString3 = sString2.toLowerCase();

  if (sString3.equals(reverse(sString3)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i>=0; i--)
  {
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}