Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73B57E00B01; Sat, 19 Dec 2015 04:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A593DE00406
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 04:30:02 -0800 (PST)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id C2E0A635FD
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 12:30:01 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Holger Freyther <holger@freyther.de>
In-Reply-To: <014C7722-0747-4CF8-B2D1-AA7021E2B011@freyther.de>
Date: Sat, 19 Dec 2015 13:30:01 +0100
Message-Id: <BC10FDDA-4CB1-4A25-8C4A-6D75FF992D45@freyther.de>
References: <014C7722-0747-4CF8-B2D1-AA7021E2B011@freyther.de>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3112)
Subject: Re: Weird python/OE issue on parsing
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
X-List-Received-Date: Sat, 19 Dec 2015 12:30:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 19 Dec 2015, at 13:15, Holger Freyther <holger@freyther.de> wrote:
>=20
> So somehow IN_PYTHON_EOF starts ending up in linenumber and then a bit =
is subtracted from
> it. Any idea how I can run into this?

The error is gone when I revert 0019edc8180e859544da4820fa390b23d975fe08 =
in bitbake. I can
re-produce this with a debootstrap wheezy/i386 and setting up my build.

holger



