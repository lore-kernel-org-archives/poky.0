Return-Path: <martyn.welch@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B95DEE00D8D; Wed, 27 Apr 2016 04:12:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B157CE00D84
	for <poky@yoctoproject.org>; Wed, 27 Apr 2016 04:12:18 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: martyn) with ESMTPSA id 05377260E81
To: "Burton, Ross" <ross.burton@intel.com>
References: <1461750017-14514-1-git-send-email-martyn.welch@collabora.co.uk>
	<CAJTo0LYLc2Yt03c7fkeLd9z+NaFDEKszEhEXyjPpF2up6AY25A@mail.gmail.com>
From: Martyn Welch <martyn.welch@collabora.co.uk>
Message-ID: <57209E8E.7020001@collabora.co.uk>
Date: Wed, 27 Apr 2016 12:12:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYLc2Yt03c7fkeLd9z+NaFDEKszEhEXyjPpF2up6AY25A@mail.gmail.com>
Cc: Jussi Kukkonen <jussi.jukkonen@intel.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] [jethro] glew: Correct version in autotooling patches
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
X-List-Received-Date: Wed, 27 Apr 2016 11:12:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 27/04/16 11:50, Burton, Ross wrote:
> Hi Martyn,
>
> Patches for oe-core should go to
> openembedded-core@lists.openembedded.org
> <mailto:openembedded-core@lists.openembedded.org>, not poky@.
>

Thanks Ross, sorry for the confusion,

Martyn

> Cheers,
> Ross
>
>
> On 27 April 2016 at 10:40, Martyn Welch <martyn.welch@collabora.co.uk
> <mailto:martyn.welch@collabora.co.uk>> wrote:
>
>     The additional autotooling patched into glew claims the version is 1.9.0
>     whilst we are building 1.12.0. The version in the autotooling is used to
>     set the version number in the pkgconfig file, this results in the
>     configuration of packages which depend on glew > 1.9.0 failing.
>
>     This patch updates the version number used in the patches to match
>     that of
>     the version being built.
>
>     Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk
>     <mailto:martyn.welch@collabora.co.uk>>
>     ---
>       meta/recipes-graphics/glew/glew/autotools.patch           | 4 ++--
>       meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch | 2 +-
>       2 files changed, 3 insertions(+), 3 deletions(-)
>
>     diff --git a/meta/recipes-graphics/glew/glew/autotools.patch
>     b/meta/recipes-graphics/glew/glew/autotools.patch
>     index 7dfe087..81a1343 100644
>     --- a/meta/recipes-graphics/glew/glew/autotools.patch
>     +++ b/meta/recipes-graphics/glew/glew/autotools.patch
>     @@ -20,7 +20,7 @@ Index: glew/configure.ac <http://configure.ac>
>       +# Process this file with autoconf to produce a configure script.
>       +
>       +AC_PREREQ([2.62])
>     -+AC_INIT([glew], [1.9.0], [BUG-REPORT-ADDRESS])
>     ++AC_INIT([glew], [1.12.0], [BUG-REPORT-ADDRESS])
>       +AC_CONFIG_SRCDIR([src/glew.c])
>       +AC_CONFIG_HEADERS([config.h])
>       +AM_INIT_AUTOMAKE([-Wall -Werror foreign])
>     @@ -77,7 +77,7 @@ Index: glew/configure.ac <http://configure.ac>
>       +# for now we use the same version as the package, but that should
>     be avoided
>       +# in the future
>       +
>     -+AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
>     ++AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
>       +
>       +AC_CONFIG_FILES([Makefile
>       +                 include/Makefile
>     diff --git
>     a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
>     b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
>     index 70a99ae..baab9ff 100644
>     --- a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
>     +++ b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
>     @@ -20,7 +20,7 @@ Index: glew-1.11.0/configure.ac <http://configure.ac>
>       ===================================================================
>       --- glew-1.11.0.orig/configure.ac <http://configure.ac>
>       +++ glew-1.11.0/configure.ac <http://configure.ac>
>     -@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
>     +@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
>
>        AC_CONFIG_FILES([Makefile
>                         include/Makefile
>     --
>     1.8.3.1
>
>     --
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>
>

