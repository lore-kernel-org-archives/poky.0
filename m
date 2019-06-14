Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81EACE00E07; Fri, 14 Jun 2019 05:46:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Jun 2019 05:45:59 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F23AE00DB5
	for <poky@yoctoproject.org>; Fri, 14 Jun 2019 05:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560516358;
	bh=ZZeCaawVjL90+dYeEoVX8WaijGr3n7/OsAsSs3s7mB8=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=UlRMTTr4hF2es3AnjOnOcp77Pj/wYw+i2eKOuksRFws1CIE4pMePd0IA8e+3BzAJI
	s2vQOMh+a48nmo4Jjr6UHzHzPZVZ1P78F70FQ/7sdC6P0SeE1oNZQgU9IBxaH5CYVS
	BmR3nJogqNRPQw9Z9Hbb/7QyjIV1PDhmjLKBCow4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs71.server.lan [172.19.170.216]) (via HTTP);
	Fri, 14 Jun 2019 14:40:55 +0200
MIME-Version: 1.0
Message-ID: <trinity-e1418283-2a62-421f-a921-29bb9b041222-1560516055870@3c-app-gmx-bs71>
From: "Arno Steffens" <star@gmx.li>
To: poky@yoctoproject.org
Date: Fri, 14 Jun 2019 14:40:55 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:DcLo67UO4KHCHnjTOjvG6uxxDDkzVTlEPjgiScviJYOMfqANaKW5rBNs/I7w4gdiB7TN4
	ib3Ov070/XkWktPsuA6EuExLLPuo3U/qzHJP8zMeg3dOMGrDqib5X0P1YXtNvfQxwJ67raXcLjIf
	vAz3Snw+FPhCAwh6SD69tSW9vznlWM4o+SBtxJVh3WwAsbYProLiuzvFX5Kh9aGpB7oO8tRIItJz
	vR0tS1VMeRbuVQd/N/4aJhK8EYUReLhPeHEh5O9Lyvx5dVQrzw6rCMStaAk0pmuN4M/u5RSwybpt
	dc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:pAQyL2kd9S0=:gX64brF0kmU1FC/7EYThPo
	Z5lSlkjHLJ7SMUeUM/bS4QAeUmo2JhXiUmKt/VJFgqfabCFGkr89wh9Bbpeouf8lzpGpcu1GO
	hNF3n7+MYMqVecJXS+aHRGrKHUqPsOORxj3Y5rq3/JtHtzkb2L5WZOv1Jjc8LyiUEeTp6iYNW
	3bMFUh6q4UD/A74OFpOV1lEZbrsIhHXCVs4aNDGTaVVVqanpCwKvtjsfCV0/Vx3WLc542uCmR
	EYjzl8Zl/84WEsr16aphLTM/eeBMirQR5gBSGQDZO3NNYT3zGIKy5qKT1Ty3UsVKtWt7dSvoR
	4Wk5eL+HbqtOh8dk9q4gEXmNJJBFw7fmrfhNLOn4gP9P07yFqtwsOom+zcH/J2cgrUGesgbU+
	mqgdeqIu+m3+GNtrtPRE3rktdLzjIhU6SHbriBGWsppvlwYs41YaLFwi66ukrOz+4C2vocoPj
	ISPoJQiGwj6tjay6cvnQHPkOeigE6R9vfOzYdEMpYVhyzSqgEjD3rY3ZLIvCyRqu5fq1c1viF
	amBXBuzPXoIUd0K8YSceNaZuuMbiFnBXcGavn6I96q6njv92x6IGzNXPJ+wxa9+puvHiodoW1
	Yxtkk9yMV++i3aDOmZzrzvpUEb/HVdF3wHRNq+ya5zUUF+wCjPdVT2aw==
Subject: runqemu-extract-sdk and NFS
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
X-List-Received-Date: Fri, 14 Jun 2019 12:46:00 -0000
Content-Type: text/plain; charset=UTF-8

I created a rootfs and use it via NFS. Looks fine so far. But if I type "reboot" I get the message "you have to be root".
But I am - "whoami" returns that. What am I doing wrong?

PS:
Is there a way to give a few of the busybox commands as "reboot" and "mount" the permissions to be executed by others than root?

Thanks in advance!


