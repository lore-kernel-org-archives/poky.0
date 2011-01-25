Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 374A44C811BA
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 16:52:48 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMshNa006724; Tue, 25 Jan 2011 22:54:43 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZixP-Ef2xZ83; Tue, 25 Jan 2011 22:54:43 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMseHk006720
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 22:54:41 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D3E0323.2080905@linux.intel.com>
References: <4D3D6AFC.8060300@mlbassoc.com>
	<1295872759.14388.44775.camel@rex> <4D3E0323.2080905@linux.intel.com>
Date: Tue, 25 Jan 2011 22:52:22 +0000
Message-ID: <1295995942.27814.248.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky on "standard" PC
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
X-List-Received-Date: Tue, 25 Jan 2011 22:52:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-24 at 14:54 -0800, Darren Hart wrote:
> On 01/24/2011 04:39 AM, Richard Purdie wrote:
> > On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
> >> I wanted to try Poky on a spare laptop, so I went looking
> >> for an appropriate configuration to build.
> >>
> >>   From 'README.hardware' (last updated 2010-12-16), I read:
> >>     Poky Boot CD (bootcdx86)
> >>     ========================
> >>
> >>     The Poky boot CD iso images are designed as a demonstration of the Poky
> >>     environment and to show the versatile image formats Poky can generate. It will
> >>     run on Pentium2 or greater PC style computers. The iso image can be
> >>     burnt to CD and then booted from.
> >>
> >> When I tried it (it's also listed in the default local.conf),
> >> I got this error:
> >>     Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that does so.
> >>     Please set a valid MACHINE in your local.conf
> >>
> >> There seems to be no machine named 'bootcd*' anywhere :-(
> >>
> >> What should I be using?
> >
> > bootcdx86 was superceeded by the -live images. I'd suggest using the
> > qemux86 or atom-pc machines and building a -live image, dd that to a usb
> > stick and boot that on the laptop. An iso format image is also generated
> > that can be placed onto a CD.
> 
> It will have to be atom-pc as qemu doesn't provide live images (last I 
> checked, a few weeks back).

I don't see why the qemu machine wouldn't work for the live image
variants, even if we don't build them by default on the autobuilder?

atom-pc is fine though...

Cheers,

Richard




