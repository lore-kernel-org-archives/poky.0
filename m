Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BAFCE00A5B; Fri,  7 Aug 2015 11:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 462 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Aug 2015 11:33:55 PDT
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D1EFE009F0
	for <poky@yoctoproject.org>; Fri,  7 Aug 2015 11:33:55 -0700 (PDT)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 9A95F31163
	for <poky@yoctoproject.org>; Fri,  7 Aug 2015 18:26:11 +0000 (UTC)
From: Holger Freyther <holger@freyther.de>
Message-Id: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
Date: Fri, 7 Aug 2015 20:26:09 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Subject: Odd log messages for apps using autotools and __FILE__
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
X-List-Received-Date: Fri, 07 Aug 2015 18:34:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

in the Osmocom software and rauc and probably many applications that use =
__FILE__ in a
log statement the log output is now:

	=
/home/hfreyther/images/poky/build/tmp/work/sysmobts_v2-poky-linux-gnueabi/=
rauc/0+gitAUTOINC+d44adb0079-r4/git/src/install.c:811 I will unmount =
/mnt/rauc/rootfs.0

where it used to be:

	install.c:811 I will unmount /mnt/rauc/rootfs.0


I know I can use __BASE_FILE__ in gcc to get back to install.c but I =
wonder where this is
coming from? Is this a side-effect of using B!=3DS? Is there another =
config that was made to
pass the full path to the compiler?


kind regards

	holger


