package com.CodeFreaks.Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="stream")
public class StreamModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="StreamID")
	private int streamID;
	
	@Column(name="StreamName")
	private String streamName;

	@Column(name="StreamDate")
	private Date streamDate;
	
	public Date getStreamDate() {
		return streamDate;
	}

	public void setStreamDate(Date streamDate) {
		this.streamDate = streamDate;
	}

	public int getStreamID() {
		return streamID;
	}

	public void setStreamID(int streamID) {
		this.streamID = streamID;
	}

	public String getStreamName() {
		return streamName;
	}

	public void setStreamName(String streamName) {
		this.streamName = streamName;
	}
}
