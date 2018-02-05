Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 961F2E00DE5; Mon,  5 Feb 2018 02:00:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Feb 2018 02:00:15 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11759E0085E
	for <poky@yoctoproject.org>; Mon,  5 Feb 2018 02:00:15 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs39.server.lan (via HTTP); Mon, 5 Feb 2018 10:55:11 +0100
MIME-Version: 1.0
Message-ID: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
From: "Arno Steffens" <star@gmx.li>
To: poky@yoctoproject.org
Date: Mon, 5 Feb 2018 10:55:11 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:6c6rU0QgOREJjB+ecavBekeoNNEhCO00kPnTeWDkw8U
	8TtS+UqQtZpUSU6zVt6/V6509LTGOfa8vSwNpB6VUbQGMnrCm6
	Atfn6X8gbAThObkpSZPQ0IH7hL0FXhjUS9LsTMADiLsODj7dcP
	vG5tbfysZMskK0yaSkTWO3L3Zt+T44lvLKvQ6yy/k196v9I6gn
	z60sE+Lm0GMC/rGwtJHh0n3KLWNa3uQTUpauqUkv4x/DEwbKwD
	Cp3I00Spy2o98CyJoHsevUburCSGXCu+AnHaEmIMHozXeIv2XX q2Ff1A=
X-UI-Out-Filterresults: notjunk:1;V01:K0:DVvApjcAtCo=:YgJhW1VIAQocAs3cLC0zEr
	QjqxmgKkYeYpYlhGdmnwYcRb2CApG2DmQLww2PG/xKeUbVG0B0+FHmvzL4d50D99eIDnELW4u
	L+I/K6n97kvTD3USlmsgYYh0L8FAYeLmrhjMD7pG6iKmARpjTywh/1eEYBlZKiciGOnaxA8lF
	ynmB+FHzsZxLY6Dr/WSfeViTh3YVrdYqwq1UsF1FBVQOvEKaxLJy4ivscTHWQTn6NHz4mAwo6
	rfB0MfYTWYyBjIBCmF4PLTxNMRbPAcjfT6t3LuVjz+Do65zPvmzHwa+o6UoSFaQeY16gCNeXN
	yQB6vhNcug7ptPwuhf/24lDv2vJvnzwVGHAgw9Qeo4BqFQ/PBGVe83h/ASkDTeuX2nrNGslEt
	ySgsfWOOv0QCZ7VshM6ZaHDehgTeFSTlTOMh/fP/9w2YbBDtM+81fyVKSfgp2q+wdcjKRnGaL
	mv27pifBhbnZp0NbrsxM8dxH7gyGvPhi0lxr8BWOfOFDMK4Y8vdv
Subject: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Mon, 05 Feb 2018 10:00:17 -0000
Content-Type: text/plain; charset=UTF-8

Using in my project libcurlpp. It is created with yocto (2.3.3), but in my filesystem I just see:

"/usr/lib/libcurlpp.so.1" which is a link to libcurlpp.so.1.0.0

What I miss is "libvcurlpp.so" (without version number), as my project includes  "-lcurlpp".

My question: is there a reason for that? Is this a bug in the scripts or did I handle it wrong?

I can do "-l:libcurlpp.so.1" but this looks only like a second best solution to me.
Thanks and best regards
Arno

