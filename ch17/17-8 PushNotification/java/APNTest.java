import javapns.Push;

public class APNTest
{
  public static void main(String[] args) {
    try {
      String TOKEN = "e31c924d7c6aea0843037d3fc5169cb76ae0ba3706dd3f3b1dc2d0b55345ed47";
      String KEYNAME = "key.p12";
      String KEYPWD = "1234";
      
      //Push.alert("Hello world", KEYNAME, KEYPWD, false, TOKEN);
      Push.badge(0, KEYNAME, KEYPWD, false, TOKEN);
    } catch (Exception e) {
      System.out.println(e);
    }
  }
} 