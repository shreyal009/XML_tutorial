import javax.xml.parsers.*;
import org.w3c.dom.*;//contains key dom classes and interfaces like Document,Element,Attr
import java.io.*;
class BookDom2 
{
	public static void main(String[] args) 
	{
	  NodeList elements;
	  String elementName="book";
		try
		{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document doc = db.parse("book2.xml");
		Node root1 = doc.getDocumentElement();
		System.out.println("Root Node : "+root1.getNodeName());
		System.out.println("Root Node Type : "+root1.getNodeType());		
		
		Element root=doc.getDocumentElement();
		System.out.println("In Main...XML file opened sucessfully");
		elements=doc.getElementsByTagName(elementName);
		if(elements==null)
		{
		return;
		}
		int elementCount=elements.getLength();
		System.out.println("Count = " + elementCount);
		}
		catch (Exception e)
		{
		System.out.println("Hello World you are in exception .. !"+e);			
		}
    }
}		
