Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DA39E008EE; Mon,  4 Apr 2016 12:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  3.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A798E00527
	for <poky@yoctoproject.org>; Mon,  4 Apr 2016 12:16:00 -0700 (PDT)
Received: from [10.0.1.3] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id A3A5B74A05
	for <poky@yoctoproject.org>; Mon,  4 Apr 2016 19:15:58 +0000 (UTC)
From: Holger Freyther <holger@freyther.de>
Message-Id: <5D2DC2E7-EE57-4EC4-B9BD-72F0DB7F45C7@freyther.de>
Date: Mon, 4 Apr 2016 21:15:57 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: taskhash mismatch and what's next?
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
X-List-Received-Date: Mon, 04 Apr 2016 19:16:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

todays internal built failed and I am greeted with:

ERROR: meta-toolchain-osmo-1.0-r7 do_populate_sdk: Taskhash mismatch =
fb8cf0ab1d25eb3c1105f6d05e761f9d verses 51c3b8fae61b34daeacae493fe7458d8 =
for =
meta-telephony/recipes-osmocom/meta/meta-toolchain-osmo.bb.do_populate_sdk=

NOTE: recipe meta-toolchain-osmo-1.0-r7: task do_populate_sdk: Succeeded
ERROR: Taskhash mismatch fb8cf0ab1d25eb3c1105f6d05e761f9d verses =
51c3b8fae61b34daeacae493fe7458d8 for =
meta-telephony/recipes-osmocom/meta/meta-toolchain-osmo.bb.do_populate_sdk=


Now I understand that my meta-toolchain-osmo recipe[1] is to blame but =
what would be super nice is an extended error message. E.g. point to a =
piece of documentation that explains what is being hashed, which two =
hashes are being compared, when was the first computed, when the second =
one. Maybe even point to a recipe fix as an example?


thanks a lot for your consideration
	holger



[1] =
https://github.com/sysmocom/meta-telephony/blob/master/recipes-osmocom/met=
a/meta-toolchain-osmo.bb=

