
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
 *         &lt;element name="getOpenFundStringByCodeResult" type="{http://WebXml.com.cn/}ArrayOfString" minOccurs="0"/&gt;
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
    "getOpenFundStringByCodeResult"
})
@XmlRootElement(name = "getOpenFundStringByCodeResponse")
public class GetOpenFundStringByCodeResponse {

    protected ArrayOfString getOpenFundStringByCodeResult;

    /**
     *
     * @return
     *     possible object is
     *     {@link ArrayOfString }
     *     
     */
    public ArrayOfString getGetOpenFundStringByCodeResult() {
        return getOpenFundStringByCodeResult;
    }

    /**
     *
     * @param value
     *     allowed object is
     *     {@link ArrayOfString }
     *     
     */
    public void setGetOpenFundStringByCodeResult(ArrayOfString value) {
        this.getOpenFundStringByCodeResult = value;
    }

}
