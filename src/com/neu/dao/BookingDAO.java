package com.neu.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.neu.entity.Booking;

/**
 	* A data access object (DAO) providing persistence and search support for Booking entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.neu.entity.Booking
  * @author MyEclipse Persistence Tools 
 */

public class BookingDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(BookingDAO.class);
		//property constants
	public static final String AREA = "area";
	public static final String CARTYPE = "cartype";
	public static final String CONTATC = "contatc";
	public static final String PHONE = "phone";
	public static final String STATUS = "status";



	protected void initDao() {
		//do nothing
	}
    
    public void save(Booking transientInstance) {
        log.debug("saving Booking instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Booking persistentInstance) {
        log.debug("deleting Booking instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Booking findById( java.math.BigDecimal id) {
        log.debug("getting Booking instance with id: " + id);
        try {
            Booking instance = (Booking) getHibernateTemplate()
                    .get("com.neu.entity.Booking", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Booking instance) {
        log.debug("finding Booking instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Booking instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Booking as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByArea(Object area
	) {
		return findByProperty(AREA, area
		);
	}
	
	public List findByCartype(Object cartype
	) {
		return findByProperty(CARTYPE, cartype
		);
	}
	
	public List findByContatc(Object contatc
	) {
		return findByProperty(CONTATC, contatc
		);
	}
	
	public List findByPhone(Object phone
	) {
		return findByProperty(PHONE, phone
		);
	}
	
	public List findByStatus(Object status
	) {
		return findByProperty(STATUS, status
		);
	}
	

	public List findAll() {
		log.debug("finding all Booking instances");
		try {
			String queryString = "from Booking";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Booking merge(Booking detachedInstance) {
        log.debug("merging Booking instance");
        try {
            Booking result = (Booking) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Booking instance) {
        log.debug("attaching dirty Booking instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Booking instance) {
        log.debug("attaching clean Booking instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static BookingDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (BookingDAO) ctx.getBean("BookingDAO");
	}
	
	
	/*
	 * ∑÷“≥≤È—Ø
	 */
	public List findBypage(int pageNum){
		
		final int firstResult = pageNum*5-5;
		final int maxResults = 5;
		List list = getHibernateTemplate().executeFind(
				new HibernateCallback(){
					public Object doInHibernate(org.hibernate.Session session)throws HibernateException, SQLException {					
						String hql = "from Booking order by mid desc";
						Query query = session.createQuery(hql);
						query.setFirstResult(firstResult);
						query.setMaxResults(maxResults);
						List result = query.list();
						return result;
					}						
				}						
		);
		return list;		
	}
	
	public void saveMessage(Booking booking){
		
		getHibernateTemplate().save(booking);		
	}
	
	public void updateMessage(Booking booking){
		
		getHibernateTemplate().update(booking);
	}

	public List finBymid(int mid){
		
		String hql = "from Booking where mid=?";
		List list = getHibernateTemplate().find(hql,mid);
		
		return list;
	}
	
}