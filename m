Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BD7B4C8008C
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 07:28:58 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Apr 2011 05:28:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,323,1299484800"; d="scan'208";a="907176200"
Received: from unknown (HELO [10.255.12.196]) ([10.255.12.196])
	by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2011 05:28:57 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 08 Apr 2011 13:28:57 +0100
In-Reply-To: <BANLkTik=9jfHyeqiXwzS0dA2p=MDfdb8Yw@mail.gmail.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
	<BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
	<1301957183.24596.414.camel@rex> <1302088591.2355.7.camel@scimitar>
	<BANLkTik=9jfHyeqiXwzS0dA2p=MDfdb8Yw@mail.gmail.com>
X-Mailer: Evolution 2.91.92 (2.91.92-2.fc15) 
Message-ID: <1302265737.7724.1.camel@scimitar>
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 08 Apr 2011 12:28:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-06 at 10:06 -0700, Khem Raj wrote:
> On Wed, Apr 6, 2011 at 4:16 AM, Joshua Lock <josh@linux.intel.com> wrote:
> > On Mon, 2011-04-04 at 23:46 +0100, Richard Purdie wrote:
> >> On Mon, 2011-04-04 at 23:37 +0200, Martin Jansa wrote:
> >> > On Fri, Apr 1, 2011 at 3:40 PM, Joshua Lock <josh@linux.intel.com> wrote:
> >> > > From: Joshua Lock <josh@linux.intel.com>
> >> > >
> >> > > gcc 4.6 (as used in Fedora 15) adds some extra warnings which are
> >> > > included with Werror. The new unused-but-set variable warning causes
> >> > > an error in libasm of elfutils. Work around this by removing
> >> > > unused-but-set from Werror.
> >> > >
> >> > > Signed-off-by: Joshua Lock <josh@linux.intel.com>
> >> > > ---
> >> > >  meta/recipes-devtools/elfutils/elfutils_0.148.bb |    4 ++++
> >> > >  1 files changed, 4 insertions(+), 0 deletions(-)
> >> > >
> >> > > diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> >> > > index b2f700e..c395be8 100644
> >> > > --- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> >> > > +++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> >> > > @@ -40,6 +40,10 @@ SRC_URI += "\
> >> > >
> >> > >  inherit autotools
> >> > >
> >> > > +# GCC 4.6.0 raises an unused-but-set warning in libasm, for now remove
> >> > > +# this warning from Werror
> >> > > +CFLAGS_virtclass-native += "-Wno-error=unused-but-set-variable"
> >> > > +
> >> > >  EXTRA_OECONF = "--program-prefix=eu-"
> >> >
> >> > this breaks all other distros not yet using gcc-4.6..
> >> >
> >> >
> >> > configure:2892: checking whether the C compiler works
> >> > configure:2914: gcc -Wno-error=unused-but-set-variable
> >> > -isystem/OE/shr-core/tmp/sysroots/x86_64-linux/usr/include
> >> > -L/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
> >> > -Wl,-rpath-link,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
> >> > -Wl,-rpath,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1
> >> > conftest.c  >&5
> >> > cc1: error: -Werror=unused-but-set-variable: No option -Wunused-but-set-variable
> >> > configure:2918: $? = 1
> >> > configure:2956: result: no
> >> > configure: failed program was:
> >> > | /* confdefs.h */
> >> > | #define PACKAGE_NAME "Red Hat elfutils"
> >> > | #define PACKAGE_TARNAME "elfutils"
> >> > | #define PACKAGE_VERSION "0.148"
> >> > | #define PACKAGE_STRING "Red Hat elfutils 0.148"
> >> > | #define PACKAGE_BUGREPORT "http://bugzilla.redhat.com/bugzilla/"
> >> > | #define PACKAGE_URL ""
> >> > | #define PACKAGE "elfutils"
> >> > | #define VERSION "0.148"
> >> > | #define MODVERSION "Build on jama 2011-04-04T23:34:25+0200"
> >> > | /* end confdefs.h.  */
> >> > |
> >> > | int
> >> > | main ()
> >> > | {
> >> > |
> >> > |   ;
> >> > |   return 0;
> >> > | }
> >> > configure:2961: error: in
> >> > `/OE/shr-core/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148':
> >> > configure:2965: error: C compiler cannot create executables
> >> > See `config.log' for more details.
> >
> > Sorry about this Martin. Thanks for catching and reporting.
> >
> >>
> >> Ouch, I'm going to revert this, we'll need an alternative fix. Thanks
> >> for reporting!
> >
> > I've worked up an alternative fix and sent a pull request to oe-core. I
> > took the approach of consolidating several patches from the upstream
> > source repository which remove the unused variables.
> >
> > I consolidated them into a single patch so that they are easier to drop
> > once we update elfutils to 0.152 or higher.
> >
> 
> Why not update to 0.152 then

The patch series is intended for a Bernard point release, the Bernard
release is already out with eflutils 0.148.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


