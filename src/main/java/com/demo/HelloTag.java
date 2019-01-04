package com.demo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;


public class HelloTag  extends TagSupport {

    //value变量要与.tld文件中定义的标签属性名一致
    private String value;

    @Override
    public int doEndTag() throws JspException {
        try {
            this.pageContext.getOut().println("Hello, " + value);
        } catch (Exception e) {
            throw new JspException(e);
        }
        //SKIP_PAGE：自定义标签执行完后JSP页面剩余的部分不再执行
        //EVAL_PAGE：自定义标签执行完后会继续执行JSP页面中记下来的部分
        return EVAL_PAGE;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
