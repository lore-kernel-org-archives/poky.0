Return-Path: <brendan.ta@jacques.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C60CDE00726; Sun,  9 Apr 2017 16:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.70.91.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 497 seconds by postgrey-1.32 at yocto-www;
	Sun, 09 Apr 2017 16:06:37 PDT
Received: from cal1-mh775.smtproutes.com (cal1-mh775.smtproutes.com
	[208.70.91.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFACE00524
	for <poky@yoctoproject.org>; Sun,  9 Apr 2017 16:06:37 -0700 (PDT)
X-Katharion-ID: 1491778682.20276.cal1-mh775
Received: from jacquessvr.jacques.com.au ([110.143.100.131]) by 
	cal1-mh775.smtproutes.com [(192.69.16.141)] with ESMTP via TCP 
	(TLSv1/TLS_RSA_WITH_AES_128_CBC_SHA); 09 Apr 2017 22:58:02 +0000
Received: from [192.168.100.58] (192.168.100.58) by mail.jacques.com.au
	(192.168.100.155) with Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 10 Apr 2017 08:56:15 +1000
To: <poky@yoctoproject.org>
From: Brendan Ta <brendan.ta@jacques.com.au>
Message-ID: <b905d61d-287e-a6ec-42f6-973c1f536652@jacques.com.au>
Date: Mon, 10 Apr 2017 08:58:02 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: [linux-yocto] How to include irdadump in irda-utils 0.9.18?
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
X-List-Received-Date: Sun, 09 Apr 2017 23:06:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Please excuse my lack of knowledge and incorrect use of terminology.  I 
am looking to include irdadump in my build image within Yocto.

I modified the 
/poky/meta/recipes-connectivity/irda-utils/irda-utils_0.9.18.bb file to 
include irdadump in the list of targets to be built.

---
INITSCRIPT_NAME = "irattach"
INITSCRIPT_PARAMS = "defaults 20"

TARGETS ??= "irattach irdaping irdadump"
do_compile () {
         for t in ${TARGETS}; do
                 oe_runmake -C $t
         done
}
---

However the bitbake process fails which comes down to the dependency of 
pkg-config and glib 2.0 required for idradump.

I did a quick search online and noticed that there was a separate .bb 
file for irdadump:
http://cgit.openembedded.org/openembedded/plain/recipes/irda-utils/

I tried to replicate this however was still faced with compiling issues.

Could anyone give me a helping hand on including irdadump to my 
irda-utils package?

Thank you


