package org.hi.framework.web.struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.NoParameters;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.hi.common.util.DesUtils;
import org.hi.common.util.StringUtils;
import org.hi.framework.HiConfigHolder;

public class ParametersInterceptor extends com.opensymphony.xwork2.interceptor.ParametersInterceptor
{
  public String doIntercept(ActionInvocation invocation)
    throws Exception
  {
    if ((invocation.getAction() instanceof NoParameters)) {
      return super.doIntercept(invocation);
    }
    if ((!HiConfigHolder.getPublished()) || (!HiConfigHolder.getUrlEncrypt())) {
      return super.doIntercept(invocation);
    }

    ActionContext ac = invocation.getInvocationContext();
    HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get("com.opensymphony.xwork2.dispatcher.HttpServletRequest");
    String urlQueryString = request.getQueryString();
    if ((urlQueryString == null) || (urlQueryString.equals(""))) {
      return super.doIntercept(invocation);
    }
    if (StringUtils.isIncludes(urlQueryString, "=,&")) {
      return super.doIntercept(invocation);
    }

    DesUtils des = new DesUtils();
    String parametersStr = des.decrypt(urlQueryString);
    String[] parameterStr = parametersStr.split("[&]");
    Map parameters = ac.getParameters();
    for (int i = 0; i < parameterStr.length; i++) {
      String[] keyValue = parameterStr[i].split("[=]");

      if (keyValue.length >= 2)
      {
        String key = keyValue[0];
        String value = keyValue[1];
        if ((key != null) && (value != null) && (key.length() != 0) && (value.length() != 0))
        {
          parameters.put(key, value);
        }
      }
    }
    parameters.remove(urlQueryString);
    parameters.put("org.hi.framework.web.webwork.BaseAction.uncode_parameter_key", urlQueryString);

    return super.doIntercept(invocation);
  }
}