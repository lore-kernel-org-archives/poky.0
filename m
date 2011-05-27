Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 529F54C800C1
	for <poky@yoctoproject.org>; Fri, 27 May 2011 12:19:08 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RHJ30S004558;
	Fri, 27 May 2011 18:19:03 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04207-08; Fri, 27 May 2011 18:18:59 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RHIvhx004552
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 27 May 2011 18:18:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <cover.1305932581.git.dvhart@linux.intel.com>
References: <cover.1305932581.git.dvhart@linux.intel.com>
Date: Fri, 27 May 2011 18:18:51 +0100
Message-ID: <1306516731.27470.294.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] fetch2/git: debug updates and minor cleanup
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
X-List-Received-Date: Fri, 27 May 2011 17:19:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-20 at 16:06 -0700, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Yu Ke,
> 
> Please consider the following patches against the fetch2/git fetcher. The one
> point I would appreciate your review of is in 2/3. Is there a concern that
> the urldata has not been initialized at the point where I made the change?
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/git2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git2
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> ---
> 
> 
> Darren Hart (3):
>   fetch2/git: ensure network check log matches actual command
>   fetch2/git: use logging.debug() and clarify messages

I merged these into bitbake master, thanks.

  fetch2/git: use urldata basecmd when available

This one we a had a good reason for, at least a long time ago. It needs
some further checking into the callers (and better documentation if it
is deliberate). The fetcher world has changed a lot since those times...

I'm therefore holding off on it for now.

Cheers,

Richard


