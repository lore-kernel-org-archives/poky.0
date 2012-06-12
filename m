Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7968BE01421
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 07:50:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5CEllBo011552;
	Tue, 12 Jun 2012 15:47:47 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11362-04; Tue, 12 Jun 2012 15:47:43 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5CElbdX011525
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jun 2012 15:47:38 +0100
Message-ID: <1339512456.8065.13.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patrick <kpa_info@yahoo.fr>
Date: Tue, 12 Jun 2012 15:47:36 +0100
In-Reply-To: <4FD753B2.9060705@yahoo.fr>
References: <4FD753B2.9060705@yahoo.fr>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Tue, 12 Jun 2012 14:51:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2012-06-12 at 16:35 +0200, Patrick wrote:
> Dear all,
> 
> In one of our recipes we need to execute a small script after the 
> installation of the package. Following yocto dev manual point 4.3.6 we 
> have added a pkg_postinst function.
> 
> This doesn’t work properly as the script is executed at first start-up 
> and not after installation. Below are an example of this recipe.
> 
> Do you have any idea why this script is started as first boot time and 
> not after installation ?
> 
> Thanks in advance for any help !

We try and run postinstalls "offline" at image creation time. If they
fail, they run at first boot.

You can tell which context you're in by the contents of the $D variable
(note, $D, not ${D}). For example, you could therefore do:


pkg_postinst_task-system-tweaks () {
   #!/bin/sh -e

   #Mount tmprecovery at startup
   mkdir -p $D/tmprecovery
   mkdir -p $D/data
   echo "/dev/mtdblock6        /tmprecovery        yaffs2      0 0" >> $D/etc/fstab
   echo "/dev/mtdblock7        /data               yaffs2   noauto  0 0" >> $D/etc/fstab

Cheers,

Richard


