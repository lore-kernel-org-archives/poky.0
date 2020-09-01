Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web12.8273.1598946724933872108
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 00:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 8C607212054;
	Tue,  1 Sep 2020 09:51:56 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 01 Sep 2020 09:51:56 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: msg board <msgboardpana@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] poky booting over PXE, but asks root user password even if debug-tweaks enabled
In-Reply-To: <CAJRqWa_cdQY+kPZkzN=4GVbNanJQ6E2KUKvXs0Nw-OxEgmGhow@mail.gmail.com>
References: <CAJRqWa_cdQY+kPZkzN=4GVbNanJQ6E2KUKvXs0Nw-OxEgmGhow@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.7
Message-ID: <b65a1c9c989edcb20d3f92bbc50ac504@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-09-01 07:45, msg board wrote:

> Hello,
> 
> I generated a distro based on poky and am PXE booting the distro. The 
> rootfs is mounted over NFS. The same distro when installed on actual 
> device does not have password for root user. i.e. after the actual 
> hardware device has fully booted then user can type 'root' as username 
> and no password is asked for root user. (debug-tweaks is enabled in 
> local.conf)
> 
> However, the same distro booted over PXE boot with same rootfs mounted 
> over NFS asks for password for root user. The distro has systemd as 
> init manager and many init services fail during boot when booting over 
> PXE. One such service which fails is systemd-logind.service . I wonder 
> if there is anything related to this failing service.
> 

First thing that comes to mind is your NFS settings. Do you have the 
no_root_squash setting set in /etc/exports of the host?

Cheers,

Bas.

> thank you
> 
