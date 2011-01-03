Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DC894C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:36:32 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p03Jc5N0005093; Mon, 3 Jan 2011 19:38:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id QT2TcfCIyxpf; Mon,  3 Jan 2011 19:38:05 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p03Jc1M2005051
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 3 Jan 2011 19:38:03 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D22221F.2070608@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
	<208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
	<1294081495.17519.20236.camel@rex> <4D22221F.2070608@linux.intel.com>
Date: Mon, 03 Jan 2011 19:36:06 +0000
Message-ID: <1294083366.17519.20276.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/4] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Mon, 03 Jan 2011 19:36:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-03 at 11:23 -0800, Darren Hart wrote:
> On 01/03/2011 11:04 AM, Richard Purdie wrote:
> > On Tue, 2010-12-28 at 17:10 -0800, Darren Hart wrote:
> >> trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> >> new file mode 100644
> >> index 0000000..781f983
> >> --- /dev/null
> >> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> >> @@ -0,0 +1,22 @@
> >> +DESCRIPTION = "Graphical trace viewer for Ftrace"
> >> +LICENSE = "GPLv2"
> >> +LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
> >> +                    file://kernelshark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
> >> +
> >> +PR = r0
> >> +PV = "1.0.4+git${SRCPV}"
> >> +
> >> +DEPENDS = "gtk+"
> >> +RDEPENDS = "trace-cmd"
> >
> > This should be RDEPENDS_${PN} I suspect. We need to be clear about which
> > package has the runtime dependency.
> 
> Hi Richard, thanks for the review.
> 
> I'm missing something about how these variables are used I guess. I had 
> thought that being assigned inside the kernelshark_git.bb recipe would 
> have been sufficient to make it clear it applied to kernelshark. How 
> does this bleed over into other recipes?

Other packages (.rpm/ipk), not recipes.

RDEPENDS = "XXX" means apply this RDEPENDS to every package the
kernelshark recipe generates. This as standard would be:

kernelshark
kernelshark-dbg
kernelshark-dev
kernelshark-doc

and it clearly doesn't apply for the last three, only the first (in
general principle, the kernelshark recipe probably doesn't generate a
-doc at all but you get the idea).



> >> +inherit pkgconfig
> >> +
> >> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
> >> +SRCREV = "${SRCREV_pn-trace-cmd}"
> >
> > I'd suggest declaring that alongside the trace-cmd SRCREV definition,
> > something like:
> >
> > TRACECMDREV ?= "xxx"
> > SRCREV_pn-trace-cmd ?= "${TRACECMDREV}"
> > SRCREV_pn-kernelshark ?= "${TRACECMDREV}"
> 
> If I do this, I think a trace-cmd.inc would be the right way to go. 
> Having kernelshark specific bits in the base trace-cmd recipe seems 
> backwards to me: kernelshark builds on trace-cmd, so it makes sense to 
> me for the extension to made in the kernelshark recipe.

I meant in the common .inc file in the distro directiory where all the
other SRCREVs are set.

Cheers,

Richard



