Return-Path: <oosaprogrammer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE9A3E00952; Mon, 13 Apr 2015 19:47:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oosaprogrammer[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B307E00930
	for <poky@yoctoproject.org>; Mon, 13 Apr 2015 19:47:20 -0700 (PDT)
Received: by qkx62 with SMTP id 62so214073219qkx.0
	for <poky@yoctoproject.org>; Mon, 13 Apr 2015 19:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Z6i60Vn/QIxJo2Ht6tl7si20JQBqA36y1SXL2YmacZQ=;
	b=Vd6xGeKBjIYfuGu1Ub54+yiB0DNDYeCqqye85j1qLJg998Xy+BA/Np0vnocmw1SlWQ
	kTUnPFKlw6hbZynUHgc1kVKgde43KA4DZMoeFKTr09MZvWHbZBEZE4e2acnvZrTbRu31
	YhuDz7ZCWqmb4TONOGndC9ju1Ab5z7IlyksfYO9NYC9PiXbAXOu1zcOlLN5okW55KNrF
	XimT2eGkBqUFGY8teFKZ/wMx5bKnjVbEpZkJZBTvok8NNz2xDUzr+6c21gGC9gYS8eS7
	fP6YF0tUV+Wt5Zdba1V1RnmFNm+GuAByYVfcfComK8U68RRNX+YQ/0yQJZlpbbupMrmu
	2Wqg==
MIME-Version: 1.0
X-Received: by 10.182.60.38 with SMTP id e6mr14209979obr.57.1428979638401;
	Mon, 13 Apr 2015 19:47:18 -0700 (PDT)
Received: by 10.202.194.136 with HTTP; Mon, 13 Apr 2015 19:47:18 -0700 (PDT)
Date: Tue, 14 Apr 2015 11:47:18 +0900
Message-ID: <CALYKT1hfkgQDgh7ymxrjPhkGSAjm1jqP4RdWdpTeDDnEQNKE7w@mail.gmail.com>
From: "Joh Journeyer J." <oosaprogrammer@gmail.com>
To: poky@yoctoproject.org
Subject: [eglibc] How can I configure eglibc to support extra charset?
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
X-List-Received-Date: Tue, 14 Apr 2015 02:47:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I tested iconv() of glibc and verified that it only supports charsets
listed in the file below:
  eglibc-2_13/libc/option-groups.def
They are listed up under 'config OPTION_EGLIBC_CHARSETS'.

But I need to use another charset, EUC-KR.
How can I enable this extra charset, EUC-KR?

I found a file below :
  meta/recipes-core/eglibc/eglibc-options.inc
This file contains a line below :
    eglibc_cfg('libc-charsets',      distro_features,
'OPTION_EGLIBC_CHARSETS', cnf)

I guess I can configure eglibc with this .inc file.. But don't know how to..

Please shed some light on this.
How can I enable extra charset into eglibc?

Thank you very much in advance!
----------------------------------------
Journeyer J. Joh
o o s a p r o g r a m m e r
a t
g m a i l  d o t  c o m
----------------------------------------

