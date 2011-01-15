Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 305604C810D2
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 17:34:36 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0FNaIKk029006; Sat, 15 Jan 2011 23:36:18 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id hygNNcUG0WYp; Sat, 15 Jan 2011 23:36:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0FNaCeI029001
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 15 Jan 2011 23:36:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <467D1FAB-0557-4C3F-BC6B-1D010DC18DD3@dominion.thruhere.net>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
	<2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
	<467D1FAB-0557-4C3F-BC6B-1D010DC18DD3@dominion.thruhere.net>
Date: Sat, 15 Jan 2011 23:34:10 +0000
Message-ID: <1295134450.14388.10147.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Sat, 15 Jan 2011 23:34:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-15 at 14:12 +0100, Koen Kooi wrote:
> Op 15 jan 2011, om 12:55 heeft Cui, Dexuan het volgende geschreven:
> 
> > Koen Kooi wrote:
> >> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
> >> 
> >>> Currently gcc-runtime installs the files, but actually gcc-runtime's
> >>> do_configure checks if the files are available, so before we build
> >>> gcc-runtime, 
> >>> we should have some recipe install the files first! -- currently
> >>> gcc-cross-intermediate actually does that(gcc-cross also installs
> >>> the files, 
> >>> but it installs into the gcc-build-internal* directory), but
> >>> gcc-cross-intermediate will have its own sysroot in future, after
> >>> that, 
> >>> gcc-runtime won't build. So let us add this new target recipe and
> >>> move the 
> >>> installation of the files from gcc-runtime into it.
> >> 
> >> I understand the problem, but...
> >> 
> >>> diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
> >>> b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb 
> >>> 
> >>> +do_install () {
> >>> +	target=`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##` +
> >>> +	# Install libgcc from our gcc-cross saved data
> >>> +	install -d ${D}${base_libdir} ${D}${libdir}
> >>> +	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* ${D}
> >> 
> >> ... why can't gcc-cross create the libgcc(-dev) packages? You're
> >> using the exact files gcc-cross installs, so why have an extra
> >> recipe? It feels backwards to have one package grab files from
> >> another package from sysroots and package those.   
> > I discussed this with Richard in the #yocto IRC channel several days ago.
> > Richard thinks the packaging of the files should be in a target recipe rather than a cross one.
> > Cc Richard for further explanation why doing the packaging in a gcc-cross is a mistake. :-)
> 
> I know packaging files from gcc-cross leads to all kinds of problems,
> but you're not using a target recipe, you are now indirectly packaging
> files from gcc-cross instead of directly.

Looking at the patch, isn't libgcc a target recipe?

The underlying problem here, highlighted when we dived into the separate
sysroots for the toolchain bootstrap is that gcc-runtime builds libstdc
++ against the gcc-cross-intermediate libgcc as its the one in the
sysroot, not the one from gcc-cross as it should.

I do think we should package things in the target recipe context and I
think this is what Dexuan's patch is doing.

> Since the files are exactly the same, why is this work around better
> than just packaging them directly. Or the other options, just building
> a new libgcc with a "real" recipe.

Building libgcc by itself turns out to be quite horrible to do. I live
in hope the gcc guys clean it up but until then...

Cheers,

Richard


