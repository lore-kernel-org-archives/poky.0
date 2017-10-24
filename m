Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA971E00CC1; Tue, 24 Oct 2017 06:22:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_20,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,XPRIO_SHORT_SUBJ autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0714]
	*  1.0 XPRIO_SHORT_SUBJ Has X-Priority header + short subject
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Oct 2017 06:22:04 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3ACDE00C45
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 06:22:04 -0700 (PDT)
Received: from [62.225.157.196] by 3c-app-gmx-bs63.server.lan (via HTTP);
	Tue, 24 Oct 2017 15:17:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
From: "Arno Steffens" <star@gmx.li>
To: "pokyyoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 24 Oct 2017 15:17:00 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:Py9o/jAgI4SoE22Sm0i+z70HivcRaUW0YnOATjdMVbA
	hB4VNtXNqZCb26kFxNEAvek/rbzNUovw4ZbM18LgNbwfGDQu/J
	GKIjnbHN0GUOYDDNCY9yEuWS71OwRX2aIQ4xndKSEUCWmSD85m
	cNteRYgfZy8hvnv51b8xI2Q1AWYUsbuBaasQyvm7aM+K6XuGW4
	mM3fHYUBK3hAyoPZcfkY8g1XYFeKMyfKSdtReO9HVHP1hQYYSz
	1vbg+ugcbjyFdWy9JnXBKQM7Swc76cBRzgnlGN/s5ZAZvdZPIs 6MEnq8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:+R9zCuGbGyU=:rkvJ/bfu3BN/vKlS447po0
	5ybkOnY0gHRni5W34CFnDYOfVT8dDeX/F6+Yr5pljcVZ0ZQ5wB5pa/nH95JvZF38jfGxZzdCj
	b6C9n3yV7v6gqg66Tvo2F5ohdaLnIUx7CvJ7GbSohV0yP+fj4wXPhLUBO5vwK+DMug84/2ZSK
	fCM5iafSPaaN9936FnwM1OR2sxdlJUD7Bm7rYQ5q06wB/eCF8MmNaLLDMx8pue+N7lwSbmUpy
	jY2ZdryQbK0NB4/SycFdIyweR6QVSu7OoDHPSOsM/cIMcSwChergp3Ypba1itx79Cx1orSYCj
	lAkwLcgCOzIIPX/9VAAUH0/hfMhPAILjZwe0+kICYNoxqBi3+eu0dmyF6wYGNgqdqpfRB+FrK
	iWGlXdynrUqNR8XYcE9tNii2Ahc/lwtV6CMAngN+1s3OpH1jTe/GW/dLvknDmgnNWfzXD2LQR
	rCm7bT7Q76PTN5uMSpEJ8TOkxsP3F5rT6bfZBjfP29TGXULIfH5q
Subject: snmpd
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
X-List-Received-Date: Tue, 24 Oct 2017 13:22:05 -0000
Content-Type: text/plain; charset=UTF-8

Sorry for asking - how to get snmpd into my rootfs?

I added net-snmp to my IMAGE_INSTALL. It creates the packages, but at least the net-snmp-server-snmpd is not included in my rootfs. Is there something to add?

Originally I just need the this server and libnetsnmp30
Thank you
Arno

