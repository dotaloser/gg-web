package com.dota.gg.test.tools;

import org.mortbay.jetty.Server;
import org.mortbay.jetty.webapp.WebAppContext;

/**
 * 使用Jetty运行调试Web应用
 * 在Console输入回车停止服务
 * @Class Name Start
 * @author
 * @Create In
 */
public class Start {

	public static final int PORT = 8087;
	public static final String CONTEXT = "/gg";
	public static final String BASE_URL = "http://localhost:8087/gg";

	public static void main(String[] args) throws Exception {
		
		System.setProperty("java.awt.headless", "true");
		Server server = buildDebugServer(PORT, CONTEXT);
		server.start();
		server.join();
	}
	
	public static Server buildDebugServer(int port, String context) {
		Server server = new Server(port);
		WebAppContext webContext = new WebAppContext("src/main/webapp", context);
		
		webContext.setClassLoader(Thread.currentThread().getContextClassLoader());
		server.setHandler(webContext);
		server.setStopAtShutdown(true);
		return server;
	}
}
