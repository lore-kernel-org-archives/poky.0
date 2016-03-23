Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D917E00931; Wed, 23 Mar 2016 04:23:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FDDBE00920
	for <poky@yoctoproject.org>; Wed, 23 Mar 2016 04:23:04 -0700 (PDT)
Received: from [10.9.1.161] (ip5b418565.dynamic.kabel-deutschland.de
	[91.65.133.101])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id D82B9729CE
	for <poky@yoctoproject.org>; Wed, 23 Mar 2016 11:23:02 +0000 (UTC)
From: Holger Freyther <holger@freyther.de>
Message-Id: <541E63F7-405C-4FB4-A264-074F8BB31E62@freyther.de>
Date: Wed, 23 Mar 2016 12:23:02 +0100
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: uninnative and md5 checksum?
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
X-List-Received-Date: Wed, 23 Mar 2016 11:23:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

our jenkins started to fail with yocto-master and I started to take a =
look. I noticed that uninative binaries are being downloaded from the =
network. It is not great to download binaries from the network and =
execute but fair enough there is a checksum.

But the choice of md5 as checksum is a bit odd (md5 and sha1 are =
effectively broken), can this be moved to sha3 or sha256sum?


thank you
	holger=

