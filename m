Return-Path: <Alex.Gonzalez@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E246AE0095F; Sun, 18 Jan 2015 03:50:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.243.193 listed in list.dnswl.org]
X-Greylist: delayed 427 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Jan 2015 03:50:39 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 360FDE00960
	for <poky@yoctoproject.org>; Sun, 18 Jan 2015 03:50:39 -0800 (PST)
Received: from [216.82.241.132] by server-1.bemta-8.messagelabs.com id
	22/A4-03191-26C9BB45; Sun, 18 Jan 2015 11:43:30 +0000
X-Env-Sender: Alex.Gonzalez@digi.com
X-Msg-Ref: server-10.tower-45.messagelabs.com!1421581409!41795394!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.12.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29600 invoked from network); 18 Jan 2015 11:43:30 -0000
Received: from mail.mx3.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-10.tower-45.messagelabs.com with RC4-SHA encrypted SMTP;
	18 Jan 2015 11:43:30 -0000
Received: from MCL-VMS-XCH01.digi.com (10.5.8.49) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.389.2;
	Sun, 18 Jan 2015 05:43:31 -0600
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Sun, 18 Jan 2015 05:43:27 -0600
Received: from log-linux-hp-agonzal.digi.com (10.101.2.169) by
	dor-sms-xch01.digi.com (10.49.8.99) with Microsoft SMTP Server (TLS) id
	14.3.210.2; Sun, 18 Jan 2015 12:43:25 +0100
From: Alex Gonzalez <alex.gonzalez@digi.com>
To: <poky@yoctoproject.org>
Date: Sun, 18 Jan 2015 12:42:34 +0100
Message-ID: <1421581355-6557-1-git-send-email-alex.gonzalez@digi.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.101.2.169]
X-KSE-AntiSpam-Interceptor-Info: protection disabled
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean
Subject: [PATCH] Add lttng-modules to tools-profile packagegroup
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
X-List-Received-Date: Sun, 18 Jan 2015 11:50:42 -0000
Content-Type: text/plain

lttng-modules was excluded from building for ARM using gcc-4.8.x. With
the update to lttng-modules_2.5.0 and gcc-4.9, the lttng-modules recipe
once again builds for ARM, but lttng-modules is still not being included
in the tools-profile packagegroup.

Alex Gonzalez (1):
  Revert "lttng-modules: Exclude arm"

 meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb | 1 -
 1 file changed, 1 deletion(-)


