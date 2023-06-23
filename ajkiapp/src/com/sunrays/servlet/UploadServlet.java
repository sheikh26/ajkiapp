package com.sunrays.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class UploadServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		FilePart filePart = null;
		int maxFileSize = 100 * 1024 * 1024; // 100 MB;

		MultipartParser mp = new MultipartParser(request, maxFileSize);
		Part part;
		HashMap<String, String> params = new HashMap<String, String>();
		String fileName = null;
		
		String uploadDir = getServletContext().getRealPath("uploadDocs");


		while ((part = mp.readNextPart()) != null) {
			String name = part.getName();
			// If the part is parameter ... put the parameter in a hashmap with
			// the key as the name of the request
			if (part.isParam()) {
				// it's a parameter part
				ParamPart paramPart = (ParamPart) part;
				String value = paramPart.getStringValue();
				params.put(name, value);
			} else if (part.isFile()) { // case where
				// the part of
				// the reequest
				// is a file
				// it's a file part
				filePart = (FilePart) part;
				fileName = filePart.getFileName();
				System.out.println(uploadDir +"/"+filePart.getFilePath());
				File f = new File(uploadDir,filePart.getFilePath());
				double fileSize = filePart.writeTo(f);
			}
		}
		
		request.setAttribute("caption", params.get("caption"));
		request.setAttribute("iFile", fileName);
		RequestDispatcher rd = request.getRequestDispatcher("/UploadOutput.jsp");
		rd.forward(request, response);
	}

}
