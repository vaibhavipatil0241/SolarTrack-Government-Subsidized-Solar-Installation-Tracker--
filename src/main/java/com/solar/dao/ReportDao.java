package com.solar.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.solar.model.Report;

public class ReportDao {
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public long insertReport(Report report){
		long l = (Long) this.hibernateTemplate.save(report);
		
		return l;
	}
	
	
}
