
import javax.naming.*;

public class Main {

	public static void main(String[] args) throws Exception {
		InitialContext ic = new InitialContext();
		Context envCtx = (Context) ic.lookup("java:comp/env");

		String cs = (String) envCtx.lookup("cs");
		System.out.println(cs);
	}
}
