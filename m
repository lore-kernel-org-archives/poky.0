Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9971E009A1; Fri, 10 Apr 2015 13:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3615 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Apr 2015 13:16:04 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0131.outbound.protection.outlook.com [157.56.110.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61BCEE00961
	for <poky@yoctoproject.org>; Fri, 10 Apr 2015 13:16:04 -0700 (PDT)
Received: from BN3PR0501MB1092.namprd05.prod.outlook.com (25.160.113.139) by
	BN3PR0501MB1266.namprd05.prod.outlook.com (25.160.183.145) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 10 Apr 2015 18:42:57 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (25.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 10 Apr 2015 18:42:55 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0136.014; Fri, 10 Apr 2015 18:42:55 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Collected errors when upgrading target device from poky/dylan to
	poky/dizzy
Thread-Index: AdBzuY979asbVR5oRFyVgB4WXveSwQ==
Date: Fri, 10 Apr 2015 18:42:55 +0000
Message-ID: <BN3PR0501MB1090B13F665F1F8E43E6DEB8BBFA0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01771BE000993601771D2D
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1092;
	UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1266; 
x-microsoft-antispam-prvs: <BN3PR0501MB10928E791D58337259040E86BBFA0@BN3PR0501MB1092.namprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(87936001)(77156002)(62966003)(19580395003)(76576001)(2656002)(122556002)(33656002)(46102003)(74316001)(107886001)(2351001)(229853001)(92566002)(54356999)(2501003)(2900100001)(66066001)(110136001)(450100001)(99286002)(15975445007)(102836002)(86362001)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:BN3PR0501MB1092; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 054231DC40
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2015 18:42:55.4868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
X-OriginatorOrg: melinkcorp.com
Subject: Collected errors when upgrading target device from poky/dylan to poky/dizzy
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
X-List-Received-Date: Fri, 10 Apr 2015 20:16:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am on poky/dizzy 1.7.1 for my development system after having recently up=
grade from poky/dylan 1.4.4.  I have a custom image that is basically core-=
image-minimal with the extra packages we need for our system (proprietary p=
ackages and a few dependencies).  I am using sysvinit for init and opkg for=
 package management.  If I burn the poky/dizzy derived image on a target de=
vice, everything works just fine.  However, if I try to upgrade a device th=
ere are a few errors that I can't figure out how to work around.  I'm wonde=
ring if someone else has seen similar issues and have a workaround.

* There is an issue with upgrading base-files in that /run and /var/run bec=
ome softlinks to each other.  I have the start to a workaround posted here:=
 http://lists.openembedded.org/pipermail/openembedded-core/2015-April/10360=
0.html.  It looked to be working for me, but it is still not cleanly adjust=
ing the directories as needed.  The temporary directories are not being rem=
oved completely and after a couple reboots there is the softlink run-> /var=
/run inside of /run.  Any suggestions on improving this would be appreciate=
d.

* The "reboot" command does not immediately work after the upgrade.  My sys=
tem is using "reboot" from Busybox.  I need to issue "reboot -f" to reboot =
the system.

* opkg does not report any errors on the upgrade, but it does not record th=
at the packages were upgraded.  If I issue "opkg list-installed" immediatel=
y after the upgrade, the old packages are listed.  But, as far as I can tel=
l all the new packages have been installed.  After forcing a reboot, I can =
issue "opkg upgrade" again and it will re-install all the packages it had j=
ust installed.  This time opkg records that the packages have been installe=
d.

* On the second pass of package installation, udev and util-linux are faili=
ng upgrade.  Here are the errors that I am seeing from opkg:

    Configuring util-linux-readprofile.
    update-alternatives: Error: not linking //sbin/readprofile to /sbin/rea=
dprofile.util-linux since //sbin/readprofile exists and is not a link
    Collected errors:
     * check_data_file_clashes: Package udev wants to install file /usr/bin=
/udevadm
            But that file is already provided by package  * udev-utils
     * check_data_file_clashes: Package util-linux wants to install file /u=
sr/bin/lastb
            But that file is already provided by package  * sysvinit
     * pkg_run_script: package "util-linux-readprofile" postinst script ret=
urned status 1.
     * opkg_configure: util-linux-readprofile.postinst returned 1.

From looking at the package file lists, I don't see why the data file clash=
es are happening.  After the repeated upgrade everything appears to be func=
tioning okay but I'd like to clean up these errors.  Has anyone else seen a=
nything like this happen?  Any suggestions?

Regards,
Bryan

