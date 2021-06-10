package error;

public class MessageError {
	
	public static String get(Exception exception) {
		
		String exceptionMessageError = exception.getMessage();
		
		if(exceptionMessageError.contains("TB_Cliente.email_UNIQUE")) {
			return "E-mail já cadastrado";
		}
		else if(exceptionMessageError.contains("TB_Cliente.celular_UNIQUE")) {				
			return "Celular já cadastrado";
		}else {
			return "Um erro ocorreu, tente novamente mais tarde.";
		} 
	}
}
