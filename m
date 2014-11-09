Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCA2E008D0; Sun,  9 Nov 2014 06:14:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B56E00832
	for <poky@yoctoproject.org>; Sun,  9 Nov 2014 06:14:02 -0800 (PST)
Received: from sangmingze-mail.local (ip5b42f21c.dynamic.kabel-deutschland.de
	[91.66.242.28])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 05D7C8703F
	for <poky@yoctoproject.org>; Sun,  9 Nov 2014 14:13:56 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>) id 1XnTFB-0003GQ-Q5
	for poky@yoctoproject.org; Sun, 09 Nov 2014 15:13:29 +0100
Date: Sun, 9 Nov 2014 15:13:29 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@yoctoproject.org
Message-ID: <20141109141329.GH27444@xiaoyu.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Error on PRINC
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
X-List-Received-Date: Sun, 09 Nov 2014 14:14:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Richard,

I went through the diff and show your commit to turn having a
PRINC into an error. For our GSM BTS we are using Poky for the
base-system. We are currently shipping edison and dora based
images and I am working on tracking master because our internal
stabilisation period was always too long (e.g. the gcc compiler
issue, systemd journald performance, issues with creating source
tarballs for GPL compliance).

On top of OE-Core/Poky we have two layers, one is a BSP layer
and the other is all the opensource GSM bits we use and offer
to the customers. We do not use different release branches as
our software is portable enough to work across different versions
of gcc and such.

Even supporting a BSP for Edison, Dora and master is not so
much of an issue. And now back to the point. So we still need
to use PRINC for providing updates to edison, we want to use
PRINC on dora as things like CONFFILES_${PN} were not correctly
tracked but at the same time I want to track master to not end
up with the situation of spending 6 months in integration and
then be on an old version of Poky. The way I track master is
having a jenkins job that will take */master of everything and
build. Now when you turn the warning in an error the build will
be considered broken.

a.) Can you undo the change and give us enough time to cease
out our edison users?

b.) Would you accept a patch with something like "known" usage
of deprecated features? KNOWN_DEPRECATED="princ bla"? This way
I know about PRINC and decide to postpone but can will not see
other deprecated things?

kind regards
	holger

