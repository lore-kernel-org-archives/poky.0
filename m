Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14A52E00C20; Sun, 20 Dec 2015 09:13:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FBA6E00B45
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 09:13:11 -0800 (PST)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id A57145F129
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 17:13:10 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Holger Freyther <holger@freyther.de>
In-Reply-To: <07C4FC01-05D3-4413-8CF7-EC51DC4493CA@freyther.de>
Date: Sun, 20 Dec 2015 18:13:10 +0100
Message-Id: <570D83C9-C437-43C6-AE0A-F5A0C0794C52@freyther.de>
References: <07C4FC01-05D3-4413-8CF7-EC51DC4493CA@freyther.de>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3112)
Subject: Re: rootfs growth from dora to master
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
X-List-Received-Date: Sun, 20 Dec 2015 17:13:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 20 Dec 2015, at 14:49, Holger Freyther <holger@freyther.de> wrote:
>=20
> Good Afternoon
>=20
> What is the standard approach here? Review PACKAGECONFIG and disable =
features, manually
> increase the packagesplit to remove items (e.g. udev PCI id db when =
there are no PCI ids)?

Using PACKAGECONFIG and removing x11 from DISTROFEATURES I get the image =
down to 8.2MB
and by passing some more --disable to systemd itself the image is 7.6MB. =
This is currently enough to fi
in our rescue partition but still a significant increase compared to =
Dora.

Is there interest in maintaining older versions of systemd or having a =
size requirement that certain images
need to stay below XYZ MB for a given architecture?

holger


