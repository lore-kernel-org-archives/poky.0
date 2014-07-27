Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A313E007AD; Sun, 27 Jul 2014 03:29:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D4B7E0079D
	for <poky@yoctoproject.org>; Sun, 27 Jul 2014 03:29:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jul 2014 03:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,742,1400050800"; d="scan'208";a="567874700"
Received: from omallon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.96])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jul 2014 03:29:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Sun, 27 Jul 2014 11:29:43 +0100
Message-ID: <3815645.XeEvooY0bI@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53CE4CDC.10308@windriver.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<20140722104852.GP22875@jama> <53CE4CDC.10308@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 27 Jul 2014 10:29:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 22 July 2014 19:37:00 Robert Yang wrote:
> On 07/22/2014 06:48 PM, Martin Jansa wrote:
> > On Tue, Jul 22, 2014 at 03:31:25AM -0700, Robert Yang wrote:
> >> Fixed do_configure error:
> >> 
> >> ERROR: User requested feature sdl
> >> 
> >>         configure was not able to find it.
> >>         Install SDL devel
> >> 
> >> This is error from log.do_configure, and if we check config.log, the
> >> error is:
> >> 
> >> sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to
> >> `_XEatDataWords'
> >> 
> >> The _XEatDataWords is provided by libX11.so, the dependencies are:
> >> 
> >> qemu-native -> sdl(from the host) -> libXext.so(maybe host or native) ->
> >> libX11.so (maybe host or native)
> >> 
> >> We may meet the error if host's libX11.so doesn't provide _XEatDataWords,
> >> and native's libX11.so has been removed (for example, rebuild).
> >> 
> >> Another way to fix is: let qemu-native depend on libxext-naive when sdl
> >> is
> >> enabled, for example:
> >> 
> >> PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl libxext-native,"
> >> 
> >> But this might be incorrect since target sdl or qemu may not require X11,
> >> so set:
> >> 
> >> DEPENDS_pn-qemu-native += "libxext-naive"
> >> 
> >> in local.conf.sample to fix problem.
> >> 
> >> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> >> ---
> >> 
> >>   meta-yocto/conf/local.conf.sample |    1 +
> >>   1 file changed, 1 insertion(+)
> >> 
> >> diff --git a/meta-yocto/conf/local.conf.sample
> >> b/meta-yocto/conf/local.conf.sample index bcb0864..742eb1a 100644
> >> --- a/meta-yocto/conf/local.conf.sample
> >> +++ b/meta-yocto/conf/local.conf.sample
> >> @@ -243,6 +243,7 @@ BB_DISKMON_DIRS = "\
> >> 
> >>   # seen. The two lines below enable the SDL backend too. This assumes
> >>   there is a # libsdl library available on your build system.
> >>   PACKAGECONFIG_pn-qemu-native = "sdl"
> >> 
> >> +DEPENDS_pn-qemu-native += "libxext-naive"
> > 
> > Doesn't this belong in qemu-native's PACKAGECONFIG definition for sdl?
> 
> Yes, but I don't know how to do it, what I know is:
> 
> PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl libxext,"
> 
> That would affect the target qemu, too, for example, when the user defines:
> 
> PACKAGECONFIG = "sdl" for target qemu, then the depends would be:
> 
> "libsdl libxext"
> 
> But the target sdl or qemu may not require X11.
> 
> Do you know how to define it for qemu-native only, please ?

Surely something like this would work:

PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl ${NATIVEDEPS},"
NATIVEDEPS = ""
NATIVEDEPS_class-native = "libxext-native"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

