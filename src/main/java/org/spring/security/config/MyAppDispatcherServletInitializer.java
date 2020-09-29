package org.spring.security.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyAppDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { AppConfig.class };   /** in web.xml - dispatcherServlet definition **/
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };   /** in web.xml - dispatcherServlet url mapping **/
	}

}
