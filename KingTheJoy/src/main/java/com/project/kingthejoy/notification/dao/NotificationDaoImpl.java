package com.project.kingthejoy.notification.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.kingthejoy.notification.dto.GetNewNotificationDto;
import com.project.kingthejoy.notification.dto.NotificationCheckDto;
import com.project.kingthejoy.notification.dto.NotificationDto;


@Repository
public class NotificationDaoImpl implements NotificationDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<NotificationDto> selectNotificationList(int school_seq) {
		System.out.println(school_seq);
		return sqlSession.selectList(NAMESPACE + "selectList", school_seq);
	}

	@Override
	public NotificationDto selectNotificationOne(int notification_seq) {
		NotificationDto notificationDto = null;
		try {
			notificationDto = sqlSession.selectOne(NAMESPACE + "selectOne", notification_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return notificationDto;
	}

	@Override
	public int insertNotification(NotificationDto notificationDto) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE + "insert", notificationDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int updateNotification(NotificationDto notificationDto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE + "update", notificationDto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
	}

	@Override
	public int deleteNotification(int notification_seq) {
		int res = 0;
		try {
			res = sqlSession.delete(NAMESPACE + "delete", notification_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int insertNotificationCheck(int notification_seq, int school_seq, String notification_title) {
		List<Integer> list = new ArrayList<Integer>();
		int res = 0;
		list = sqlSession.selectList(NAMESPACE + "selectMember", school_seq);
		if(list.size()>2) {
			for(int i=list.size()-1; i>0; i--) {
				if(list.get(i)==list.get(i-1)) {
					list.remove(i);
				}
			}
		}else {
			if(list.get(0)!=list.get(1)) {
				list.remove(1);
			}
		}
		
		List<NotificationCheckDto> checkList = new ArrayList<NotificationCheckDto>();
		for (int i = 0; i < list.size(); i++) {
			NotificationCheckDto dto = new NotificationCheckDto();
			dto.setNotification_seq(notification_seq);
			dto.setMember_flag(0);
			dto.setMember_seq(list.get(i));
			dto.setSchool_seq(school_seq);
			dto.setNotification_title(notification_title);
			checkList.add(dto);
		}
		try {
			res = sqlSession.insert(NAMESPACE + "insertCheck", checkList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public GetNewNotificationDto newNotification() {
		return sqlSession.selectOne(NAMESPACE + "selectLastNotification");
	}

	@Override
	public int selectWritten(NotificationCheckDto checkDto) {

		int res = 0;
		try {
			res = sqlSession.selectOne(NAMESPACE + "selectWritten", checkDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int updateWritten(NotificationCheckDto checkDto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE + "updateWritten", checkDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public String selectSchoolName(int school_seq) {
		String school_name= null;
		try {
			school_name = sqlSession.selectOne(NAMESPACE + "selectSchoolName", school_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return school_name;
	}

	@Override
	public int countList(int school_seq) {
		return sqlSession.selectOne(NAMESPACE+ "countList", school_seq);
	}

	@Override
	public List<NotificationDto> selectRollingNotificationList(int school_seq) {
		return sqlSession.selectList(NAMESPACE+"selectRollingNotificationList", school_seq);
	}

	@Override
	public List<NotificationCheckDto> selectNotificationCheckList(int school_seq) {
		return sqlSession.selectList(NAMESPACE+"selectNotificationCheckList",school_seq);
	}

	@Override
	public List<String> selectMailAddress(int notification_seq) {
		return sqlSession.selectList(NAMESPACE+"selectMailAddress",notification_seq);
	}

}