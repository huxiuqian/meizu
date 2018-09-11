package com.meizu.dao.impl;

import java.util.List;
import java.util.Map;

import com.meizu.dao.AdminDao;
import com.meizu.po.Health;
import com.meizu.po.NetWork;
import com.meizu.po.Parts;
import com.meizu.po.PartsType;
import com.meizu.po.Phone;
import com.meizu.utils.DBUtil;

public class AdminDaoImpl implements AdminDao {
	DBUtil db = new DBUtil();

	@Override
	public List<Map<String, Object>> getAllNetList() {
		// TODO Auto-generated method stub
		String sql = "select * from network";
		List<Map<String, Object>> list = null;
		try {
			list = db.getQueryList(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int addNet(NetWork netWork) {
		// TODO Auto-generated method stub
		String sql = "insert into network(netname) values(?)";
		int result = 0;
		try {
			result = db.execute(sql, new Object[] { netWork.getNetname() });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int updateNet(NetWork netWork) {
		// TODO Auto-generated method stub
		String sql = "update network set netname=? where networkid=?";
		int result = 0;
		try {
			result = db.execute(sql, new Object[] { netWork.getNetname(), netWork.getNetworkid() });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int deleteNet(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from network where networkid=?";
		int result = 0;
		try {
			result = db.execute(sql, new Object[] { id });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public NetWork findNetWorkById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from network where networkid=?";
		NetWork netWork = null;
		try {
			netWork = (NetWork) db.getObject(NetWork.class, sql, new Object[] { id });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return netWork;
	}

	@Override
	public List<Map<String, Object>> getAllHealthList() {
		// TODO Auto-generated method stub
		String sql = "SELECT h.healthid,h.healthname,h.healthimage,th.healthtypename,h.healthprice,h.healthcolor,h.healthfunction "
				+ "from health h,healthtype th where h.healthtypeid = th.healthtypeid;";
		List<Map<String, Object>> list = null;
		try {
			list = db.getQueryList(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int addHealth(Health health) {
		// TODO Auto-generated method stub
		String sql = "insert into health(healthname,healthtypeid,healthcolor,healthprice,healthimage,healthfunction,healthcapacity) values(?,?,?,?,?,?,?)";
		int result = 0;
		try {
			result = db.execute(sql,
					new Object[] { health.getHealthname(), health.getHealthtypeid(), health.getHealthcolor(),
							health.getHealthprice(), health.getHealthimage(), health.getHealthfunction(),
							health.getHealthcapacity() });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<Map<String, Object>> getAllHealthTypeList() {
		// TODO Auto-generated method stub
		String sql = "select * from healthtype";
		List<Map<String, Object>> list = null;
		try {
			list = db.getQueryList(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int deleteHealth(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from health where healthid=?";
		int result = 0;
		try {
			result = db.execute(sql, new Object[] { id });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<Map<String, Object>> getOrdersList() {
		// TODO Auto-generated method stub
		String sql1 = "select message2.*,health.healthname,health.healthprice "
				+ "from (select message1.*,parts.partsname,parts.partsprice "
				+ "from (select message.*,phone.pname,phone.price "
				+ "from (select orders.*,users.realname,users.tel,address.address "
				+ "from orders,users,address where orders.userid=users.userid and orders.addressid=address.addressid) as message LEFT JOIN phone ON message.phoneid=phone.phoneid) as message1 LEFT JOIN parts ON message1.pastsid=parts.partsid) "
				+ "as message2 LEFT JOIN health on message2.healthid=health.healthid";
		List<Map<String, Object>> list_all = null;
		try {
			list_all = db.getQueryList(sql1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list_all;
	}

	@Override
	public int addPhone(Phone phone) {
		String sql = "insert into phone(networkid,pname,version,storage,price,phone.describe,imgpath,color,size,system) "
				+ "values(?,?,?,?,?,?,?,?,?,?)";
		Object[] paramList = { phone.getNetworkid(), phone.getPname(), phone.getVersion(), phone.getStorage(),
				phone.getPrice(), phone.getDescribe(), phone.getImgpath(), phone.getColor(), phone.getSize(),
				phone.getSystem() };
		int result = -1;
		try {
			result = db.execute(sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List getAllPhone() {
		String sql = "select * from phone";
		List list = null;
		try {
			list = db.getQueryList(Phone.class, sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Phone getPhoneById(int phoneid) {
		String sql = "select * from phone where phoneid=?";
		Object[] paramList = { phoneid };
		Phone phone = null;
		try {
			phone = (Phone) db.getObject(Phone.class, sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phone;
	}

	@Override
	public int updatePhone(Phone phone) {
		String sql = "update phone set networkid=?,pname=?,version=?,storage=?,price=?"
				+ ",phone.describe=?,imgpath=?,color=?,size=?,system=? where phoneid=?";
		Object[] paramList = { phone.getNetworkid(), phone.getPname(), phone.getVersion(), phone.getStorage(),
				phone.getPrice(), phone.getDescribe(), phone.getImgpath(), phone.getColor(), phone.getSize(),
				phone.getSystem(), phone.getPhoneid() };
		int result = -1;
		try {
			result = db.execute(sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int deletePhone(int phoneid) {
		String sql = "delete from phone where phoneid=?";
		Object[] paramList = { phoneid };
		int result = -1;
		try {
			result = db.execute(sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List getAllPartType() {
		String sql = "select * from partstype";
		List list = null;
		try {
			list = db.getQueryList(PartsType.class, sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int addPart(Parts parts) {
		String sql = "insert into parts(partsname,partstypeid,partsprice,partscolor,partsimage,partslength,partsbattery) values(?,?,?,?,?,?,?)";
		Object[] paramList = { parts.getPartsname(), parts.getPartstypeid(), parts.getPartsprice(),
				parts.getPartscolor(), parts.getPartsimage(), parts.getPartslength(), parts.getPartsbattery() };
		int result = -1;
		try {
			result = db.execute(sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List getAllParts() {
		String sql = "select * from parts";
		List list = null;
		try {
			list = db.getQueryList(Parts.class, sql, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int deleteParts(int partsid) {
		String sql = "delete from parts where partsid=?";
		Object[] paramList = { partsid };
		int result = -1;
		try {
			result = db.execute(sql, paramList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
