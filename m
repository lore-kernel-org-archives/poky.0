Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B736C4C808B6
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 10:54:43 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LFshFk024478;
	Mon, 21 Mar 2011 15:54:43 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24418-01; Mon, 21 Mar 2011 15:54:38 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2LFsWdF024472
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Mar 2011 15:54:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D876DD3.5070106@mlbassoc.com>
References: <4D876DD3.5070106@mlbassoc.com>
Date: Mon, 21 Mar 2011 15:54:08 +0000
Message-ID: <1300722848.30423.3751.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 15:54:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
> I'm trying to do some testing with Poky on an atom-PC.  I thought
> I'd try with a minimal system and then add pieces I need.  Sadly,
> I've run aground doing this.  I've built a couple of images with
> varying results:
>    poky-image-minimal-live - boots on my box
>    poky-image-sato-live - boots, but fails to find X display, then hangs (*)
> 
> There seem to be no RPM tools on the minimal image.  Did I miss something?
> On my old, ipk based system, I'd build up a minimal image then use opkg
> to install additional packages.

Minimal images were never meant to ship with the package manager and now
don't. You can obviously change the image definitions easily enough as
needed.

>   How do I do that with the RPM based images? 

The same switch turns on/off the package manager data for rpm and opkg.

>  I've checked the documentation and there's basically nothing
> about this, unless I looked in the wrong place.
> 
> Any ideas or pointers gladly accepted.  Thanks
> 
> (*) I had success with this in the past when I booted with MACHINE=emenlow
> but that hardware isn't in the primary list.

I'm not sure why this isn't working or what the problem might be...

You didn't mention which branch this is with btw.

Cheers,

Richard




