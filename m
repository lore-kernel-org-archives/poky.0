Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A13A4C800C1
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 09:47:45 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5TEliCA025707
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 07:47:44 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 29 Jun 2011 07:47:44 -0700
Message-ID: <4E0B3B0F.3020804@windriver.com>
Date: Wed, 29 Jun 2011 09:47:43 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>	<1309338098.20015.327.camel@rex>	<BANLkTik8ZqtJ-EshUaFfBBK62Ds5FvwVFg@mail.gmail.com>
	<BANLkTi=LRPAxwzk+4FnfTBKyOzKg5v=LFQ@mail.gmail.com>
In-Reply-To: <BANLkTi=LRPAxwzk+4FnfTBKyOzKg5v=LFQ@mail.gmail.com>
Subject: Re: Problem getting PulseAudio Server Binaries
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
X-List-Received-Date: Wed, 29 Jun 2011 14:47:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/29/11 7:47 AM, Akshat Saha wrote:
> Hi Richard,
> 
> PulseAudio seems to work fine now, but *pkg_postinst_${PN}-server() *does not
> seem to be working.
> Can you tell me how to make sure that it works, so that I do not have to do
> create *pulse* user manually, after booting the machine.
> Also can you tell me *pkg_postrm_ implies?*

We are still working on getting the code that will allow user/group
add/change/delete from within the postinst and postrm scripts.  postinst = run
this after installation, postrm = run this after the package has been removed.

I would hope that the code to allow user/group settings will be checked finished
and checked in in the next couple of days.  Once it is there will be a simple
format for specifying new users and groups to be added to the system.

--Mark

> -- 
> Thanks & Regards,
> Akshat 
> 
> 
> 
> On Wed, Jun 29, 2011 at 4:22 PM, Akshat Saha <akshat.embedded@gmail.com
> <mailto:akshat.embedded@gmail.com>> wrote:
> 
>     Thanks Richard,
> 
>     I had tried this earlier too, but was building after clearing pulseaudio
>     instances form sstate-cache/ tmp/stamps and tmp/work.
>     It was giving me *"unbuildable, Nothing provides ... "* error.
> 
>     But now, it seems to work just fine. :)
>     Will try it out. And post the results.
> 
>     --
>     Thanks & Regards,
>     Akshat
> 
> 
>     On Wed, Jun 29, 2011 at 2:31 PM, Richard Purdie
>     <richard.purdie@linuxfoundation.org
>     <mailto:richard.purdie@linuxfoundation.org>> wrote:
> 
>         On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:
>         > Hi All,
>         >
>         > I am trying to pull PulseAudio.
>         > But am able to get conf(/usr/share/pulseaudio) files only in my RFS.
>         > In the pulseaudio.inc file, it can be observed below that there are
>         > some function and parametres specific to pulseaudio-server package .
>         > Can anyone guide me on how to get other pulseaudio binaries and
>         > configs into my build.
>         >
>         > I am using Ubuntu 10.10, 64-bit Host machine.
>         > Building for MACHINE?="fishriver"
>         >
>         > Command used to build:
>         > $ bitbake poky-image-minimal-xyz-live
>         >
>         > Contents of the poky-image-minimal-xyz.bb
>         <http://poky-image-minimal-xyz.bb> :
>         > require recipes-core/images/poky-image-minimal.bb
>         <http://poky-image-minimal.bb>
>         > IMAGE_INSTALL += "pulseaudio"
>         > LICENSE = "MIT"
> 
>         You're close here. If you look through this list:
> 
>         > PACKAGES =+ "libpulsecore libpulsecommon libpulsedsp libpulse
>         > libpulse-simple libpulse-browse libpulse-mainloop-glib \
>         >              pulseaudio-server pulseaudio-misc
>         > pulseaudio-gconf-helper"
> 
>         you can then change IMAGE_INSTALL to include the pieces you want, e.g:
> 
>         IMAGE_INSTALL += "pulseaudio-server"
> 
>         Cheers,
> 
>         Richard
> 
> 
> 
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


