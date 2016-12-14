package config;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import config.WebFlowConfig;
public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	 
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] { WebConfig.class, WebFlowConfig.class };
    }
  
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return null;
    }
  
    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
 
}

