Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4229E00D0E; Mon, 28 Dec 2015 05:42:40 -0800 (PST)
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
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB4F1E008F5
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 05:42:39 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id l126so264272313wml.0
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 05:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pZK4yAIEP6GkTRKFa92XrsJYaFoOGM/fGxvrZsunFRg=;
	b=o626xIdWbemGPf8wirzadQzuAUGTvnLd2rd4tGgS3sRHs7LeYO1H+36mB4erk4HNRM
	XQbX2WgfNhQXX65n/P1YY1DMDRycnXCqMeOoa4OwWgr3R5tEwC0Bq5stvziLgSveWgym
	xcL/rxadiN6bpp+scNgLahftyMN8S+nD0qaN7jOwph3R6/WpPcfOm5cvMZK0uuJuxUFi
	CGDChZqsMtij81XnKW6EzB6PHdvGGmMAm7UBvap+SFxsUuFxHYfeluZaXunCq2QIho5O
	QHmc/UuRsWPYD4X0uIK2O7OQdyGqhNPp5K+msfaa7Q4wXw14rCGNMRu2Jm2DpLfn2AyI
	xuYw==
MIME-Version: 1.0
X-Received: by 10.194.79.227 with SMTP id m3mr57764537wjx.5.1451310159027;
	Mon, 28 Dec 2015 05:42:39 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 28 Dec 2015 05:42:38 -0800 (PST)
Date: Mon, 28 Dec 2015 19:12:38 +0530
Message-ID: <CAA2DH4u1-4wpo=thV4eo=6_5ayGX42wQVjGzOTxoSJg7hwfC4w@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Prevent auto start of services
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
X-List-Received-Date: Mon, 28 Dec 2015 13:42:41 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm putting together a custom layer. I would like to prevent certain
services to auto start, like avahi & ntp and few others.

I want to install these applications but I do not want them to be
added to /etc/init.t/rc5.d/

How can I append the recipes of these packages such that the auto
start is not added?



Regards, PJ

