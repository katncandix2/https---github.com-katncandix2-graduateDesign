package com.gaussic.TestUnit;

import java.io.InputStream;
import java.util.List;

/**
 * Created by ACER on 2017/2/22.
 */
public interface XmlPlayer  {
    <T>List<T> xmlParse(InputStream inputStream);
    <T>String  xmlParse(List<T> list);
    void  hello();
}
