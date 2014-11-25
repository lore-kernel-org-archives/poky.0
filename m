Return-Path: <aschultz@tpip.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6ECE0092D; Tue, 25 Nov 2014 06:17:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0011]
X-Greylist: delayed 594 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Nov 2014 06:17:28 PST
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E4EE008FC
	for <poky@yoctoproject.org>; Tue, 25 Nov 2014 06:17:28 -0800 (PST)
Received: from office.tpip.net (office.tpip.net [92.43.51.2])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.tpip.net (Postfix) with ESMTPS id 2912B4F404
	for <poky@yoctoproject.org>; Tue, 25 Nov 2014 14:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 404D234A9B3
	for <poky@yoctoproject.org>; Tue, 25 Nov 2014 14:12:53 +0000 (UTC)
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id uVn1UxUyI1Wu for <poky@yoctoproject.org>;
	Tue, 25 Nov 2014 14:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 7E5BE34A9C4
	for <poky@yoctoproject.org>; Tue, 25 Nov 2014 14:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id WXUnIZ1Jjevj for <poky@yoctoproject.org>;
	Tue, 25 Nov 2014 14:12:51 +0000 (UTC)
Received: from office.tpip.net (office.tpip.net [92.43.51.2])
	by office.tpip.net (Postfix) with ESMTP id 6638234A9C3
	for <poky@yoctoproject.org>; Tue, 25 Nov 2014 14:12:51 +0000 (UTC)
Date: Tue, 25 Nov 2014 14:12:51 +0000 (UTC)
From: Andreas Schultz <aschultz@tpip.net>
To: poky@yoctoproject.org
Message-ID: <2146448574.1066343.1416924771263.JavaMail.zimbra@tpip.net>
MIME-Version: 1.0
X-Originating-IP: [217.92.147.146]
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC41 (Linux)/8.5.0_GA_3042)
Thread-Topic: building poky git HEAD with icecc
Thread-Index: yGERFNCHHsKJSHAPE9wGibCfe3uPyw==
Subject: building poky git HEAD with icecc
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
X-List-Received-Date: Tue, 25 Nov 2014 14:17:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to build poky git HEAD with icecc (1.0.1) under Ubuntu 14.10 64bit.
My local.conf has:

INHERIT += "icecc"
ICECC_PARALLEL_MAKE = "-j 48"

I'm not complete through with it, but I already had to blacklist these
package from icecc:

ICECC_USER_PACKAGE_BL = "ncurses perl libcap libgpg-error libgcrypt gmp"

Most of them fail with 'fatal error: stdio.h: No such file or directory'.
I have already checked all my builder do have this file.

For example the concrete error from libgcrypt is:

| gcc  -o yat2m ./yat2m.c
| ./yat2m.c:92:19: fatal error: stdio.h: No such file or directory
|  #include <stdio.h>

It seems that the CC_FOR_BUILD is somehow not working.

Any ideas what might be wrong or are those error expected?

Andreas
-- 
-- 
Dipl. Inform.
Andreas Schultz

