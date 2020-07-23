Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.14149.1595516472428830099
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 08:01:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BCFs16twSz5tl9;
	Thu, 23 Jul 2020 17:01:09 +0200 (CEST)
Date: Thu, 23 Jul 2020 17:01:08 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200723150108.th2jqqu3injaegzq@qschulz>
References: <20200723141357.ms2q4ckcdzoeujf5@qschulz>
 <15065.1595514594992513749@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <15065.1595514594992513749@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jul 23, 2020 at 07:29:54AM -0700, kar_947@hotmail.fr wrote:
> Hi Quentin,
> 
> Thank you very much for your answer.
> However, i dont understand, what is "IMAGE_INSTALL"?

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-IMAGE_INSTALL

Considering the question (fine to have it, no worries), you'll highly
benefit spending an hour or so watching a few of the videos on the
playlist I sent you in the previous mail, probably #2, #7 and #1 v2.0.

> Is it not possible to juste add the g++ library wiith a command in the Terminal, like with Ubuntu?
> 

It is, just not simply.

> Sorry, i am really new in The yocto project, i dont get it, why i can't add library like with an Ubuntu system with "sudo apt-get install" for example.
> 

If you want a distribution where you can have a package manager on the
target with upstream repos, use Ubuntu or other well-known
distributions, that's probably going to match your use-case more than
YP.

I'd say and it's probably wrong in the details but you'll
get the point I think: Yocto is a way to build your own distribution. So
you'd need to do the same as Ubuntu is doing: building and maintaining
your upstream "apt-source" repos so that you can pull "g++" from your
target directly.

Why is this needed? A distribution relies heavily on very important
libraries (glibc, binutils, whatever...) and those can differ between
architectures, distro (Yocto distros) and machines. There is absolutely
no way you would be able to have a deb from Ubuntu compatible by default
with our custom made Yocto distribution, because the glibc or other
packages would have different versions, differnt sources, different
patches...

If you absolutely want to build stuff on the target, get a "normal"
distribution (Arch, Ubuntu, Fedora, gentoo, whatever). It's not that
common to want to build SW on a target running a Yocto distribution.

Quentin
