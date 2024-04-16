
import java.net.*;
import java.io.*;
import java.util.*;

class s14q1Server
{
	public static void main(String[] a)throws IOException
	{
		ServerSocket st=new ServerSocket(5917);
		Socket s= st.accept();
		DataOutputStream dos=new DataOutputStream(s.getOutputStream());
		Date d=new Date();
		System.out.println("date:"+d);
		dos.writeUTF(d+"");
	}

}
