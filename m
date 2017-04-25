Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B76EE00AF2; Tue, 25 Apr 2017 06:02:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4392]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Apr 2017 06:02:05 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F3BE00AE6
	for <poky@yoctoproject.org>; Tue, 25 Apr 2017 06:02:05 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs23.server.lan (via HTTP);
	Tue, 25 Apr 2017 14:57:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
From: star@gmx.li
To: poky@yoctoproject.org
Date: Tue, 25 Apr 2017 14:57:00 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:uCkOvzkQhvBvPjOP67y36EEx9TICTcReX/E0FGFfbEz
	MwluMieXKRvn6/16LHcMfYkZ5Nuw4FN0uJsbnutNOs7Z4fhPq2
	yMQ36kcQ345VweX1jwqiJ5dkmdx80oAHKZ3UhR0sI8L/3bGJMV
	HCEJGvpq1I/LHZitG+M/3xc3e2yZWd2lwBzH5xu2RCuVVcBTBf
	fsOePIDLFUQXeGNcBPaYCgU0Pep+zguA20Xu8fClDqPZscLodm
	vnQptGXx+NmlEg7Mdo2GPrFSD4OvzVYIybyORXg3iqA98HsL5d ECdOS8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:bvg4gZLcpj0=:c4ppq1ugklgfi7sKw9txjY
	RDk0/R5w+a7kpseCDZNZpZ5QqGDNIX9CVzZRHfCE5ZD+26z42u809n+wq+id0VHM4N5whFOp3
	Qn8HlDggMw5p8+7dzaLFXoAnz7ZAkquJbioZes/bcbuCZAYaFRVV0iutTYsHgTF3Yzqoo4GAf
	RwgFjIlWO5F5LMG4iLWT2UXxdosigVa3whB/jytz7cNqysn0b1ae8Uyk4UIzenXUy7TAAGX+N
	L3bcaKz1FPYDO1mRjeuVQQHOy8jU+GoKSfAwzJaX1KPs2I7cAHkN1Xnz9NqbCs8xqXL+VSGdQ
	e/+Y/EDB+hAapZjqhlggWbGEsMScKxelJleao2ghqd3F2MNRi/1XQ9rSdv3T2ORC7jl9azZSo
	2GzSxOC5RFCK4CYCx5xVNCASRhGy7xZlURR10uzfd93ZiSeOxjlBp9F4FE55OCzrkIolLagqn
	CCuAyL+Dvw==
Subject: gnupg strip down
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
X-List-Received-Date: Tue, 25 Apr 2017 13:02:08 -0000
Content-Type: text/plain; charset=UTF-8

Would like to include gnupg into my filesystem. If I add gnupg to my image, it become to big (12.5MB instead of 5MB with core-image-minimal).
It installs a lot of things I don't need: dozen libs, binaries and even helpfiles in all languages ?!?

In fact I need just gnupg-binary and around 5 libs for my need. Can you help me howto strip down the recipe or what has to be set in a bbappend file to achive that? My first experiments with adding things to ETXRA_OECONF like

EXTRA_OECONF = "....
   --disable-card-support \
   --disable-gnupg-iconv  \
   --disable-idea           \
   --disable-cast5          \
   --disable-exec           \
   --disable-photo-viewers  \
   --disable-keyserver-helpers   \

failed. Thank you.

