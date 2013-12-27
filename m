Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 250D2E00824;
	Fri, 27 Dec 2013 13:22:48 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id AFEF18A1; Fri, 27 Dec 2013 22:22:58 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.1.28] (AReims-652-1-238-43.w83-198.abo.wanadoo.fr
	[83.198.181.43])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 0AEAC845;
	Fri, 27 Dec 2013 22:22:57 +0100 (CET)
Message-ID: <52BDEFA3.2090106@free-electrons.com>
Date: Fri, 27 Dec 2013 22:22:43 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	poky@yoctoproject.org
X-Enigmail-Version: 1.5.2
Subject: X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Fri, 27 Dec 2013 21:22:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

When using core-image-sato (latest dora), I encountered again an issue
that I once solved by hacking around it. It has the following symptoms:
 - touchscreen calibration doesn't start the first time the board is booted
 - matchbox-keyboard doesn't come up when touching the keyboard icon in
the panel
 - matchbox-panel is ugly (compare
http://www.ossystems.com.br/images/blog/boards/boundarydevices-nitrogen6x-hdmi-screenshot-fsl-image-gui.jpg
with http://free-electrons.com/~alexandre/matchbox-panel.jpg)

This time, I decided to investigate that issue a bit more. Here is what
I found:
The cause is the /etc/X11/Xsession script which at some point does:
==

What is really happening is that xserver-nodm-init is provided both by
poky/meta/recipes-graphics/x11-common/xserver-nodm-init.bb and
meta-openembedded/meta-oe/recipes-graphics/xserver-nodm-init/xserver-nodm-init_2.0.bb

layer                 path                                      priority
==========================================================================
meta                  /home/alex/fsl/sources/poky/meta  5
meta-yocto            /home/alex/fsl/sources/poky/meta-yocto  5
meta-oe               /home/alex/fsl/sources/meta-openembedded/meta-oe  6

The meta-oe one is selected ! That one can't actually work with the
current
poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb recipe
because of the "ls -X" sorting and it doesn't know how to handle shbg
files this will hang trying to use 80matchboxkeyboard.shbg

So my next step was to remove the meta-oe layer (or simply mask
/meta-openembedded/meta-oe/recipes-graphics/). The final result is
better but touch screen calibration (xtscal instead of
xinput-calibrator) fails with:
XCALIBRATE extension missing: Resource temporarily unavailable
XCALIBRATE extension missing: Resource temporarily unavailable
XCALIBRATE extension missing: Resource temporarily unavailable


So, questions:
 - How do we solve that cleanly ?
 - Why doesn't xserver-common conflicts with x11-common despite
RCONFLICTS_${PN} = "xserver-kdrive-common x11-common" ?
 - Shouldn't we stop using xtscal and use xinput-calibrator instead ?
 - Should we update the Xsession script from the poky recipes and stop
using x11-common ?

On my side, what I do is masking
/meta-openembedded/meta-oe/recipes-graphics/ and replacing xtscal by
xinput-calibrator as a dependency of x11-common but I believe we can do
better.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com


