Return-Path: <prvs=5193919e2a=fridgecow@fb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 743D0E00DA4; Thu, 17 Oct 2019 03:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [67.231.145.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1772 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Oct 2019 03:50:06 PDT
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05BB5E00D9D
	for <poky@lists.yoctoproject.org>; Thu, 17 Oct 2019 03:50:06 -0700 (PDT)
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9HAKWuw000686
	for <poky@lists.yoctoproject.org>; Thu, 17 Oct 2019 03:20:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
	h=from : to : subject :
	date : message-id : content-type : content-transfer-encoding :
	mime-version; s=facebook;
	bh=eLyL9ywCOq8caBnNzwqP+IcrlOmlbAO/bORlQvk4JSU=; 
	b=I5DPZXOIX1dH2kvJFgaVL90dWF+ZVySkKcvYQdVzedf0d/7YKNBqv/Knqn23k+gELogL
	oaLnmpxIuq8F+M0E3jjTbWn3FA+0u171rdLRnPETxtETk/isQvGxTl//Gn82RqHVgxqY
	Z5G5ebJP8OuWk4pNFyCbk9E5JZO4COdO1Lk= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2vpcs125w0-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Thu, 17 Oct 2019 03:20:32 -0700
Received: from prn-mbx02.TheFacebook.com (2620:10d:c081:6::16) by
	prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.1.1713.5; Thu, 17 Oct 2019 03:20:07 -0700
Received: from prn-hub03.TheFacebook.com (2620:10d:c081:35::127) by
	prn-mbx02.TheFacebook.com (2620:10d:c081:6::16) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.1.1713.5; Thu, 17 Oct 2019 03:20:07 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (192.168.54.28)
	by o365-in.thefacebook.com (192.168.16.27) with Microsoft SMTP Server
	(version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
	via Frontend Transport; Thu, 17 Oct 2019 03:20:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=kAySo85i5+3712mTKzfs8CfON4A+/6r99af6P6UhqaB++X6fyqHUlanA9jMojuHaj/Epj/iJTFaxgBN2Y2KgECo6YdutX73G8Bli9cXG8K+viDRcHeBUYwUpr3M+muzIK3WRfjsrDaDqfu79mEeYGpC9T2Cd/oSyqfNhlWofqDvKKtI2cfN3B15GlQahWqGWKyQ7+W9K7HUp4/iOi0MnpmRDcyB0CUMJDs8DXOxK0fJyC5PUfdeHB9cKAp16ETyI6huFVM2evKUMNz2yQ7s3mvTfCAMLyXLJ3kidsUVX+CubJl5p0JP69qcGPUim7D0GLmEyOtYX2Sv0vCiUW+W4Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eLyL9ywCOq8caBnNzwqP+IcrlOmlbAO/bORlQvk4JSU=;
	b=W17CXAjgyA12EEigApjqDfU5/eprK5DOY0FfpBhJOoZC37MGiSwspGv2iHFo3PO0b89taMYz+NpfemEwbX8Lrz4gdLlvn58rei4xBSlbj783ETtCHO+PcmYNicfFrGi7+Mf+TJH8dZEMrd+gUTZNIa0EIRmpkXowymyclPAaG9Eu35tW5fDUR6vejd4uHY4htTNrdBiR6aOZGwn3k8l7aT8j5hNO53sNcvqWhgBdfWB9W5N3JE1yHnfXFqH3AJe0i/YLXoV+TNVTAhj45ABQ2xMOeTDA2DbF+utXbkBEeT2Kw2MRfUF3EfA62c+TDlk7W6XaLU4r6qLKg/j2HFVlwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com;
	dkim=pass header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
	s=selector2-fb-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eLyL9ywCOq8caBnNzwqP+IcrlOmlbAO/bORlQvk4JSU=;
	b=hrW/IGXIBHnA50aq8nVBgya+laLdKaU3b6LrNJNKYLRylA31NzEaG1u3Jy2+x//eiaw45kf2+7RUAHilE1g1jKnvU86N+G+Jct/YY4J9H7mDEnylVqlVcB4okXo9n6VR+ILXxVxQ8MdpBs78cVVREFn6redNFghILdFoDgKdmdk=
Received: from BYAPR15MB3094.namprd15.prod.outlook.com (20.178.239.76) by
	BYAPR15MB3383.namprd15.prod.outlook.com (20.179.58.207) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.21; Thu, 17 Oct 2019 10:20:04 +0000
Received: from BYAPR15MB3094.namprd15.prod.outlook.com
	([fe80::adae:d1fa:4e1b:130c]) by
	BYAPR15MB3094.namprd15.prod.outlook.com
	([fe80::adae:d1fa:4e1b:130c%7]) with mapi id 15.20.2347.024;
	Thu, 17 Oct 2019 10:20:04 +0000
From: Tom Benn <fridgecow@fb.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Thread-Topic: [poky][meta][PATCH] Update dbus-1.init to reflect new PID file
Thread-Index: AQHVhNGhW9RT/9PcH0K08xtURC3USA==
Date: Thu, 17 Oct 2019 10:20:04 +0000
Message-ID: <BYAPR15MB309446174D6C5DB16A8BBB66D16D0@BYAPR15MB3094.namprd15.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c092:200::1:a056]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87cf7b1a-9115-410a-10fc-08d752eb93ca
x-ms-traffictypediagnostic: BYAPR15MB3383:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR15MB3383F12B64E3841F65286CF2D16D0@BYAPR15MB3383.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(396003)(346002)(39860400002)(376002)(189003)(199004)(81166006)(1730700003)(81156014)(316002)(8676002)(99286004)(55016002)(66476007)(66946007)(66556008)(46003)(76116006)(91956017)(64756008)(478600001)(66446008)(6916009)(15650500001)(86362001)(2906002)(256004)(6436002)(5640700003)(25786009)(476003)(486006)(2351001)(33656002)(8936002)(9686003)(4744005)(14454004)(74316002)(52536014)(102836004)(5660300002)(2501003)(71200400001)(71190400001)(305945005)(7736002)(6116002)(186003)(6506007)(7696005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR15MB3383;
	H:BYAPR15MB3094.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fBaSWS3qDniG9x1I2tjB8eE5Pc2gD3s0pgB4/QZrubbLXEcVDSpapRl2zTC0hfBex+lnmmk9+EYv2ML+CTVweZm5wyaB1/1GcVhJR+Hs777PPvNtoZmGEmSJzW19uMtjTIW2TMKxjpzgF2YPD4Qn/4EIgEEQGH4nOaMZtBADsSseSi2ovE7AD37MUC05PLqLuD6J2f+FMJlcGyMlk/ZGTEJLrWOgtUyEHKFCEmLbF3bDi9vWZdSGVDIY2BLNnzixrHAyWgmlkUpKWYjRDGbwIJRfS9fER2PvnWUEYtWC3ezwo3helCN2gtQX9Zq8nF/wFjxIyTWnSql3SoS/9Bj/elhJcWfe3LEPsUUz0OxH/n290vmQHy2lCuJuSbKSB+UHXWfS7c+ybbHIB4s/TNU+DeOghQYUqKqRF6WNjVE03os=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 87cf7b1a-9115-410a-10fc-08d752eb93ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 10:20:04.4911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3yl/tjuXmLs9wMn61YoQQZm0OJWtVfAId98zpmKRuCbS7zB7Jz2jYdLAEKq0Cijw8v9Tgjq4N7ivilLchTiV7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3383
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-17_04:2019-10-17,2019-10-17 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
	lowpriorityscore=0
	clxscore=1011 impostorscore=0 priorityscore=1501 spamscore=0
	mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0 adultscore=0
	malwarescore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-1908290000 definitions=main-1910170093
X-FB-Internal: deliver
Subject: [meta][PATCH] Update dbus-1.init to reflect new PID file
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Oct 2019 10:50:08 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The PID file referenced in dbus-1.init script was=A0out of date and no long=
er existed. This meant that dbus could not be restarted via init.d without =
force removing the old PID file.=0A=
=0A=
Signed-off-by: fridgecow <fridgecow@fb.com>=0A=
---=0A=
 meta/recipes-core/dbus/dbus/dbus-1.init | 4 ++--=0A=
 1 file changed, 2 insertions(+), 2 deletions(-)=0A=
=0A=
diff --git a/meta/recipes-core/dbus/dbus/dbus-1.init b/meta/recipes-core/db=
us/dbus/dbus-1.init=0A=
index 42c86297c3..90e167e572 100644=0A=
--- a/meta/recipes-core/dbus/dbus/dbus-1.init=0A=
+++ b/meta/recipes-core/dbus/dbus/dbus-1.init=0A=
@@ -21,8 +21,8 @@=0A=
 =0A=
 DAEMON=3D@bindir@/dbus-daemon=0A=
 NAME=3Ddbus=0A=
-DAEMONUSER=3Dmessagebus           # must match /etc/dbus-1/system.conf=0A=
-PIDFILE=3D/var/run/messagebus.pid # must match /etc/dbus-1/system.conf=0A=
+DAEMONUSER=3Dmessagebus           # must match /usr/share/dbus-1/system.co=
nf=0A=
+PIDFILE=3D/var/run/dbus/pid # must match /usr/share/dbus-1/system.conf=0A=
 UUIDDIR=3D/var/lib/dbus=0A=
 DESC=3D"system message bus"=0A=
 EVENTDIR=3D/etc/dbus-1/event.d=0A=
-- =0A=
2.17.1=

