public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0;i < sWord.length();i++)
  {
    if (sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
    {
     return i; 
    }
  }
	return -1;
}


public String pigLatin(String sWord)
{
	int Yes = 0;
	if (sWord.substring(0,2).equals("qu"))
	{
		return sWord.substring(2,sWord.length()) + sWord.substring(0,2) + "ay";
	} 
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) >= 1)
	{
		Yes = findFirstVowel(sWord);
		return sWord.substring(Yes,sWord.length()) + sWord.substring(0,Yes) + "ay";
	}
	else
	{
		return sWord + "way";	
	}
			//if (freturn sWord.substring(i,sWord.length()) + sWord.substring(0,i) + "ay";indFirstVowel(sWord) > 0)

}
