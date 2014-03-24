/**
 * 
 */
package com.OMS1.util;

import java.io.*;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import org.w3c.dom.*;
 
public class XMLParser {
  public static void main(String[] args) {
	  
	  Hashtable<String,String> att = new Hashtable<String, String>();
	  att.put("id", "1");
	  Hashtable<String,String> sub = new Hashtable<String, String>();
	  sub.put("caption","MyPicture");
	  sub.put("path", "images/sakeat.jpg");
	  String str;
	try {
		str = createNewDocument("photos","photo",att,sub);
		att.put("id", "2");
		String x=insertElement(str,"photos","photo",att,sub);
		
		  System.out.println(getElementDetails(x,"photo"));
		  x=insertElement(x,"photos","photo",att,sub);
		  System.out.println(getElementDetails(x,"photo"));
		  
		  System.out.println(x);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  //System.out.println(getElementDetails(str));
	 
	  
	   
	  
	  
  }
  
  public static String createNewDocument(String root,String element, Hashtable<String, String> attributes, Hashtable<String, String> subElement)throws Exception
  {
   
	  DocumentBuilderFactory documentBuilderFactory = 
                                   DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = 
                              documentBuilderFactory.newDocumentBuilder();
        Document document = documentBuilder.newDocument();
    Element rootElement = document.getDocumentElement();
    if(rootElement ==null)
    {
    	rootElement = document.createElement(root);
    }
        document.appendChild(rootElement);

     
      Element em = document.createElement(element);
      Enumeration en = attributes.keys();
      while(en.hasMoreElements())
      {
    	  String key = (String) en.nextElement();
    	  String value = (String) attributes.get(key);
    	  em.setAttribute(key, value);
      }
      Enumeration en1 = subElement.keys();
      while(en1.hasMoreElements())
      {
    	  String key = (String) en1.nextElement();
    	  String value = (String) subElement.get(key);
    	  Element childem = document.createElement(key);
    	  childem.appendChild(document.createTextNode(value));
          em.appendChild(childem);

    	  
    	 
      }
      
     // em.appendChild(document.createTextNode());
		rootElement.appendChild(em);

    TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(document);
        StringWriter wr=new StringWriter();
        
           StreamResult result =  new StreamResult(wr) ;
        transformer.transform(source, result);
        return wr.getBuffer().toString(); 
  }
  
  
  public static String insertElement(String xml,String root,String element, Hashtable<String, String> attributes, Hashtable<String, String> subElement)throws Exception
  {
   
	  DocumentBuilderFactory documentBuilderFactory = 
                                   DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = 
                              documentBuilderFactory.newDocumentBuilder();
        Document document = documentBuilder.parse(new StringBufferInputStream(xml));
    Element rootElement = document.getDocumentElement();
    	
    
        //document.appendChild(rootElement);
     
      Element em = document.createElement(element);
      Enumeration en = attributes.keys();
      while(en.hasMoreElements())
      {
    	  String key = (String) en.nextElement();
    	  String value = (String) attributes.get(key);
    	  em.setAttribute(key, value);
      }
      Enumeration en1 = subElement.keys();
      while(en1.hasMoreElements())
      {
    	  String key = (String) en1.nextElement();
    	  String value = (String) subElement.get(key);
    	  Element childem = document.createElement(key);
    	  childem.appendChild(document.createTextNode(value));
          em.appendChild(childem);

    	  
    	 
      }
      
     // em.appendChild(document.createTextNode());
      rootElement.appendChild(em);

    TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(document);
        StringWriter wr=new StringWriter();
        
           StreamResult result =  new StreamResult(wr) ;
        transformer.transform(source, result);
        return wr.getBuffer().toString(); 
  }
 public static Vector<Hashtable<String, String>> getElementDetails(String xml,String elementName)
 {
	 Hashtable<String , Hashtable<String, String>> h = new Hashtable<String, Hashtable<String,String>>();
	 Vector<Hashtable<String, String>> vec = new Vector<Hashtable<String,String>>();
  try {
	  	
	    
	    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	    
	    Document doc = dBuilder.parse(new StringBufferInputStream(xml));
	    doc.getDocumentElement().normalize();
	 
	    System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
	    NodeList nList = doc.getElementsByTagName(elementName);
	    System.out.println("-----------------------");
	    System.out.println(nList.getLength());
	    for (int temp = 0; temp < nList.getLength(); temp++) {
	    	
	       Node nNode = nList.item(temp);	    
	       if (nNode.getNodeType() == Node.ELEMENT_NODE) {
	    	   Hashtable<String, String> elems= new Hashtable<String, String>();
	          Element eElement = (Element) nNode;
	          
	          visitElement(eElement, elems);
	          vec.add(elems);
	          System.out.println("hello");
	          
	         
	        }
	    }
	  } catch (Exception e) {
	    e.printStackTrace();
	  }
return vec;
 }
 private static String getTagValue(String sTag, Element eElement){
	    NodeList nlList= eElement.getElementsByTagName(sTag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0); 
	 
	    return nValue.getNodeValue();    
	 }
static void visitElement(org.w3c.dom.Element element,Hashtable<String, String> hs ) {
     // <caption>
     // element.getValue();
     // element.getValue();
     org.w3c.dom.NodeList nodes = element.getChildNodes();
     for (int i = 0; i < nodes.getLength(); i++) {
         org.w3c.dom.Node node = nodes.item(i);
         switch (node.getNodeType()) {
             case org.w3c.dom.Node.CDATA_SECTION_NODE:
            	 
            	 
                 // ((org.w3c.dom.CDATASection)node).getData();
                 break;
             case org.w3c.dom.Node.ELEMENT_NODE:
                 org.w3c.dom.Element nodeElement = (org.w3c.dom.Element) node;
                 visitElement(nodeElement, hs);
                 break;
             case org.w3c.dom.Node.PROCESSING_INSTRUCTION_NODE:
                 // ((org.w3c.dom.ProcessingInstruction)node).getTarget();
                 // ((org.w3c.dom.ProcessingInstruction)node).getData();
                 break;
             case org.w3c.dom.Node.TEXT_NODE:
            	 hs.put(node.getParentNode().getNodeName(), ((org.w3c.dom.Text)node).getData());
                // System.out.println(((org.w3c.dom.Text)node).getData());
                 break;
         }
     }
 }
}
