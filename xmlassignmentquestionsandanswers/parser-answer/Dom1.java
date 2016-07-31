import javax.xml.parsers.*;
import org.w3c.dom.*;//contains key dom classes and interfaces like Document,Element,Attr
import java.io.*;
class Dom1
{
	public static void main(String[] args) 
	{
	 try
	  {
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document doc=db.parse("c:\\dom\\company.xml");
		Element root=doc.getDocumentElement();
        System.out.println("Root Element : " + root.getTagName());
		
        System.out.println(" Company name: "+ root.getAttribute("name"));
        System.out.println(" Company short name: " + root.getAttribute("shortName"));
        System.out.println(" Company mission: "+ root.getAttribute("mission"));
		
		NodeList departments =root.getElementsByTagName("department");
        for(int i=0; i<departments.getLength(); i++)
 		   {
               Element department =(Element)departments.item(i);
               System.out.println("Department Details");
               System.out.println(" Department name:" + department.getAttribute("name"));
               System.out.println(" Department mission:" + department.getAttribute("mission"));
               System.out.println(" Department Total staff:" + countStaff(department));
	       }
	 }
	    catch (Exception e)
		{
		   System.out.println("Hello World you are in exception .. !"+e);			
		}
    }		

   public static int countStaff(Element department) 
   {
     int departmentStaff = 0;
     NodeList groups =department.getElementsByTagName("group");
	 for(int i=0; i<groups.getLength(); i++) 
	 {
       Element group=(Element)groups.item(i);
      int groupStaff =Integer.parseInt(group.getAttribute("numStaff"));
      departmentStaff = departmentStaff + groupStaff;
     }
     return(departmentStaff);
   }
		
}		
		
		
		
		
		
	