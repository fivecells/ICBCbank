
package cn.com.webxml;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 *
 *
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="getFundCodeNameStringResult" type="{http://WebXml.com.cn/}ArrayOfString" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "getFundCodeNameStringResult"
})
@XmlRootElement(name = "getFundCodeNameStringResponse")
public class GetFundCodeNameStringResponse {

    protected ArrayOfString getFundCodeNameStringResult;

    /**
     *
     * @return
     *     possible object is
     *     {@link ArrayOfString }
     *     
     */
    public ArrayOfString getGetFundCodeNameStringResult() {
        return getFundCodeNameStringResult;
    }

    /**
     *
     * @param value
     *     allowed object is
     *     {@link ArrayOfString }
     *     
     */
    public void setGetFundCodeNameStringResult(ArrayOfString value) {
        this.getFundCodeNameStringResult = value;
    }

}
