Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2028E4C80815
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 18:35:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0ZZaS024936;
	Wed, 10 Nov 2010 00:35:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24843-02; Wed, 10 Nov 2010 00:35:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0ZJDj024923
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 00:35:24 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CD99C41.3060109@mlbassoc.com>
References: <4CD9456C.7090907@mlbassoc.com> <4CD968B0.2050505@windriver.com>
	<4CD972D3.6070305@mlbassoc.com> <4CD9736B.9070902@windriver.com>
	<4CD99C41.3060109@mlbassoc.com>
Date: Wed, 10 Nov 2010 07:52:55 +0800
Message-ID: <1289346775.1272.74.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: New staging error
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
X-List-Received-Date: Wed, 10 Nov 2010 00:35:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-09 at 12:08 -0700, Gary Thomas wrote:
> On 11/09/2010 09:14 AM, Mark Hatle wrote:
> > On 11/9/10 10:12 AM, Gary Thomas wrote:
> >> On 11/09/2010 08:28 AM, Mark Hatle wrote:
> >>> On 11/9/10 6:58 AM, Gary Thomas wrote:
> >>>> With the new staging (master of 2010-11-08), I'm seeing lots of these
> >>>> messages
> >>>> when I build from scratch:
> >>>>
> >>>> NOTE: Running setscene task 81 of 364
> >>>> (/local/poky-amltd/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_populate_sysroot_setscene)
> >>>>
> >>>>
> >>>> NOTE: package netbase-4.41-r1: task do_populate_sysroot_setscene:
> >>>> Started
> >>>> NOTE: Staging package
> >>>> /home/local/poky-new2/sstate-cache/sstate-netbase-ppc603e-poky-linux-4.41-r1-ppc603e-1-83766f23e3f9013cb26b768478638f1d_populate-sysroot.tgz
> >>>>
> >>>> does not exist
> >>>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
> >>>> preloaded: ignored.
> >>>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
> >>>> preloaded: ignored.
> >>>>
> >>>> Questions:
> >>>> * What does this mean? Can I fix it somehow?
> >>>> * If it's ignored, it should be a WARNING, not an ERROR
> >>>>
> >>>
> >>> It is an error, but unfortunately not one that can caught. (The error
> >>> comes from ld.so, which will happily ignore a failed preload. If someone
> >>> knows how to make it fatal, we should do so!)
> >>>
> >>> I've normally seen the libpseudo.so failed to preload when either you
> >>> are running as root (as a safety precaution against tampering), you've
> >>> upgraded your host's libc since pseudo was built, or suddenly you are
> >>> running 64-bit (or 32-bit) binaries when pseudo is built for the other
> >>> architecture type.
> >>
> >> None of these are the case. I was simply trying to test/verify the
> >> staging
> >> mechanism. I think the error happens because LD_PRELOAD=libpseudo.so
> >> seems
> >> to be set, even before the sysroots tree where it lives has been
> >> populated.
> >
> > Odd -- we definitely want to fix this. Sounds like a bug in the staging
> > code.. (Note, we're working on changing some of the way pseudo loads
> > into memory as well as operates through the run sequence -- so it might
> > have the side effect of fixing this issue.... but it's worth filing this
> > as a bug, and if you have a way to reproduce it file that as well.)
> 
> Verified against the latest master.  Bug #526 filed, including a template
> to reproduce the error.

I can at least explain the bug. What is happening is that the sysroot
directories are totally empty and you're building them from scratch from
the sstate binaries. Some sstate binaries require pseudo to install as
there is permission information that needs to be tracked. The system
therefore tries to load pseudo but since it isn't in the empty sysroot
directory, you see the error.

To confirm the problem, try first running:

bitbake pseudo-native

then whatever the thing you want is.

I'm guessing you will not see the error if you do this in these two
stages. I agree we need to find a way to fix this, if this is the case
but this should at least give you a workaround.

Cheers,

Richard



