Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA10DE00D91; Tue,  2 Jan 2018 04:33:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.209 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 420 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Jan 2018 04:33:21 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24DD2E00CBE
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 04:33:21 -0800 (PST)
Received: from [216.82.241.132] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-17.bemta-8.messagelabs.com id B6/C7-19660-C6A7B4A5;
	Tue, 02 Jan 2018 12:26:20 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRWlGSWpSXmKPExsXi5LtOQDenyjv
	KoPszk8X/x9vYLKb/W8PuwOQx72SgR/uJPrYApijWzLyk/IoE1oxlZ48wF7SyVDzatJelgfEZ
	cxcjF4eQwEpGiYNr1rB2MXIAOYsZJe7GdTFycrAJmEtMO3yQBcQWEciW6FqwhxnEFhYIlTgzZ
	Qc7RDxMYkHXHCjbSuLf87mMIGNYBFQkdjSUgJi8Ar4SG777gFQICbQySsw/nQpicwo4Syzfeg
	dsOqOArMTK86cZQWxmAXGJW0/mM4HYEgICEkv2nGeGsEUlXj7+xwphK0i0fbrHClGvI7Fg9yc
	2CFtbYtnC12D1vAKCEidnPmGB2Ksm0TZnAvMERpFZSFbMQtI+C0n7LCTtCxhZVjFqFKcWlaUW
	6RqZ6iUVZaZnlOQmZuboGhpY6OWmFhcnpqfmJCYV6yXn525iBMZIPQMD4w7Gpx98DzFKcjApi
	fLmpHpHCfEl5adUZiQWZ8QXleakFh9i1ODgEGi5ePIgkxRLXn5eqpIEb3IlUJ1gUWp6akVaZg
	4wimFKJTh4lER4j1UApXmLCxJzizPTIVKnGC05bjy8/oeJ49CL20Dy2czXDcxCYPOkxHlFQOY
	JgDRklObBjYMlmkuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHnPgKzlycwrgdv6CuggJqCD
	/pz3BDmoJBEhJdXAaMvOcqJb4Vtrtuxukf8Ht901FjN/L5l/d6O0xr7NGq+e8i35VXSLN8GId
	4unXnJGic3lp+8nVS0TV2Bvurn6QnhpTV3pMmm34EpBjmuMpi3mdzqFrjRnG//J0Liwd7/dt9
	z33AYvuy0nsEet7w6tl66JPrCM9cIE7ckbqm5VZm+5vPGmSEOFEktxRqKhFnNRcSIA436fXS8
	DAAA=
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-3.tower-45.messagelabs.com!1514895979!82736297!2
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14773 invoked from network); 2 Jan 2018 12:26:20 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-3.tower-45.messagelabs.com with SMTP;
	2 Jan 2018 12:26:20 -0000
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 06:26:18 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Tue, 2 Jan 2018 13:26:16 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Trying to use python3-pygobject-native to compile
	NetworkManager
Thread-Index: AdOAnHShmPTFPgPkTue0DcyRypmuSADHhkqAAAJ0I9A=
Date: Tue, 2 Jan 2018 12:26:15 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B3FF67@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
	<0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
In-Reply-To: <0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.179]
MIME-Version: 1.0
Subject: Re: Trying to use python3-pygobject-native to compile NetworkManager
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
X-List-Received-Date: Tue, 02 Jan 2018 12:33:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20

> What is $PYTHON set to?

root:~/workspaces-yocto/2.4/ccimx6ulsbc/tmp/work/cortexa7hf-neon-dey-linux-=
gnueabi/networkmanager/1.8.2-r0/NetworkManager-1.8.2# echo $PYTHON
/home/jdepedro/workspaces-yocto/2.4/ccimx6ulsbc/tmp/work/cortexa7hf-neon-de=
y-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/bin/pytho=
n3-native/python3

Just in case, here is the whole environment: https://pastebin.com/55hr7pwQ

