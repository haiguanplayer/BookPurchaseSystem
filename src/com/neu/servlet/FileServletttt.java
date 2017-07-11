package com.neu.servlet;

import java.io.IOException;
import java.util.List;
import java.io.File;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.neu.service.UpdateBookService;
/*
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.servlet.Exception;
import com.servlet.File;
import com.servlet.List;
import com.servlet.String;*/

//import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

/**
 * Servlet implementation class FileServlet
 */
@WebServlet("/FileServlet")
public class FileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(!ServletFileUpload.isMultipartContent(request)){
			return;
		}
		UpdateBookService ubs=new UpdateBookService();//根据读入的文件进行更新数据库
		String path=request.getServletContext().getRealPath("/images");
		System.out.println(path);
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		try {
			List<FileItem> forms=upload.parseRequest((RequestContext) request);
			if(forms!=null && forms.size()>0){
				for (FileItem form : forms) {
					if(!form.isFormField()){
						String name=new File(form.getName()).getName();
						File file=new File(path+"/"+name);
						form.write(file);
						ubs.doUpdate(file);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("UpdateBook.jsp");
	}

}
