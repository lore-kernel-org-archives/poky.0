Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2E6D4C8004D
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 07:57:36 -0600 (CST)
Received: from [192.168.0.7] (5adc74a9.bb.sky.com [90.220.116.169])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id A643B12EC330
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 08:40:17 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D67B298.9030107@mlbassoc.com>
References: <4D67B298.9030107@mlbassoc.com>
Date: Fri, 25 Feb 2011 13:57:27 +0000
Message-ID: <1298642247.2684.6.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Out of date warning?
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
X-List-Received-Date: Fri, 25 Feb 2011 13:57:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-25 at 06:46 -0700, Gary Thomas wrote:
> Poky just presented me with this warning (on a new machine), when building for
> an ARM (OMAP/3530) platform:
> 
> ===================================================================================
> $ bitbake omap-installer-image
> Pseudo is not present but is required, building this first before the main build
> ERROR:  Poky's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
> 
>      /proc/sys/vm/mmap_min_addr is not 0. This will cause problems with qemu so please fix the value (as root).
> 
> To fix this in later reboots, set vm.mmap_min_addr = 0 in /etc/sysctl.conf.
> ===================================================================================
> 
> I know this warning was in place because Qemu was used to run some
> tasks, e.g. locale generation.  My impression is that this is no longer
> the case, so do we still need this warning?
> 

We have a bug tracking the issue:
http://bugzilla.pokylinux.org/show_bug.cgi?id=543

Most recent update indicates that there are still edge cases which
require this check to be in place, though possibly only when running
qemu for arm images?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


