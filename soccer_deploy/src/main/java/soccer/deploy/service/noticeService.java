package soccer.deploy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import soccer.deploy.dao.noticeDAO;
import soccer.deploy.dao.pageDAO;
import soccer.deploy.dto.pageDTO;
import soccer.deploy.dto.noticeDTO;

@Component
public class noticeService {
	
	@Autowired
	private noticeDAO NoticeDAO;

	public List<noticeDTO> view_content(int pagenum) {
		
		List<noticeDTO> view_content = NoticeDAO.view_content(pagenum);
		
		return view_content;
	}
	

	
}
