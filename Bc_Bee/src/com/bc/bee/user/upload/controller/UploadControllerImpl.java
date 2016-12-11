package com.bc.bee.user.upload.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bc.bee.entity.PUser;
import com.bc.bee.entity.TUser;
import com.bc.bee.user.upload.service.UploadServiceImpl;

@Controller
@RequestMapping("upload")
public class UploadControllerImpl {
	
	@Resource
	private UploadServiceImpl uploadserviceimpl;
	
	@RequestMapping("/toUpload")
    public String toUpload() {
        return "/upload";
    }
 
    /***
     * 保存文件
     *
     * @param file
     * @return
     */
    private boolean saveFile(HttpServletRequest request, MultipartFile file) {
    	HttpSession session = request.getSession();
        // 判断文件是否为空
        if (!file.isEmpty()) {
            try {
                // 保存的文件路径(如果用的是Tomcat服务器，文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中  )
                String filePath = request.getSession().getServletContext()
                 .getRealPath("/") + "upload/" + file.getOriginalFilename();
            	System.out.println("path"+filePath);
                File saveDir = new File(filePath);
                if (!saveDir.getParentFile().exists())
                    saveDir.getParentFile().mkdirs();
                 
                // 转存文件
                file.transferTo(saveDir);
                PUser puser = (PUser)session.getAttribute("parent");
                puser.setPic(file.getOriginalFilename());
                System.out.println("会话中的路径"+puser.getPic());
                session.setAttribute("parent", puser);
                this.uploadserviceimpl.upload(puser.getPUId(), filePath);
                //System.out.println(filePath);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }
    private boolean studentsaveFile(HttpServletRequest request, MultipartFile file) {
    	HttpSession session = request.getSession();
        // 判断文件是否为空
        if (!file.isEmpty()) {
            try {
                // 保存的文件路径(如果用的是Tomcat服务器，文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中  )
                String filePath = request.getSession().getServletContext()
                 .getRealPath("/") + "upload/" + file.getOriginalFilename();
            	System.out.println("path"+filePath);
                File saveDir = new File(filePath);
                if (!saveDir.getParentFile().exists())
                    saveDir.getParentFile().mkdirs();
                 
                // 转存文件
                file.transferTo(saveDir);
                TUser tuser = (TUser)session.getAttribute("student");
                tuser.setPic(file.getOriginalFilename());
                System.out.println("会话中的路径"+tuser.getPic());
                session.setAttribute("student", tuser);
                this.uploadserviceimpl.uploadstudent(tuser.getTUId(), filePath);
                //System.out.println(filePath);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }
 
    /**
     * 上传图片
     *
     * @param files
     * @param request
     * @return
     */
    @RequestMapping("/filesUpload")
    public String filesUpload(@RequestParam("headPic") MultipartFile[] files,
            HttpServletRequest request) {
        if (files != null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                // 保存文件
                saveFile(request, file);
            }
        }
        // 重定向
        return "index";
    }
 
    @RequestMapping("/studentfilesUpload")
    public String studentfilesUpload(@RequestParam("headPic") MultipartFile[] files,
            HttpServletRequest request) {
        if (files != null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                // 保存文件
                studentsaveFile(request, file);
            }
        }
        // 重定向
        return "index";
    }
}
