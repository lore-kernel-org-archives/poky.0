Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7035BE013D0
	for <poky@yoctoproject.org>; Sun,  6 May 2012 01:48:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q468mOFk027532;
	Sun, 6 May 2012 09:48:24 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22095-07; Sun,  6 May 2012 09:48:20 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q468mCmr027526
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 6 May 2012 09:48:14 +0100
Message-ID: <1336294096.23777.55.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Sun, 06 May 2012 09:48:16 +0100
In-Reply-To: <4FA4A56E.8050602@linux.intel.com>
References: <cover.1335944480.git.edwin.zhai@intel.com>
	<1555a6151b58fb142606f7e6cda23f0c95ac0c87.1335944480.git.edwin.zhai@intel.com>
	<4FA4A56E.8050602@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] pango: Fix modules load failure in multilib environment
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
X-List-Received-Date: Sun, 06 May 2012 08:48:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-04 at 20:58 -0700, Saul Wold wrote:
> On 05/02/2012 12:43 AM, edwin.zhai@intel.com wrote:
> > From: Zhai Edwin<edwin.zhai@intel.com>
> >
> > Multi-libs of Pango need different modules, thus different config files and
> > utils. This patch separate config file and utils into different directory to
> > avoid conflict.
> >
> > [YOCTO #2356] got fixed.
> >
> > Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> > ---
> >   .../pango/pango-1.28.4/multilib-fix.patch          |   90 ++++++++++++++++++++
> >   meta/recipes-graphics/pango/pango.inc              |   12 ++-
> >   meta/recipes-graphics/pango/pango_1.28.4.bb        |    7 +-
> >   3 files changed, 101 insertions(+), 8 deletions(-)
> >   create mode 100644 meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch
> >
> > diff --git a/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch b/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch
> > new file mode 100644
> > index 0000000..87d7a0a
> > --- /dev/null
> > +++ b/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch
> > @@ -0,0 +1,90 @@
> > +Fix modules load failure in multilib environment.
> > +
> > +Multi-lib need different configs produced by different utils, so need keep both
> > +of them by putting them in different directory.
> > +
> > +Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> > +
> > +Upstream-Status: Inappropriate [other] - Upstream may have nice fix in future
> > +
> > +Index: pango-1.28.4/pango/pango-utils.c
> > +===================================================================
> > +--- pango-1.28.4.orig/pango/pango-utils.c	2012-04-28 16:23:48.000000000 +0800
> > ++++ pango-1.28.4/pango/pango-utils.c	2012-05-02 10:19:14.000000000 +0800
> > +@@ -678,6 +678,19 @@
> > +
> > + #endif
> > +
> > ++#ifndef G_OS_WIN32
> > ++/* return the relative baselib dir */
> > ++const char *
> > ++pango_get_baselib_directory (void)
> > ++{
> > ++  char *libdir = g_strdup(LIBDIR);
> > ++  char *baselib = g_strdup( g_strrstr(libdir, "lib"));
> > ++  g_free(libdir);
> > ++
> > ++  return baselib;
> > ++}
> > ++#endif
> > ++
> > + /**
> > +  * pango_get_sysconf_subdirectory:
> > +  *
> > +Index: pango-1.28.4/pango/modules.c
> > +===================================================================
> > +--- pango-1.28.4.orig/pango/modules.c	2010-09-22 03:37:01.000000000 +0800
> > ++++ pango-1.28.4/pango/modules.c	2012-05-02 10:42:57.000000000 +0800
> > +@@ -523,12 +523,17 @@
> > +
> > +   char *file_str =  pango_config_key_get ("Pango/ModuleFiles");
> > +   char **files;
> > ++  char *baselib = pango_get_baselib_directory();
> > +   int n;
> > +
> > +   dlloaded_modules = g_hash_table_new (g_str_hash, g_str_equal);
> > +
> > +   if (!file_str)
> > +     file_str = g_build_filename (pango_get_sysconf_subdirectory (),
> > ++#ifndef G_OS_WIN32
> > ++/* For multilib case, keep multiple config file for different libs */
> > ++				 baselib,
> > ++#endif
> > + 				 "pango.modules",
> > + 				 NULL);
> > +
> > +@@ -550,6 +555,7 @@
> > +
> > +   g_strfreev (files);
> > +   g_free (file_str);
> > ++  g_free (baselib);
> > +
> > +   dlloaded_engines = g_slist_reverse (dlloaded_engines);
> > + }
> > +@@ -631,6 +637,7 @@
> > + {
> > +   const char *engine_type = g_quark_to_string (info->engine_type_id);
> > +   const char *render_type = g_quark_to_string (info->render_type_id);
> > ++  char *baselib = pango_get_baselib_directory();
> > +
> > +   init_modules();
> > +
> > +@@ -640,6 +647,10 @@
> > +       if (!no_module_warning)
> > + 	{
> > + 	  gchar *filename = g_build_filename (pango_get_sysconf_subdirectory (),
> > ++#ifndef G_OS_WIN32
> > ++/* For multilib case, keep multiple config file for different libs */
> > ++					      baselib,
> > ++#endif
> > + 					      "pango.modules",
> > + 					      NULL);
> > + 	  g_critical ("No modules found:\n"
> > +@@ -652,6 +663,7 @@
> > + 		     filename,
> > + 		     filename);
> > + 	  g_free (filename);
> > ++	  g_free (baselib);
> > +
> > + 	  no_module_warning = TRUE;
> > + 	}
> > diff --git a/meta/recipes-graphics/pango/pango.inc b/meta/recipes-graphics/pango/pango.inc
> > index a2d5dc3..2184da3 100644
> > --- a/meta/recipes-graphics/pango/pango.inc
> > +++ b/meta/recipes-graphics/pango/pango.inc
> > @@ -32,9 +32,11 @@ EXTRA_AUTORECONF = ""
> >   # seems to go wrong with default cflags
> >   FULL_OPTIMIZATION_arm = "-O2"
> >
> > +# keep multiple version of utils under ${bindir} in multilib environment
> >   EXTRA_OECONF = "--disable-glibtest \
> >   		--enable-explicit-deps=no \
> > -	        --disable-debug"
> > +	        --disable-debug \
> > +	        --bindir=${bindir}/${baselib}"
> >
> >   LEAD_SONAME = "libpango-1.0*"
> >   LIBV = "1.6.0"
> > @@ -44,8 +46,8 @@ if [ "x$D" != "x" ]; then
> >     exit 1
> >   fi
> >
> > -if ! [ -e $D${sysconfdir}/pango ] ; then
> > -	mkdir -p $D${sysconfdir}/pango
> > +if ! [ -e $D${sysconfdir}/pango/${baselib} ] ; then
> > +	mkdir -p $D${sysconfdir}/pango/${baselib}
> >   fi
> >   }
> >
> > @@ -54,9 +56,9 @@ python populate_packages_prepend () {
> >
> >   	modules_root = d.expand('${libdir}/pango/${LIBV}/modules')
> >
> > -	do_split_packages(d, modules_root, '^pango-(.*)\.so$', 'pango-module-%s', 'Pango module %s', prologue + 'pango-querymodules>  /etc/pango/pango.modules')
> > +	do_split_packages(d, modules_root, '^pango-(.*)\.so$', 'pango-module-%s', 'Pango module %s', prologue + '${bindir}/${baselib}/pango-querymodules>  /etc/pango/${baselib}/pango.modules')
> >   }
> >
> > -FILES_${PN} = "${sysconfdir}/pango/* ${bindir}/* ${libdir}/libpango*${SOLIBS}"
> > +FILES_${PN} = "${sysconfdir}/pango/* ${bindir}/${baselib}/* ${libdir}/libpango*${SOLIBS}"
> 
> This change to ${bindir}/${baselib} does not seem right to me, that 
> would be  /usr/bin/usr/lib.

No, it woud be /usr/bin/lib.

> It also results in a packaging issue:
> ERROR: For recipe pango, the following files/directories were installed 
> but not shipped in any package:
> ERROR:   /usr/bin/lib/.debug
> ERROR:   /usr/bin/lib/.debug/pango-querymodules
> ERROR:   /usr/bin/lib/.debug/pango-view
> 
> 
> Please review this patch

There is a missing FILES_${PN}-dbg += "${bindir}/${baselib}/.debug".

I am left wondering if we would be better doing something like:

do_install_append () {
	if [ "${MLPREFIX}" != "" ]; then
		mv ${bindir}/pango-querymodules ${bindir}/${MLPREFIX}pango-querymodules 
	fi
}

It would also be worth cosidering if the patch would be any neater if we
pass ${MLPREFIX} in as an extra variable?

Cheers,

Richard






