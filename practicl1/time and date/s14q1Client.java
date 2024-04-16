import java.net.*;
import java.io.*;
import java.util.*;

class s14q1Client
{
	public static void main(String[] a)throws IOException
	{
		Socket st=new Socket("localhost",5917);
		DataInputStream dis=new DataInputStream(st.getInputStream());
		String d=dis.readUTF()+"";
		System.out.println("date:"+d);
	}

}

