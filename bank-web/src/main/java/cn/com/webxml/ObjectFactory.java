
package cn.com.webxml;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the cn.com.webxml package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _DataSet_QNAME = new QName("http://WebXml.com.cn/", "DataSet");
    private final static QName _ArrayOfString_QNAME = new QName("http://WebXml.com.cn/", "ArrayOfString");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: cn.com.webxml
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetFundCodeNameDataSetResponse }
     * 
     */
    public GetFundCodeNameDataSetResponse createGetFundCodeNameDataSetResponse() {
        return new GetFundCodeNameDataSetResponse();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSetResponse }
     * 
     */
    public GetOpenFundDataSetResponse createGetOpenFundDataSetResponse() {
        return new GetOpenFundDataSetResponse();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSetByCodeResponse }
     * 
     */
    public GetOpenFundDataSetByCodeResponse createGetOpenFundDataSetByCodeResponse() {
        return new GetOpenFundDataSetByCodeResponse();
    }

    /**
     * Create an instance of {@link GetFundCodeNameDataSet }
     * 
     */
    public GetFundCodeNameDataSet createGetFundCodeNameDataSet() {
        return new GetFundCodeNameDataSet();
    }

    /**
     * Create an instance of {@link GetFundCodeNameDataSetResponse.GetFundCodeNameDataSetResult }
     * 
     */
    public GetFundCodeNameDataSetResponse.GetFundCodeNameDataSetResult createGetFundCodeNameDataSetResponseGetFundCodeNameDataSetResult() {
        return new GetFundCodeNameDataSetResponse.GetFundCodeNameDataSetResult();
    }

    /**
     * Create an instance of {@link GetFundCodeNameString }
     * 
     */
    public GetFundCodeNameString createGetFundCodeNameString() {
        return new GetFundCodeNameString();
    }

    /**
     * Create an instance of {@link GetFundCodeNameStringResponse }
     * 
     */
    public GetFundCodeNameStringResponse createGetFundCodeNameStringResponse() {
        return new GetFundCodeNameStringResponse();
    }

    /**
     * Create an instance of {@link ArrayOfString }
     * 
     */
    public ArrayOfString createArrayOfString() {
        return new ArrayOfString();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSet }
     * 
     */
    public GetOpenFundDataSet createGetOpenFundDataSet() {
        return new GetOpenFundDataSet();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSetResponse.GetOpenFundDataSetResult }
     * 
     */
    public GetOpenFundDataSetResponse.GetOpenFundDataSetResult createGetOpenFundDataSetResponseGetOpenFundDataSetResult() {
        return new GetOpenFundDataSetResponse.GetOpenFundDataSetResult();
    }

    /**
     * Create an instance of {@link GetOpenFundString }
     * 
     */
    public GetOpenFundString createGetOpenFundString() {
        return new GetOpenFundString();
    }

    /**
     * Create an instance of {@link GetOpenFundStringResponse }
     * 
     */
    public GetOpenFundStringResponse createGetOpenFundStringResponse() {
        return new GetOpenFundStringResponse();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSetByCode }
     * 
     */
    public GetOpenFundDataSetByCode createGetOpenFundDataSetByCode() {
        return new GetOpenFundDataSetByCode();
    }

    /**
     * Create an instance of {@link GetOpenFundDataSetByCodeResponse.GetOpenFundDataSetByCodeResult }
     * 
     */
    public GetOpenFundDataSetByCodeResponse.GetOpenFundDataSetByCodeResult createGetOpenFundDataSetByCodeResponseGetOpenFundDataSetByCodeResult() {
        return new GetOpenFundDataSetByCodeResponse.GetOpenFundDataSetByCodeResult();
    }

    /**
     * Create an instance of {@link GetOpenFundStringByCode }
     * 
     */
    public GetOpenFundStringByCode createGetOpenFundStringByCode() {
        return new GetOpenFundStringByCode();
    }

    /**
     * Create an instance of {@link GetOpenFundStringByCodeResponse }
     * 
     */
    public GetOpenFundStringByCodeResponse createGetOpenFundStringByCodeResponse() {
        return new GetOpenFundStringByCodeResponse();
    }

    /**
     * Create an instance of {@link DataSet }
     * 
     */
    public DataSet createDataSet() {
        return new DataSet();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DataSet }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "DataSet")
    public JAXBElement<DataSet> createDataSet(DataSet value) {
        return new JAXBElement<DataSet>(_DataSet_QNAME, DataSet.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfString }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "ArrayOfString")
    public JAXBElement<ArrayOfString> createArrayOfString(ArrayOfString value) {
        return new JAXBElement<ArrayOfString>(_ArrayOfString_QNAME, ArrayOfString.class, null, value);
    }

}
