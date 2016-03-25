Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1821EE00C7C; Fri, 25 Mar 2016 03:09:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCA9FE00C72
	for <poky@yoctoproject.org>; Fri, 25 Mar 2016 03:09:53 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id p65so17922287wmp.0
	for <poky@yoctoproject.org>; Fri, 25 Mar 2016 03:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Wah+HWYeeAZ+S14c/Klj37aCkk5lhuk+KSMKBhaF/d8=;
	b=D7mUXzyJ/aY8Gxenn1fYRSA5el1NYNDy+Qn6Y3huVZuEihWDmtqHg8OQkF3m7V0yjL
	AzSsOQlx79sRW46tZdLiXBLZaNj0NJp2LD3AdbQdmOvy1TvsAG44+nK2rpoXdeThPs8R
	SLrb7982zP+0gnU/49TCUgmtd/+N5C+cQq6wM0YMOKTekhe5Xcw74QCRjUqQLP8lwPxH
	qwYVxVmw0CUuGX74cVYmi4YwAf7UnVHZtfn77kAX1J8KGCPw2/sn8JCnl6cx4IEO/6oH
	fSmYliIvkRQheibXk77Y60i6UWXLMPE5uo5icYXTdQB3eahJ/8nT9ZBtbagB/enw0YI/
	QLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Wah+HWYeeAZ+S14c/Klj37aCkk5lhuk+KSMKBhaF/d8=;
	b=NixGVxqhvvfUbQgkJQvtTrFk4FQp8+qEb216amlQVUi6c8rbYYU9oazKqf2IseLXu1
	FOOsYPzywa03l+jEt5G8J5aMXwu+wGab1YVDCXe+eM64iofYQC6fZE4VT+GKS5FFw/c6
	KeEqjopH8de5oBjiCnk55k5k/3OfzWN0AcCpngLzPJ0tbjjdRjYJ9baL9Bh9IVQjfKrs
	2fyLQ25oP9U0tFJhx9OCex/gwsnb/qdje/zDtr08WT0F0gIw0c1PRwIsx0ThXcAl8KtN
	9ywfRingesvjjwAeSh51CHW5ghf0K9hWnbeU2StQPt9k2a3mNq1fWVvYcTAXJ+tvCAPT
	E1xw==
X-Gm-Message-State: AD7BkJJbjlcqGaVFThNZ0H65QOfbsNr9a0jPCNmEnEJYMW20UwzN/+UyaUo7ap4KNzXCkDg3VdRuDhSGUgIqdA==
MIME-Version: 1.0
X-Received: by 10.194.223.104 with SMTP id qt8mr14410725wjc.11.1458900592682; 
	Fri, 25 Mar 2016 03:09:52 -0700 (PDT)
Received: by 10.28.94.133 with HTTP; Fri, 25 Mar 2016 03:09:52 -0700 (PDT)
Date: Fri, 25 Mar 2016 15:39:52 +0530
Message-ID: <CAA2DH4sMcG46HmMX2+2bx9s03SmVAza0yoX=aYsGkHsyw5sBHw@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Zeroconf for embedded linux devices
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
X-List-Received-Date: Fri, 25 Mar 2016 10:09:58 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm using poky root file systems on 2 of my embedded linux systems
(based on iMX6Q and Intel Atom Baytrail).
-
I intend to provide a provision to my embedded linux systems for
automatically getting IP address when DHCP server does not respond. I
am looking at zeroconf as a solution to this.


I would like to know the following:
- Which all zeroconf implementations are available in poky ?
(avahi-autoipd, any other?)
- Which is the recommended one by yocto community?


It would be of great help if someone could provide inputs to the above queries.


Regards, Pj

