package edu.tongji.sse.ibm.hibernateUtils;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

final public class HibernateUtil {
	private static SessionFactory sessionFactory = HibernateSessionFactory.getSessionFactory();

	private HibernateUtil() {
	};

	@SuppressWarnings("rawtypes")
	public static List executeQuery(String hql, String[] params) {
		Session session = null;
		Transaction ts = null;
		List list = null;

		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			Query query = session.createQuery(hql);
			if (params != null && params.length > 0)
				for (int i = 0; i < params.length; i++) {
					query.setString(i, params[i]);
				}
			list = query.list();
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return list;
	}
	
	public static List executeQuery(String hql, String[] params,int first,int max) {
		Session session = null;
		Transaction ts = null;
		List list = null;

		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			Query query = session.createQuery(hql);
			if (params != null && params.length > 0)
				for (int i = 0; i < params.length; i++) {
					query.setString(i, params[i]);
				}
			query.setFirstResult(first);
			query.setMaxResults(max);
			list = query.list();
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return list;
	}

	public static Object uniqueQuery(String hql, String[] params) {
		Session session = null;
		Transaction ts = null;
		Object obj = null;
		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			Query query = session.createQuery(hql);
			if (params != null && params.length > 0)
				for (int i = 0; i < params.length; i++) {
					query.setString(i, params[i]);
				}
			obj = query.uniqueResult();
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return obj;
	}

	public static boolean saveObject(Object obj) {
		Session session = null;
		Transaction ts = null;
		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			session.save(obj);
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
			return false;
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return true;
	}

	public static boolean deleteObject(Object obj) {
		Session session = null;
		Transaction ts = null;
		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			session.delete(obj);
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
			return false;
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return true;
	}
	
	public static boolean updateObject(Object obj) {
		Session session = null;
		Transaction ts = null;
		try {
			session = sessionFactory.openSession();
			ts = session.beginTransaction();
			session.update(obj);
			ts.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (ts != null) {
				ts.rollback();
			}
			return false;
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return true;
	}

}
