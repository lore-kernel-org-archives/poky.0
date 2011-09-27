Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB96FE004DD
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 07:22:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 6CBFD1660A80; Tue, 27 Sep 2011 08:22:30 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id ED5E71660A78;
	Tue, 27 Sep 2011 08:22:28 -0600 (MDT)
Message-ID: <4E81DC24.8020307@mlbassoc.com>
Date: Tue, 27 Sep 2011 08:22:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Sharing sstate
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
X-List-Received-Date: Tue, 27 Sep 2011 14:22:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'd really like to be able to share sstate effectively.  One problem I have with
it is the size - for a build of my system (something similar to core-image-sato
on BeagleBoard), the sstate cache for a build-from-scratch is nearly 5GB!  Not
exactly simple to share across sites.

It seems to me that maybe I don't need to share everything.  For example, the
webkit-gtk package:

$ ls -l sstate-cache/*webkit-gtk*
-rw-rw-r-- 1 gary gary 331221793 Sep 23 16:21 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz
-rw-rw-r-- 1 gary gary     12740 Sep 23 16:21 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz.siginfo
-rw-r--r-- 1 gary gary 326376172 Sep 23 16:15 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz
-rw-r--r-- 1 gary gary     21652 Sep 23 16:15 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz.siginfo
-rw-r--r-- 1 gary gary 665832323 Sep 23 16:19 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz
-rw-r--r-- 1 gary gary     98746 Sep 23 16:19 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz.siginfo
-rw-rw-r-- 1 gary gary      3117 Sep 23 15:38 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz
-rw-rw-r-- 1 gary gary      8359 Sep 23 15:38 
sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz.siginfo

Would it be possible to only share part of this, maybe the "package" file?
It seems to me that this could make the needed (shared) cache much smaller...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

