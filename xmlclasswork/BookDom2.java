import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.io.*;
class BookDom2
{
	public static void main(String[] args)
	{
	NodeList elements;
	String elementName="book";
		try
		{
		DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
		DocumentBuilder db=dbf.newDocumentBuilder();
		Document doc=db.parse("bib.xml");
		Node root1=doc.getDocumentElement();
		System.out.println("Root Node:"+root1.getNodeName());
		System.out.println("Root Node type:"+root1.getNodeType());
		
		Element root=doc.getDocumentElement();
		System.out.println("In Main...XML file opened sucessfully");
		elements=doc.getElementsByTagName(elementName);
		if(elements==null)
		{
		return;
		}
		int elementCount=elements.getLength();
		System.out.println("Count:-"+elementCount);
		}
		catch(Exception e)
		{
		System.out.println("Hello world you are in execption..!"+e);
		}
	}
}
