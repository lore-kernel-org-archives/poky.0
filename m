Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AD7E00CAB; Sun,  3 Mar 2019 09:21:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.138.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 37172 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Mar 2019 09:21:39 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-eopbgr1380089.outbound.protection.outlook.com [40.107.138.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFA2E007B3
	for <poky@yoctoproject.org>; Sun,  3 Mar 2019 09:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=M9fP9DiVw+ZbKEAWiT9JMMix1C/By+/CAdcGR8R6lQ0=;
	b=OSWJT77BS8GeD2GkLQGPPV6cgkkCURw2TakdWE7joftAeu/X4uOZxhpGL8n4O7A8aEc2amylEPiMUxsvqDic9N4R48NOChEyH65gihWI/vbg3W4eUzvxRdAKdHeOw/Q/zFs0+8EOGcppjak+u7SnziIZhrk3enJTb4Un8zLV+e0=
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM (10.174.216.146) by
	BMXPR01MB2229.INDPRD01.PROD.OUTLOOK.COM (20.178.168.11) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1665.18; Sun, 3 Mar 2019 06:47:38 +0000
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::fd31:8a8e:b35e:2c6]) by BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::fd31:8a8e:b35e:2c6%6]) with mapi id 15.20.1665.019;
	Sun, 3 Mar 2019 06:47:38 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][meta][sumo][PATCH] run-ptest: fix testcase test-names
	failure
