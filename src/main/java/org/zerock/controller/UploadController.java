package org.zerock.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UploadController {
	@GetMapping("uploadForm")
	public void uploadForm() {
		log.info("upload Form");
	}

	@PostMapping("uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {

		String uploadFolder = "C:\\Temp";

		for (MultipartFile mPF : uploadFile) {
			log.info("---------------------------------------");
			log.info("Upload File Name : " + mPF.getOriginalFilename());
			log.info("Upload File Size : " + mPF.getSize());

			File saveFile = new File(uploadFolder, mPF.getOriginalFilename());

			try {
				mPF.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			} // catch end
		} // end for
	}

	@GetMapping("uploadAjax")
	public void uploadAjax() {
		log.info("Upload Ajax");
	}

	@PostMapping("uploadAjaxAction")
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		log.info("update ajax post..............");

		String uploadFolder = "C:\\Temp";

		for (MultipartFile mPF : uploadFile) {
			log.info("---------------------------------------");
			log.info("Upload File Name : " + mPF.getOriginalFilename());
			log.info("Upload File Size : " + mPF.getSize());

			String uploadFileName = mPF.getOriginalFilename();

			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("Only file name: " + uploadFileName);
			
			File saveFile = new File(uploadFolder, uploadFileName);
			try {
				mPF.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			} // catch end
		}
	}
}
