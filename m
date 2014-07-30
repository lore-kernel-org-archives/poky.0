Return-Path: <aschultz@tpip.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E0E2E00781; Wed, 30 Jul 2014 07:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Jul 2014 07:15:17 PDT
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C63E006B7
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 07:15:17 -0700 (PDT)
Received: from office.tpip.net (office.tpip.net [92.43.51.2])
	by mail.tpip.net (Postfix) with ESMTP id 7624F4F404
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 14:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 6F89C318BBA
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 14:10:32 +0000 (UTC)
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id LGTfIZYpyVlH for <poky@yoctoproject.org>;
	Wed, 30 Jul 2014 14:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 2E3C1318BC4
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 14:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Ww3kJ_ZSN4jX for <poky@yoctoproject.org>;
	Wed, 30 Jul 2014 14:10:29 +0000 (UTC)
Received: from office.tpip.net (office.tpip.net [92.43.51.2])
	by office.tpip.net (Postfix) with ESMTP id 059E0318BC3
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 14:10:29 +0000 (UTC)
Date: Wed, 30 Jul 2014 14:10:28 +0000 (UTC)
From: Andreas Schultz <aschultz@tpip.net>
To: poky@yoctoproject.org
Message-ID: <551317585.6654.1406729428858.JavaMail.zimbra@tpip.net>
In-Reply-To: <1733425688.6639.1406728610529.JavaMail.zimbra@tpip.net>
MIME-Version: 1.0
X-Originating-IP: [217.92.147.146]
X-Mailer: Zimbra 8.0.7_GA_6029 (ZimbraWebClient - GC38 (Linux)/8.0.7_GA_6021)
Thread-Topic: how to detect unstable builds
Thread-Index: vmptRxxEF0dO4xrV4ahsJ40HbGUHww==
Subject: how to detect unstable builds
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
X-List-Received-Date: Wed, 30 Jul 2014 14:15:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Unstable might be not the right term, but I couldn't think of another.

The issue is that two builds on exactly the same build host, produce
packages that have different runtime dependencies and also different
behaviors.

I encountered this problem with readline, but other package might have
it as well.

I try to build an image that contains systemd and (an modified) bind. The
declared dependencies of systemd contain readline, those of my version of
bind do not. With multiple parallel task, build order is not guaranteed
and bind might be build before or after readline.

bind's autoconf does check for readline and will link bind to it if
it finds it.

The outcome is that some builds contain a bind linked against readline,
while other contain a bind that is not linked against readline.

** QA hell breaks loose **

Is there a way to detect and/or prevent situations like this?

Regards
Andreas
-- 
-- 
Dipl. Inform.
Andreas Schultz

