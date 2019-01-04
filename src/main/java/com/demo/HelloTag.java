package com.demo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;


public class HelloTag  extends TagSupport {
    private String value;

    @Override
    public int doEndTag() throws JspException {
        try {
            this.pageContext.getOut().println("Hello, " + value);
        } catch (Exception e) {
            throw new JspException(e);
        }
        return EVAL_PAGE;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
