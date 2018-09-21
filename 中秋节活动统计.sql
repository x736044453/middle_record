#每日车主扫码人数
SELECT COUNT(UUID) AS COUNT ,uid FROM giving_traffic_count WHERE create_date>'2018-9-15' AND create_date<'2018-9-16' GROUP BY uid

#每日答题人数
SELECT COUNT(1)AS COUNT FROM middle_user_behavior WHERE TYPE=3 AND create_date>'2018-9-15' AND create_date<'2018-9-16' GROUP BY uid

#每日进入活动页面的人数
SELECT COUNT(1)AS COUNT FROM middle_user_behavior WHERE TYPE=0 AND create_date>'2018-9-15' AND create_date<'2018-9-16' GROUP BY uid

#每日总扫码人数
SELECT COUNT(1) AS COUNT ,uid FROM middle_user_behavior WHERE TYPE=1 AND create_date>'2018-9-15' AND create_date<'2018-9-16' GROUP BY user_ip,uid


#每日活动下发量
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='8300000' AND create_date>='2018-9-16' AND create_date<'2018-9-17' AND version_code>=100 AND channel_id='AA1000'
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='8300000' AND create_date>='2018-9-19' AND create_date<'2018-9-20' AND version_code IN (54,79) AND channel_id='AA1000'

#每日点击banner人数
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='1800000' AND create_date>='2018-9-16' AND create_date<'2018-9-17' AND version_code>=100 AND channel_id='AA1000'
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='1800000' AND create_date>='2018-9-19' AND create_date<'2018-9-20' AND version_code IN (54,79) AND channel_id='AA1000'

#每日车主详情
SELECT a.name,a.phone,a.iccdid,a.imei,b.count FROM USER a,(SELECT COUNT(UUID) AS COUNT ,uid FROM giving_traffic_count WHERE create_date>'2018-9-15' AND create_date<'2018-9-16' GROUP BY uid)b WHERE a.id=b.uid




#车主扫码人数
SELECT COUNT(UUID) AS COUNT ,uid FROM giving_traffic_count WHERE create_date>'2018-9-14' AND create_date<'2018-9-17' GROUP BY uid

#答题人数
SELECT COUNT(1)AS COUNT FROM middle_user_behavior WHERE TYPE=3 AND create_date>'2018-9-15' AND create_date<'2018-9-17' GROUP BY uid

#进入活动页面的人数
SELECT COUNT(1)AS COUNT FROM middle_user_behavior WHERE TYPE=0 AND create_date>'2018-9-15' AND create_date<'2018-9-17' GROUP BY uid

#总扫码人数
SELECT COUNT(1) AS COUNT ,uid FROM middle_user_behavior WHERE TYPE=1 AND create_date>'2018-9-15' AND create_date<'2018-9-17' GROUP BY user_ip,uid


#活动下发量
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='8300000' AND create_date>='2018-9-14' AND create_date<'2018-9-17' AND version_code>=100 AND channel_id='AA1000'
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='8300000' AND create_date>='2018-9-19' AND create_date<'2018-9-20' AND version_code IN (54,79) AND channel_id='AA1000'

#点击banner人数
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='1800000' AND create_date>='2018-9-14' AND create_date<'2018-9-17' AND version_code>=100 AND channel_id='AA1000'
SELECT COUNT(DISTINCT user_id) FROM operation_log WHERE TYPE='1800000' AND create_date>='2018-9-19' AND create_date<'2018-9-21' AND version_code IN (54,79) AND channel_id='AA1000'

#车主详情
SELECT a.name,a.phone,a.iccdid,a.imei,b.count FROM USER a,(SELECT COUNT(UUID) AS COUNT ,uid FROM giving_traffic_count WHERE create_date>'2018-9-14' GROUP BY uid)b WHERE a.id=b.uid


	进入活动页面的人数	点击选项按钮（回答了一道题）的人数	车主扫码人数   
       57	                47	                              15


