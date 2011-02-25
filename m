Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13A544C800A7
	for <poky@lists.pokylinux.org>; Fri, 25 Feb 2011 07:46:36 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7DDC716601CD; Fri, 25 Feb 2011 06:46:20 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3808116600F6;
	Fri, 25 Feb 2011 06:46:00 -0700 (MST)
Message-ID: <4D67B298.9030107@mlbassoc.com>
Date: Fri, 25 Feb 2011 06:46:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Out of date warning?
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
X-List-Received-Date: Fri, 25 Feb 2011 13:46:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Poky just presented me with this warning (on a new machine), when building for
an ARM (OMAP/3530) platform:

===================================================================================
$ bitbake omap-installer-image
Pseudo is not present but is required, building this first before the main build
ERROR:  Poky's config sanity checker detected a potential misconfiguration.
     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     /proc/sys/vm/mmap_min_addr is not 0. This will cause problems with qemu so please fix the value (as root).

To fix this in later reboots, set vm.mmap_min_addr = 0 in /etc/sysctl.conf.
===================================================================================

I know this warning was in place because Qemu was used to run some
tasks, e.g. locale generation.  My impression is that this is no longer
the case, so do we still need this warning?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

