Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web08.13017.1647969834506229893
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:23:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=c7wWO8Wu;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 3B27110000D;
	Tue, 22 Mar 2022 17:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647969832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1e5YF8lodeqwqerF+JwHA2uMTwIY8DHjx5Gb3Rnju8Y=;
	b=c7wWO8WuMuWqO482IVtiM81QnXGD6p9OHDIkLhSelGALBvBezFQ55UnY39UrZ4tI5ceyHx
	w0E2hva2+jMA7/A8ihwizQq819yh6IM311euqhH6z6CUp4vgUb5xbD2TGZ90c0Mh+xhGoI
	SSsiX0wqXKYQOxQsY4+SenZlfCzmWU088/d6dn5sKUj54zAZ/QRsM7eFtycUHCxlFyeU5y
	ngqNhH9CFYwSJhML+7F07oQOymMYOVhCQ+ibObIe2JhZRuLgTVoyJejJpu9q+ZjrCrBCKo
	is9cm+yH8qjK76yhOGf3SZBu8oyXWMszN3pCRkfTWg+boy27AP7pXgguVglUvQ==
Date: Tue, 22 Mar 2022 18:23:51 +0100
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: John Lemonovich <john.lemonovich@foresys.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Message-ID: <YjoGJ/R4BV0gTa9N@piout.net>
References: <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On 22/03/2022 15:56:47+0000, John Lemonovich wrote:
> 
> Hello,
> 
> I'm relatively new to working with Yocto / Poky and I'm trying to build a rootfs for an Arria10 Intel FPGA, according to the exact steps from Intel.  My host machine is Ubuntu 18.04, and I am running into an error and was wondering how/where to start with debugging this?  I read another post on here where this error was resolved in that case with adding  ALLOW_EMPTY_${PN} = "1"
> 
> Is this the proper thing to do in this case, and if so, where do I add this?
> 
> Here is the command and the error message:
> 
> bitbake core-image-minimal
> 
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command '/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=info -y -c /us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=reposdir=/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/yum.repos.d --installroot=/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs --setopt=logdir=/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp --repofrompath=oe-repo,/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/oe-rootfs-repo --nogpgcheck install packagegroup-core-boot run-postinsts' returned 1:
> DNF version: 4.8.0
> 

The actual error from dnf is a bit later on in the log, can you share
it?



-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
