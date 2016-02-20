package com.CodeFreaks.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.CodeFreaks.Model.CategoryModel;
import com.CodeFreaks.Model.StreamModel;

@Transactional
@Repository
public class StreamDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void addStream(StreamModel streamModel) {
		// add Stream
		System.out.println("on sttreamDao addstream()");
		Session session=sessionFactory.openSession();
		session.save(streamModel);
		session.flush();
		System.out.println("stream insert ....done");
	}

	public List<StreamModel> viewStream() {
		// view stream
		List<StreamModel> liststream=new ArrayList<StreamModel>();
		System.out.println("on sttreamDao viewstream()");
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from stream");
		liststream=q.list();
		System.out.println(+liststream.size()+ " record found...stream view ....done");
		return liststream;
	}

	public StreamModel searchStreamById(int streamID) {
		// TODO Auto-generated method stub
		StreamModel streamModel=null;
		try{
			System.out.println("searchcategorybyid called");
			Session session=sessionFactory.getCurrentSession();
			streamModel=(StreamModel)session.load(StreamModel.class, streamID);
			System.out.println(streamModel.getStreamName());
		}catch(Exception e){
			e.printStackTrace();
		}
		return streamModel;
	}

	public void editStream(StreamModel streamModel) {
		// TODO Auto-generated method stub
		try {
			System.out.println("updatecategory method called");
			Session session = this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(streamModel);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void deleteStream(StreamModel streamModel) {
		// delete stream
		try{
			System.out.println("delete stream method called");
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(streamModel);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
