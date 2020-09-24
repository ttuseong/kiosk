package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.AdminToppingDao;
import com.javaex.vo.ToppingVo;

@Service
public class AdminToppingService {
	@Autowired
	AdminToppingDao adminToppingDao;

	// 토핑 리스트 서비스
	public List<ToppingVo> adminToppingList(String toppingName) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("toppingName", toppingName);
		
		List<ToppingVo> toppingList = adminToppingDao.adminToppingSelectList(map);
		
		return toppingList;
	}
	
	//토핑 추가하기 서비스
	public ToppingVo adminToppingAdd(String toppingName, int toppingPrice, MultipartFile file) {
		ToppingVo toppingVo;
		ToppingVo toVo;
		
		//중복방지 호출
		if(toppingNameCheck(toppingName, 0) == 0) { //추가해줄때 no를 0으로 일단 받아온다.
			
			//이미지 넣어주기
			//카테고리같은 경우 파일에 값이 있는지 없는지 확인할때 카테고리에 이미지를 안넣어주는 경우 default값을 넣어줬어 1이면 값이있고 0이면 값이없음으로
			//사용자가 올린 파일네임을 읽어온다 파일이 없으면 기본이미지 넣어주기
			//파일이름값이 있으면 저장 파일이 없으면 icon1.png로 넣어주면 돼
			//1. 파일이 있는지 없는지 판단
			if(file.getOriginalFilename().equals("")) { //equals을 넣은경우는 문자열""=(icon1.png)은 길이가 정해져있지않으니까 equals로 값을 비교한다
				//3. 없는 경우
				System.out.println("여긴 오시나요");
				toppingVo = new ToppingVo(toppingName, toppingPrice, "icon1.png"); //생성자를 호출할거야 3개에 맞는 생성자 만들어주기 없으면  생성자를 안만들어주면 일일이 set을 통해 값을 넣어줘야함
			}else{
				System.out.println("사기치지마");
				//2. 있는 경우
				//파일이름이 겹치면 안된다
				String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")); //첫번째는 확장자만 뽑아오기 
				//exName 확장자 확장자는 이름이랑 같이붙어잇어 ex)재학.jpg 
				String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;//파일이름 안겹치게 랜덤으로해야함
				//확장자를 뽑아왓으니 새로운 이름을 만들자 시간/랜덤이름/확장자
				toppingVo = new ToppingVo(toppingName, toppingPrice, saveName);
				//생성자를 넣어주는 이유는 뽑아온값을 미리 넣어주려고
				try {
					byte[] fileData = file.getBytes();
					
					OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName); //경로 그리고 saveName으로 이름 저장할것
					BufferedOutputStream bout = new BufferedOutputStream(out);
					//저장준비
					bout.write(fileData);//실제저장
					bout.close();//저장완료후 이제 닫아준다
				} catch (IOException e) {//문제가생겼을경우 catch에서 알려줌
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			System.out.println("여긴 오시나요");
			toppingVo.setStoreNo(1); //우선 kfc만 넣어주기
			
			System.out.println(toppingVo.toString());
			
			int toppingAdd = adminToppingDao.adminToppingInsert(toppingVo); //값을 저장한 vo
			
			System.out.println(toppingAdd); //return된 값은 실행결과의 처리된 갯수. 0인경우는 돌아는 가는데 변한건없다 그럴경우 한번 판단하주려고
			
			System.out.println(toppingVo.toString()); //아직 topping_seq.nextval을 안 읽어옴
			
			int toppingNo = toppingVo.getToppingNo(); //insert할때 selectKey로 미리 번호를 받아오기위해
			
			System.out.println(toppingVo.toString()); //이제 읽어옴
			
			toVo = adminToppingDao.selectToppingOne(toppingNo);	//읽어오기
			
		} else {
			toVo = new ToppingVo(); //기본생성자 기본생성자면 vo에있는 기본생성자로 간다 문자열은 null 인트형은 모조리 0 왜냐 보내준게없으니까!!!
		}
		return toVo;
	}
	
	//중복체크를 하기위한 서비스
	public int toppingNameCheck(String toppingName, int toppingNo) {
		System.out.println("토핑 중복체크 서비스");
		
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("toppingName", toppingName);
        map.put("toppingNo", toppingNo);
		
		return adminToppingDao.selectToppingNameCheck(map);
	}
	
	//토핑삭제하기 서비스
	public int adminToppingDelete(int toppingNo) {
		System.out.println("토핑 삭제 서비스");
		int cnt = adminToppingDao.deleteTopping(toppingNo);
		
		return cnt; 
	}
	
	//토핑 타이틀 누르면 값 읽어오고 수정하기
	public int adminToppingUpdate(String toppingName, int toppingPrice, int toppingNo, MultipartFile file) {
		System.out.println("토핑 수정 서비스");
		ToppingVo toppingVo;
		int result;
		
		//중복방지 호출
		if(toppingNameCheck(toppingName,toppingNo) == 0) {
			
			if(file.getOriginalFilename().equals("")) { //equals을 넣은경우는 문자열""=(icon1.png)은 길이가 정해져있지않으니까 equals로 값을 비교한다
				//3. 없는 경우
				System.out.println("수정 오나요");
				toppingVo = new ToppingVo(toppingName, toppingPrice, toppingNo, ""); //토핑 이미지 null로 넣어주기
			}else{
				System.out.println("오면서 왜 안오는척");
				//2. 있는 경우
				//파일이름이 겹치면 안된다
				String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")); //첫번째는 확장자만 뽑아오기 
				//exName 확장자 확장자는 이름이랑 같이붙어잇어 ex)재학.jpg 
				String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;//파일이름 안겹치게 랜덤으로해야함
				//확장자를 뽑아왓으니 새로운 이름을 만들자 시간/랜덤이름/확장자
				toppingVo = new ToppingVo(toppingName, toppingPrice, saveName);
				//생성자를 넣어주는 이유는 뽑아온값을 미리 넣어주려고
				try {
					byte[] fileData = file.getBytes();
					
					OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName); //경로 그리고 saveName으로 이름 저장할것 경로가 이상한건지 아니면 뭐때문인지 아직몰라... 일단 리눅스에 오류가 떴을거임..(war파일생성은 완료)
					BufferedOutputStream bout = new BufferedOutputStream(out);
					//저장준비
					bout.write(fileData);//실제저장
					bout.close();//저장완료후 이제 닫아준다
				} catch (IOException e) {//문제가생겼을경우 catch에서 알려줌
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			System.out.println("토핑 수정하기");
			toppingVo.setStoreNo(1); //우선 kfc만 넣어주기
			
			System.out.println(toppingVo.toString());
			
			result = adminToppingDao.adminToppingUpdate(toppingVo); //vo안에는 보내줄 값들이 들어가있고 이제 xml을 통해서 성공한 갯수가 result안에 들어가있다
			
		} else {
			System.out.println("중복있는경우");
			result = 0;
		}

		return result;
	}
}
