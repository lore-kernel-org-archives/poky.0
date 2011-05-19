Return-Path: <timcussins@eml.cc>
Received: from out3.smtp.messagingengine.com (out3.smtp.messagingengine.com
	[66.111.4.27])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0BD04C80097
	for <poky@pokylinux.org>; Thu, 19 May 2011 07:23:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=temperror (insecure policy)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.messagingengine.com (Postfix) with ESMTP id 388C820A87
	for <poky@pokylinux.org>; Thu, 19 May 2011 08:23:17 -0400 (EDT)
Received: from frontend1.messagingengine.com ([10.202.2.160])
	by compute5.internal (MEProxy); Thu, 19 May 2011 08:23:17 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=messagingengine.com;
	h=message-id:date:from:mime-version:to:subject:content-type:content-transfer-encoding;
	s=smtpout; bh=92kWW27J6l880k4BobzL8AftQUQ=;
	b=eYoaTiiMIc8s+4K3pB+IAFhd6UVI8P49XeSpTKyO/hdVuDTPgRBgdBfZGlLNmtcJ20ekP10IZ8p+5K1Xgt+OHl0fzWxKVHyjX+V6e7tfz1YaCc2a32oeeMLuXAVMRfYQ3G/aUNe1gTcmbf2EZfVna7BBe90C/oj9vkGbYsT1W+E=
X-Sasl-enc: iEsCintWPxvcn7YxS/C24P9rA76bcH7Odh2yNWmSKOxk 1305807796
Received: from [10.2.11.18] (mail.linn.co.uk [195.59.102.251])
	by mail.messagingengine.com (Postfix) with ESMTPSA id DE1F84066BC
	for <poky@pokylinux.org>; Thu, 19 May 2011 08:23:16 -0400 (EDT)
Message-ID: <4DD50BB5.5070303@eml.cc>
Date: Thu, 19 May 2011 13:23:17 +0100
From: Tim Cussins <timcussins@eml.cc>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@pokylinux.org
Subject: strangeness: udhcpc runs when 'ip=dhcp' is in kernel cmdline
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
X-List-Received-Date: Thu, 19 May 2011 12:23:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

i've built my own kernel and image for our development system, and i've 
been mounting the rootfs image over NFS.

the kernel successfully does dhcp before mounting the NFS share - then 
udhcpc kicks in because the busybox-udhcp script looks for 'ip=dhcp' in 
the kernel command line (/proc/cmdline), launching udhcpc if it's 
present. does this seem odd to anyone?

AFAIK ip=dhcp is only really used for NFS root mounts, and i guess i 
assumed that the kernel would also be responsible for maintaining the 
DHCP lease. I might be wrong there.

http://www.mjmwired.net/kernel/Documentation/filesystems/nfs/nfsroot.txt#81

If anyone can shed some light on this, that'd be cool.

Cheers,
Tim

