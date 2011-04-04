Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0DE84C80A84
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:46:37 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MkWhl022893;
	Mon, 4 Apr 2011 23:46:32 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22731-03; Mon,  4 Apr 2011 23:46:28 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MkQrm022887
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 23:46:27 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
	<BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
Date: Mon, 04 Apr 2011 23:46:23 +0100
Message-ID: <1301957183.24596.414.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/7] elfutils: fix builds with gcc 4.6
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
X-List-Received-Date: Mon, 04 Apr 2011 22:46:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 23:37 +0200, Martin Jansa wrote:
> On Fri, Apr 1, 2011 at 3:40 PM, Joshua Lock <josh@linux.intel.com> wrote:
> > From: Joshua Lock <josh@linux.intel.com>
> >
> > gcc 4.6 (as used in Fedora 15) adds some extra warnings which are
> > included with Werror. The new unused-but-set variable warning causes
> > an error in libasm of elfutils. Work around this by removing
> > unused-but-set from Werror.
> >
> > Signed-off-by: Joshua Lock <josh@linux.intel.com>
> > ---
> >  meta/recipes-devtools/elfutils/elfutils_0.148.bb |    4 ++++
> >  1 files changed, 4 insertions(+), 0 deletions(-)
> >
> > diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> > index b2f700e..c395be8 100644
> > --- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> > +++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> > @@ -40,6 +40,10 @@ SRC_URI += "\
> >
> >  inherit autotools
> >
> > +# GCC 4.6.0 raises an unused-but-set warning in libasm, for now remove
> > +# this warning from Werror
> > +CFLAGS_virtclass-native += "-Wno-error=unused-but-set-variable"
> > +
> >  EXTRA_OECONF = "--program-prefix=eu-"
> 
> this breaks all other distros not yet using gcc-4.6..
> 
> 
> configure:2892: checking whether the C compiler works
> configure:2914: gcc -Wno-error=unused-but-set-variable
> -isystem/OE/shr-core/tmp/sysroots/x86_64-linux/usr/include
> -L/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1
> conftest.c  >&5
> cc1: error: -Werror=unused-but-set-variable: No option -Wunused-but-set-variable
> configure:2918: $? = 1
> configure:2956: result: no
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "Red Hat elfutils"
> | #define PACKAGE_TARNAME "elfutils"
> | #define PACKAGE_VERSION "0.148"
> | #define PACKAGE_STRING "Red Hat elfutils 0.148"
> | #define PACKAGE_BUGREPORT "http://bugzilla.redhat.com/bugzilla/"
> | #define PACKAGE_URL ""
> | #define PACKAGE "elfutils"
> | #define VERSION "0.148"
> | #define MODVERSION "Build on jama 2011-04-04T23:34:25+0200"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:2961: error: in
> `/OE/shr-core/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148':
> configure:2965: error: C compiler cannot create executables
> See `config.log' for more details.

Ouch, I'm going to revert this, we'll need an alternative fix. Thanks
for reporting!

Cheers,

Richard


