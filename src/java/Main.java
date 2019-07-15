
import de.svenjacobs.loremipsum.LoremIpsum;



public class Main {

    public static void main(String[] args) throws Exception {
        LoremIpsum li = new LoremIpsum();
        for(int i =0; i < 10; i++){
            System.out.println(li.getParagraphs());
//            System.out.println(li.getParagraphs(20));
        }
    }
}
