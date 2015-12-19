Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C170E00C36; Sat, 19 Dec 2015 04:23:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 485 seconds by postgrey-1.32 at yocto-www;
	Sat, 19 Dec 2015 04:23:29 PST
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79B6E007C3
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 04:23:29 -0800 (PST)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 42251635AB
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 12:15:23 +0000 (UTC)
From: Holger Freyther <holger@freyther.de>
Message-Id: <014C7722-0747-4CF8-B2D1-AA7021E2B011@freyther.de>
Date: Sat, 19 Dec 2015 13:15:22 +0100
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: Weird python/OE issue on parsing
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
X-List-Received-Date: Sat, 19 Dec 2015 12:23:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

my build to track master of Poky has started to fail in a very odd way. =
I can't reproduce it in a
local build but something is severely wrong:

ERROR: Error in compiling python function in =
/home/oebuilds/jenkins/workspace/Yocto-Master/label/OE/poky/meta/conf/dist=
ro/include/tclibc-glibc.inc, line -10000000000005:
..
OverflowError: Python int too large to convert to C long


So somehow IN_PYTHON_EOF starts ending up in linenumber and then a bit =
is subtracted from
it. Any idea how I can run into this?

holger=

