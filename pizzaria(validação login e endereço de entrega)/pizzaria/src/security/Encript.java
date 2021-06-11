package security;
import java.security.MessageDigest;

public class Encript {
	
	public static String toSHA256(String input) throws Exception{
		try{
			MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
			byte messageDigest[] = algorithm.digest(input.getBytes("UTF-8"));

			StringBuilder hexString = new StringBuilder();
			for (byte b : messageDigest) {
				hexString.append(String.format("%02X", 0xFF & b));
			}
			String outputHex = hexString.toString();
			return outputHex;
		}
		catch(Exception e){
			throw new Exception(e.toString());
		}	     
	}
}
