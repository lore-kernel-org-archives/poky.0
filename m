Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB0ED4C80815
	for <poky@yoctoproject.org>; Sun, 14 Nov 2010 12:52:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEIqZ4h009717;
	Sun, 14 Nov 2010 18:52:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07652-06; Sun, 14 Nov 2010 18:52:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEIqSRd009711
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 14 Nov 2010 18:52:29 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CD965EB.9030008@windriver.com>
References: <1289199612.1683.4.camel@eric-desktop>
	<4CD8AFD4.3060606@intel.com> <1289278354.15591.20.camel@eric-desktop>
	<4CD965EB.9030008@windriver.com>
Date: Sun, 14 Nov 2010 18:52:26 +0000
Message-ID: <1289760746.1272.5046.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PULL]Fix moving libtcl8.5.so into tcl-lib.
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
X-List-Received-Date: Sun, 14 Nov 2010 18:52:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-09 at 09:16 -0600, Mark Hatle wrote:
> On 11/8/10 10:52 PM, Lu Jingdong wrote:
> > Saul:
> >
> >      tcl provides only one library named "libtcl8.5.so" and it hasn't
> > libraries named like "libtcl8.5.so.*". So when we use "so.*" in  FILES_
> > ${PN}-lib = "${libdir}/libtcl8.5.so.*", we can't include "libtcl8.5.so"
> > into "tcl-lib" package and we can't get the package "tcl-lib" because it
> > is a empty package.
> >
> >      It doesn't like other libraries. For example, libxcb provides
> > "libxcb-glx.so.0.0.0", "libxcb-glx.so.0" and "libxcb-glx.so". Among of
> > them, "libxcb-glx.so.0" and "libxcb-glx.so" are symbol links of
> > "libxcb-glx.so.0.0.0", so we can use the "so.*" and it includes the
> > following two files("libxcb-glx.so.0.0.0" and "libxcb-glx.so.0"). The
> > file "libxcb-glx.so" is in the "libxcb-dev" package. I am not sure
> > whether "libxcb-glx.so" should in the "libxcb-dev".
> 
> This is likely a check we may want to add to our QA suite.  The rule for which 
> symlinks must be in the run-time package vs a development package is:
> 
> 
> Run-time:
> The actual dynamic library file (duh)
> Symlinks to the dynamic library file with the filename of an SONAME specified by 
> the library file
> 
> 
> Development:
> Any "other" symlinks to the dynamic library NOT referenced by an SONAME
> Any static library files
> Any symlinks to static library files
> Any (related) .la files
> Any (related) .pc files
> Any (related) headers
> 
> 
> It should be fairly simple to validate the run-time, and lack of development 
> components in the run-time package.
> 
> 
> Does anyone know if this validation is already part of the sanity checking, or 
> would this be an enhancement?

I think its all already part of the sanity checks...

Cheers,

Richard