Thread-Index: AQHU0Yz98ua8gdjAj0mMrNor4gWimQ==
Date: Sun, 3 Mar 2019 06:47:37 +0000
Message-ID: <1551595632-15982-1-git-send-email-Aditya.Tayade@kpit.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:a00:d::24) To BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:b00:11::18)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [117.228.211.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25c94ebf-3ab1-47ca-06ce-08d69fa41f9e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BMXPR01MB2229; 
x-ms-traffictypediagnostic: BMXPR01MB2229:
x-microsoft-exchange-diagnostics: =?iso-8859-1?Q?1; BMXPR01MB2229;
	23:9MW2ywAnxDLks3J6cpd/LJVrfcA+permaf80zWT?=
	=?iso-8859-1?Q?5foqQCw6k8x+wiNhSGguYjuxpaFERlWO5YcXRFps9NASpGyWIcFEzCpr3a?=
	=?iso-8859-1?Q?PuFoP8zdAOUNxGH6F5EfmltxstRE5axuzLcoNFz1NIlqKIg/8mxHxdK468?=
	=?iso-8859-1?Q?glf9x+BLK1IighCnOlMXh7mqUMOrHeLj/m2x/QKyDbhH56+tvolli5tpUU?=
	=?iso-8859-1?Q?bQfeW4IRwaAuVlwr5JDgjlquSydVsRgp+m9DXfFQJZV9PsuRgrC97+s188?=
	=?iso-8859-1?Q?CJXQ6goOUEKxGtpZv/DD/QqcqSdVkLBN0FgQjH2DmKFoBMHDIVEwCPviU9?=
	=?iso-8859-1?Q?NxJxtft5j5ETs4Q7yAIcZNfSekcZ3ITqSc4ZyQiyTxvbktzVRmJltuaZmp?=
	=?iso-8859-1?Q?M2jk5gSURDjeBKqIjKlPu8TtjLKehDNr5zdmN5piSK7tiY25psxuC3XQ7l?=
	=?iso-8859-1?Q?rSc/WSEE+qWaTtQGDYPB/yovLaBSDTg7x5W1fmXBdjcaMaZsaYvRuGkyVm?=
	=?iso-8859-1?Q?aUe2K2n4vEhZeTELF4UHDOuxqp1pqsPnS6mGEd6S6GBjcrYrmNTh0IcORX?=
	=?iso-8859-1?Q?hVmbhEKaFUira1B4/Ro1twodNJVEhagqxLXh9t7ZE0xQijsQgDBi4W5DsY?=
	=?iso-8859-1?Q?mN7k8mAKQGNFz0YMQZt08yBLbJ5I/+j0hHRJkAoWIofjQFPIQtWg/08TGv?=
	=?iso-8859-1?Q?zECGgmj6QUW2/KM5yDpUTH6LVzAvR//PwYZ7D0mq2zhE/i+ioBXGPYn7v/?=
	=?iso-8859-1?Q?HhlBPpMKOYFacxsH2C7ScsCTN401pWWQgtmHfAYJ0jIK4vLS4ERrW2FgWM?=
	=?iso-8859-1?Q?jpXIz5ckKyCorqRRmu/1xptjVm0si9N3MOevwhK9B3Awwll1A2P4TyIfxS?=
	=?iso-8859-1?Q?Bpb4lx4auEtA2hJanX4BcfU3IBan1xEsqEIc+/GR6kA707QguoA3NGUpVJ?=
	=?iso-8859-1?Q?BTK7KwxiET5t8wwXHRecpfX3M4PutazsEhta5JSJ/CTn3xM9bSAWUHnaNQ?=
	=?iso-8859-1?Q?H07OREfPFQ+FGnHtFIe0sj7iMbjxNUlGeOKNvpiZNneazIrB+yXv9WWF+t?=
	=?iso-8859-1?Q?jRVKcu94/6eloPbJpbsaWOj6uLgnmLg9o8uCBnRcqS3mVGOeNjaaxDLg/6?=
	=?iso-8859-1?Q?KkZFieJjB7G82RhtxWk1xW2JIG4kX40NSQdePjEzsWf2wfTSApYDOc8giH?=
	=?iso-8859-1?Q?/PNatSyY08Sa239xxIV4sWrZLXJSAelPfDe6fpvdnnZ0ge2xUugUkbt/eV?=
	=?iso-8859-1?Q?lGt6hCZtunlf9Hhbd8N+eB6f3I3fQVhz34OaJVVQsDdg3NXA1PDuRdKmQf?=
	=?iso-8859-1?Q?EGL1yZTbKwdNT59r1Hf19k2?=
x-microsoft-antispam-prvs: <BMXPR01MB2229BAE89FD940D9331B391A91700@BMXPR01MB2229.INDPRD01.PROD.OUTLOOK.COM>
x-forefront-prvs: 096507C068
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(39850400004)(366004)(376002)(396003)(346002)(199004)(189003)(36756003)(52116002)(99286004)(66066001)(71200400001)(486006)(68736007)(71190400001)(7736002)(2906002)(256004)(186003)(8676002)(14444005)(26005)(2616005)(476003)(6116002)(3846002)(316002)(53936002)(5660300002)(305945005)(6916009)(386003)(6506007)(14454004)(102836004)(6486002)(5640700003)(50226002)(25786009)(8936002)(97736004)(81156014)(66574012)(478600001)(81166006)(72206003)(6436002)(4326008)(107886003)(86362001)(2501003)(2351001)(105586002)(106356001)(6512007)(1730700003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BMXPR01MB2229;
	H:BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j1ddlzmjxv8OGFH6VwTAIwFAmsUSmZ7KG5u9f5h9LEkw4eHj5tTwGOqWv3EiS0GrG5KmZVz41PZcHSiKm53gL9zLIW254dhmFPj38HGcWVYlci3YMeoG3fg5F9eTPeQSpf7AWvdXQ+WF/Uv7UwURC5dtP441xBvJ2RKC4nwNEqjMQVFrIALVtlDh2noKzw3S2eZysWcZl6Ty9e0nGnNcIkKa91fMEPqrwh7iQoV07lQWT/LkN5hm57Y4aR7ssZXAmBSiFIV+d2MUIq/0K9lpnbVYVcFTBUGkC8E2bndiVSqiMD5xJy7Zs35qvJ8eOpa/hrsBmDau5F7uzIAwVYyyzBTrC0d+wh9b+afWhKZU43dSJ9bFUslXqQTuks6ym9u+3GKi0AEGS8F4dlBjT262DCiXwvAAcLmUz5V7CNw1K8U=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c94ebf-3ab1-47ca-06ce-08d69fa41f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2019 06:47:37.9191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB2229
Subject: [meta][sumo][PATCH] run-ptest: fix testcase test-names failure
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
X-List-Received-Date: Sun, 03 Mar 2019 17:21:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Start the dbus daemon first before executing test-names
using dbus-launch, this will set DBUS_SESSION_BUS_ADDRESS.

ERROR:Failed to open connection to system bus: Using X11 for
dbus-daemon autolaunch was disabled at compile time,
set your DBUS_SESSION_BUS_ADDRESS instead

Upstream-Status: Pending

Signed-off-by: Aditya Tayade <Aditya.Tayade@kpit.com>
---
 meta/recipes-core/dbus/dbus/run-ptest | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-core/dbus/dbus/run-ptest b/meta/recipes-core/dbus=
/dbus/run-ptest
index 8a8970e..444ef4a 100755
--- a/meta/recipes-core/dbus/dbus/run-ptest
+++ b/meta/recipes-core/dbus/dbus/run-ptest
@@ -13,6 +13,7 @@ output() {
 export DBUS_TEST_HOMEDIR=3D./test
 export XDG_RUNTIME_DIR=3D./test
 export LD_LIBRARY_PATH=3D/usr/lib/dbus-test/ptest/test/.libs
+export $(dbus-launch)

 files=3D`ls test/test-*`

--
2.7.4

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

