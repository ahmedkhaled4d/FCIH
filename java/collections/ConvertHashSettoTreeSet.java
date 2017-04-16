import java.util.HashSet;
import java.util.TreeSet;
import java.util.Set;
class ConvertHashSettoTreeSet{ 
  public static void main(String[] args) {
     // Create a HashSet
     HashSet<String> hset = new HashSet<String>();
 
     //add elements to HashSet
     hset.add("Element1");
     hset.add("Element2");
     hset.add("Element3");
     hset.add("Element4");
 
     // Displaying HashSet elements
     System.out.println("HashSet contains: "+ hset);
 
     // Creating a TreeSet of HashSet elements
     Set<String> tset = new TreeSet<String>(hset);
 
     // Displaying TreeSet elements
     System.out.println("TreeSet contains: ");
     for(String temp : tset){
        System.out.println(temp);
     }
  }
}
