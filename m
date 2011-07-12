Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CAC44C800A9
	for <poky@yoctoproject.org>; Tue, 12 Jul 2011 06:40:37 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 80D701660396; Tue, 12 Jul 2011 05:40:36 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 92AB9166038F;
	Tue, 12 Jul 2011 05:40:35 -0600 (MDT)
Message-ID: <4E1C32B3.8090708@mlbassoc.com>
Date: Tue, 12 Jul 2011 05:40:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: BusyBox features not working
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Jul 2011 11:40:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using the latest master, building for qemuarm with the default local.conf, I find that
the various configurations set by DISTRO_FEATURES are not being propagated into the build
of busybox.  In particular, there is no networking support :-(

$ grep IPV tmp/work/armv5te-poky-linux-gnueabi/busybox-1.18.4-r5/busybox-1.18.4/.config
# CONFIG_FEATURE_IPV6 is not set
# CONFIG_FEATURE_PREFER_IPV4_ADDRESS is not set
# CONFIG_FEATURE_IFUPDOWN_IPV4 is not set
# CONFIG_FEATURE_IFUPDOWN_IPV6 is not set

This is supposed to work because "ipv6" and "ipv4" are now in ${DISTRO_FEATURES_LIBC},
but that doesn't seem to be reflected by the build.

If I set this explicitly in my local.conf, e.g.
   DISTRO_FEATURES = "alsa ipv4 ${DISTRO_FEATURES_LIBC}"
I then get the correct options built.

I know that ${DISTRO_FEATURES_LIBC} is set (at least the default) as without it,
my builds break horribly.

Any ideas what's going on here?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

