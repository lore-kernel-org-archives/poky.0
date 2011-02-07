Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3515E4C80A77
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 15:32:44 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 368351660235; Mon,  7 Feb 2011 14:32:43 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 547441660231;
	Mon,  7 Feb 2011 14:32:42 -0700 (MST)
Message-ID: <4D5064FA.2040403@mlbassoc.com>
Date: Mon, 07 Feb 2011 14:32:42 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: DISTRO_FEATURES only extendable?
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
X-List-Received-Date: Mon, 07 Feb 2011 21:32:45 -0000
X-Groupsio-MsgNum: 3423
Content-Type: multipart/mixed; boundary="------------080203050605000009060108"

--------------080203050605000009060108
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have my own distribution which is an extension of Poky
(my DISTRO.conf is based on poky.conf via requires)

Is there some reason that DISTRO_FEATURES is fixed by poky.conf
and not overridable?  e.g. my systems seldom have WiFi or PCMCIA,
so it's silly to include that support.

Would the attached patch be acceptable to the mainstream?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080203050605000009060108
Content-Type: text/plain;
 name="poky-distro.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="poky-distro.patch"

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index aeab039..64a2b1d 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -111,7 +111,7 @@ LIMIT_BUILT_LOCALES ?= "POSIX en_US en_GB"
 ENABLE_BINARY_LOCALE_GENERATION ?= "1"
 LOCALE_UTF8_ONLY = "0"
 
-DISTRO_FEATURES = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci"
+DISTRO_FEATURES ?= "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci"
 
 POKY_EXTRA_RDEPENDS = "task-poky-boot"
 POKY_EXTRA_RDEPENDS_qemuarm = "qemu-config"

--------------080203050605000009060108--
