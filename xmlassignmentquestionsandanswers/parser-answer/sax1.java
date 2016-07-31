import org.xml.sax.*;
import org.xml.sax.helpers.DefaultHandler;
import java.io.*;
import javax.xml.parsers.*;

class sax1 extends DefaultHandler {

int count=0;

public void startElement(String uri, String localName, String qName,
Attributes attributes) throws SAXException 
{
int year=0;
String attrvalue;
if(attributes.getLength()>0)
{
attrvalue=attributes.getValue(0);
year=Integer.parseInt(attrvalue);
if(year>= 1980 && year<=1989)
{
count++;
}
}
}

public void endDocument() throws SAXException 
{
System.out.println("The total number of books published in the 1980's = " + count);
}

public static void main(String args[])
	{
	try
	{
	SAXParserFactory factory=SAXParserFactory.newInstance();

	// create a parser
	SAXParser saxParser=factory.newSAXParser();

	// create and set event handler on the parser
	sax1 handler=new sax1();	
	saxParser.parse(new File("c:\\dom\\book3.xml"),handler);			
	}
	catch(Exception e)
	{
		System.out.println("we are in "+e);
	}
	}
}