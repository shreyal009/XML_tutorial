import javax.xml.parsers.*;
import org.w3c.dom.*;//contains key dom classes and interfaces like Document,Element,Attr
import java.io.*;
class BookDom3 
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
		for(int i=0;i<elementCount;i++)
		{
		Element element=(Element)elements.item(i);
		System.out.println("Element Name = " + elements.item(i).getNodeName());
		System.out.println("Element Type = " + element.getNodeType());
		System.out.println("Element Value = " + element.getNodeValue());
		System.out.println("Has Attributes = " + element.hasAttributes());
		
		}
		
		}
		catch (Exception e)
		{
		System.out.println("Hello World you are in exception .. !"+e);			
		}
    }
}		
