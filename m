Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 098B8E0086D
	for <poky@yoctoproject.org>; Fri, 17 Jan 2014 03:41:41 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s0HBfRBu014237; Fri, 17 Jan 2014 11:41:27 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id RupxK8LzpO2H; Fri, 17 Jan 2014 11:41:27 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s0HBeZJC014145
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 17 Jan 2014 11:40:37 GMT
Message-ID: <1389958829.14987.111.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 17 Jan 2014 11:40:29 +0000
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: [PATCH] poky-tiny.conf: Add PACKAGECONFIG to disable opkg-utils python dependencies
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
X-List-Received-Date: Fri, 17 Jan 2014 11:41:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 83e232a..3213467 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -138,3 +138,6 @@ PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
 PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
+
+# Disable python usage in opkg-utils since it won't build with tiny config
+PACKAGECONFIG_pn-opkg-utils = ""



