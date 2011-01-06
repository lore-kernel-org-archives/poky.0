Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 857AA4C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 01:35:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 23:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="874938639"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 23:35:55 -0800
Message-ID: <4D2570DA.1090409@intel.com>
Date: Wed, 05 Jan 2011 23:35:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
	<973479329b1beba63c53ffde7229202d794a6c75.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <973479329b1beba63c53ffde7229202d794a6c75.1294237909.git.nitin.a.kamble@intel.com>
X-Mailman-Approved-At: Thu, 06 Jan 2011 02:13:49 -0600
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 5/8] perl, perl-native: upgrade from 5.8.8 to 5.12.2
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
X-List-Received-Date: Thu, 06 Jan 2011 07:36:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Nitin,

I am not sure how you tested this, but I got a couple of different 
failure modes when build this from scratch.  You can see the scratch 
failure on the autobuilder in distro-testing.

Thanks

   Sau!


On 01/05/2011 07:07 AM, Nitin A Kamble wrote:
> Deleted these patches as they are part of the upstream code now.
>      deleted:    files/perl-5.8.8-gcc-4.2.patch
>      deleted:    perl-5.12.2/makedepend-dash.patch
>      deleted:    perl-5.12.2/native-no-gdbminc.patch
>      deleted:    perl-5.12.2/54_debian_perldoc-r.patch
>
> And rebased these patches to the newer source code
>      modified:   files/letgcc-find-errno.patch
>      modified:   perl-5.12.2/Makefile.patch
>      modified:   perl-5.12.2/asm-pageh-fix.patch
>      modified:   perl-5.12.2/native-nopacklist.patch
>      modified:   perl-5.12.2/native-perlinc.patch
>      modified:   perl-5.12.2/Makefile.SH.patch
>      modified:   perl-5.12.2/installperl.patch
>      modified:   perl-5.12.2/perl-dynloader.patch
>      modified:   perl-5.12.2/09_fix_installperl.patch
>
> get patches from debian perl ver 5.12.2-2
>     the fakeroot.diff patch from debian is conflicting with our
>     Makefile.SH.patch, hence disabling the fakeroot patch
>
> use newly created config files
>     Created with current milestone branch on qemu machines
>        modified:   config.sh
>        modified:   config.sh-32
>        modified:   config.sh-64
>
> get some changes from oe's perl 5.10.1 recipe
>     fix the Makefile.SH.patch use miniperl instead of perl
>     import a OE 5.10.1 patch: uudmap_cross
>
> fix install issues
>     add /usr in the destdir, so that perl gets installed in
>     /usr/bin/perl and not in /bin/perl
>
>     link /usr/lib/perl to /usr/lib/perl5 so that operations with
>     /usr/lib/perl path in them keep on working.
>
> Fix/Improve perl packaging
>     avoid perl-module-module-* kind of packages
>     recreate perl-rdepends_5.12.2.inc file with new set of packages
>     import from oe perl-rprovide_5.12.2.inc
>     combine all unicore perl scripts in one package
>     simplify perl-lib
>     reduce no of perl recipe packages greatly.
>
> Add zlib to depedancy
>
> fix buildtime host contamination
>
> This also fixes [BUGID #384]
>
> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>   .../perl/files/letgcc-find-errno.patch             |   14 +-
>   .../perl/files/perl-5.8.8-gcc-4.2.patch            |   13 -
>   .../perl/perl-5.12.2/09_fix_installperl.patch      |   19 +
>   .../perl/perl-5.12.2/Makefile.SH.patch             |  288 +++++
>   .../{perl-5.8.8 =>  perl-5.12.2}/Makefile.patch     |   20 +-
>   .../asm-pageh-fix.patch                            |    6 +-
>   .../perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh     |  322 ++++---
>   .../recipes-devtools/perl/perl-5.12.2/config.sh-32 |   38 +
>   .../{perl-5.8.8 =>  perl-5.12.2}/config.sh-32-be    |    0
>   .../{perl-5.8.8 =>  perl-5.12.2}/config.sh-32-le    |    0
>   .../recipes-devtools/perl/perl-5.12.2/config.sh-64 |   38 +
>   .../{perl-5.8.8 =>  perl-5.12.2}/config.sh-64-be    |    0
>   .../{perl-5.8.8 =>  perl-5.12.2}/config.sh-64-le    |    0
>   .../perl/perl-5.12.2/cross-generate_uudmap.patch   |   13 +
>   .../perl/perl-5.12.2/debian/arm_optim.diff         |   32 +
>   .../debian/arm_thread_stress_timeout.diff          |   23 +
>   .../perl/perl-5.12.2/debian/cpan_config_path.diff  |   22 +
>   .../perl-5.12.2/debian/cpan_definstalldirs.diff    |   35 +
>   .../perl-5.12.2/debian/cpanplus_config_path.diff   |   43 +
>   .../debian/cpanplus_definstalldirs.diff            |   52 +
>   .../perl/perl-5.12.2/debian/db_file_ver.diff       |   32 +
>   .../perl-5.12.2/debian/deprecate-with-apt.diff     |   59 +
>   .../debian/devel-ppport-ia64-optim.diff            |   32 +
>   .../perl-5.12.2/debian/disable-zlib-bundling.diff  |   29 +
>   .../perl/perl-5.12.2/debian/doc_info.diff          |   34 +
>   .../perl/perl-5.12.2/debian/enc2xs_inc.diff        |   49 +
>   .../perl/perl-5.12.2/debian/errno_ver.diff         |   32 +
>   .../debian/extutils_hacks.diff}                    |  199 +++-
>   .../perl/perl-5.12.2/debian/fakeroot.diff          |   43 +
>   .../perl-5.12.2/debian/fixes/autodie-flock.diff    |   98 ++
>   .../debian/fixes/concat-stack-corruption.diff      |   37 +
>   .../debian/fixes/cpanplus-without-home.diff        |   30 +
>   .../perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff     |  106 ++
>   .../perl-5.12.2/debian/fixes/hurd-ccflags.diff     |   26 +
>   .../perl-5.12.2/debian/fixes/lc-numeric-docs.diff  |   95 ++
>   .../debian/fixes/lc-numeric-sprintf.diff           |   29 +
>   .../perl-5.12.2/debian/fixes/net_smtp_docs.diff    |   23 +
>   .../perl/perl-5.12.2/debian/fixes/processPL.diff   |   43 +
>   .../perl/perl-5.12.2/debian/instmodsh_doc.diff     |   26 +
>   .../perl/perl-5.12.2/debian/ld_run_path.diff       |   23 +
>   .../perl-5.12.2/debian/libnet_config_path.diff     |   35 +
>   .../perl-5.12.2/debian/m68k_thread_stress.diff     |   43 +
>   .../debian/mod_paths.diff}                         |   67 +-
>   .../debian/module_build_man_extensions.diff        |   31 +
>   .../perl/perl-5.12.2/debian/perlivp.diff           |   38 +
>   .../perl/perl-5.12.2/debian/prune_libs.diff        |   36 +
>   .../debian/squelch-locale-warnings.diff            |   53 +
>   .../{perl-5.8.8 =>  perl-5.12.2}/generate-sh.patch  |    0
>   .../{perl-5.8.8 =>  perl-5.12.2}/installperl.patch  |   10 +-
>   .../native-nopacklist.patch                        |   36 +-
>   .../native-perlinc.patch                           |    4 +-
>   .../{perl-5.8.8 =>  perl-5.12.2}/native-ssp.patch   |    0
>   .../perl-configpm-switch.patch                     |    0
>   .../{perl-5.8.8 =>  perl-5.12.2}/perl-configure.sh  |    4 +-
>   .../perl-dynloader.patch                           |    4 +-
>   .../perl-enable-gdbm.patch                         |    0
>   .../perl-moreconfig.patch                          |    0
>   .../perl/perl-5.8.8/09_fix_installperl.patch       |   32 -
>   .../perl/perl-5.8.8/54_debian_perldoc-r.patch      |   16 -
>   .../perl-5.8.8/58_debian_cpan_config_path.patch    |   14 -
>   .../perl-5.8.8/60_debian_libnet_config_path.patch  |   16 -
>   .../perl-5.8.8/62_debian_cpan_definstalldirs.patch |   16 -
>   .../perl/perl-5.8.8/64_debian_enc2xs_inc.patch     |   28 -
>   .../perl/perl-5.8.8/Makefile.SH.patch              |  253 -----
>   meta/recipes-devtools/perl/perl-5.8.8/config.sh-32 |   58 -
>   meta/recipes-devtools/perl/perl-5.8.8/config.sh-64 |   58 -
>   .../perl/perl-5.8.8/makedepend-dash.patch          |   13 -
>   .../perl/perl-5.8.8/native-no-gdbminc.patch        |   18 -
>   ...{perl-native_5.8.8.bb =>  perl-native_5.12.2.bb} |   20 +-
>   .../recipes-devtools/perl/perl-rdepends_5.12.2.inc |  210 ++++
>   meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc | 1145 --------------------
>   .../perl/perl-rprovides_5.12.2.inc                 |    1 +
>   meta/recipes-devtools/perl/perl_5.12.2.bb          |  282 +++++
>   meta/recipes-devtools/perl/perl_5.8.8.bb           |  228 ----
>   74 files changed, 2596 insertions(+), 2196 deletions(-)
>   delete mode 100644 meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/Makefile.patch (81%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/asm-pageh-fix.patch (72%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh (66%)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-32
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh-32-be (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh-32-le (100%)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-64
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh-64-be (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/config.sh-64-le (100%)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff
>   rename meta/recipes-devtools/perl/{perl-5.8.8/52_debian_extutils_hacks.patch =>  perl-5.12.2/debian/extutils_hacks.diff} (55%)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff
>   rename meta/recipes-devtools/perl/{perl-5.8.8/53_debian_mod_paths.patch =>  perl-5.12.2/debian/mod_paths.diff} (59%)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/generate-sh.patch (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/installperl.patch (57%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/native-nopacklist.patch (76%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/native-perlinc.patch (80%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/native-ssp.patch (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/perl-configpm-switch.patch (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/perl-configure.sh (94%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/perl-dynloader.patch (87%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/perl-enable-gdbm.patch (100%)
>   rename meta/recipes-devtools/perl/{perl-5.8.8 =>  perl-5.12.2}/perl-moreconfig.patch (100%)
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-32
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-64
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch
>   delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch
>   rename meta/recipes-devtools/perl/{perl-native_5.8.8.bb =>  perl-native_5.12.2.bb} (83%)
>   create mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc
>   delete mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
>   create mode 100644 meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc
>   create mode 100644 meta/recipes-devtools/perl/perl_5.12.2.bb
>   delete mode 100644 meta/recipes-devtools/perl/perl_5.8.8.bb
>
> diff --git a/meta/recipes-devtools/perl/files/letgcc-find-errno.patch b/meta/recipes-devtools/perl/files/letgcc-find-errno.patch
> index 24722ee..47f972d 100644
> --- a/meta/recipes-devtools/perl/files/letgcc-find-errno.patch
> +++ b/meta/recipes-devtools/perl/files/letgcc-find-errno.patch
> @@ -8,10 +8,12 @@ external toolchain since perl will search in ${STAGING_INCDIR} for
>   errno.h (when using gcc) and that isn't where it's located - its
>   wherever the external toolchain keeps it's headers.
>
> ---- perl-5.8.8/ext/Errno/Errno_pm.PL	2007/04/30 14:10:10	1.1
> -+++ perl-5.8.8/ext/Errno/Errno_pm.PL	2007/04/30 14:21:35
> -@@ -11,8 +11,18 @@
> - open OUT, ">Errno.pm" or die "Cannot open Errno.pm: $!";
> +Index: perl-5.12.2/ext/Errno/Errno_pm.PL
> +===================================================================
> +--- perl-5.12.2.orig/ext/Errno/Errno_pm.PL
> ++++ perl-5.12.2/ext/Errno/Errno_pm.PL
> +@@ -17,8 +17,18 @@ unlink "Errno.tmp" if -f "Errno.tmp";
> + open OUT, ">Errno.tmp" or die "Cannot open Errno.tmp: $!";
>    select OUT;
>    my $file;
>   -my @files = get_files();
> @@ -31,12 +33,12 @@ wherever the external toolchain keeps it's headers.
>        # MinGW complains "warning: #pragma system_header ignored outside include
>        # file" if the header files are processed individually, so include them
>        # all in .c file and process that instead.
> -@@ -44,7 +54,7 @@
> +@@ -53,7 +63,7 @@ sub process_file {
>            chomp($file = `cygpath -w "$file"`);
>        }
>
>   -    return unless defined $file and -f $file;
>   +#    return unless defined $file and -f $file;
> - #   warn "Processing $file\n";
> + #    warn "Processing $file\n";
>
>        local *FH;
> diff --git a/meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch b/meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch
> deleted file mode 100644
> index 653a475..0000000
> --- a/meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -See http://bugs.openembedded.net/show_bug.cgi?id=2168
> -Fix for gcc 4.2
> -
> ---- perl-5.8.8/makedepend.SH.ark	2006-11-01 16:32:05.000000000 +0100
> -+++ perl-5.8.8/makedepend.SH	2006-11-01 16:32:15.000000000 +0100
> -@@ -167,6 +167,7 @@
> -             -e '/^#.*<builtin>/d' \
> -             -e '/^#.*<built-in>/d' \
> -             -e '/^#.*<command line>/d' \
> -+            -e '/^#.*<command-line>/d' \
> - 	    -e '/^#.*"-"/d' \
> - 	    -e '/: file path prefix .* never used$/d' \
> - 	    -e 's#\.[0-9][0-9]*\.c#'"$file.c#" \
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch b/meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch
> new file mode 100644
> index 0000000..6f2531b
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch
> @@ -0,0 +1,19 @@
> +Correctly identify arch-specific modules in ext/ where the .pm files
> +are under lib.
> +
> +Ensure that POSIX/SigAction is kept with the rest of the POSIX module
> +under archlib.
> +
> +Index: perl-5.12.2/installperl
> +===================================================================
> +--- perl-5.12.2.orig/installperl
> ++++ perl-5.12.2/installperl
> +@@ -750,7 +750,7 @@ sub installlib {
> +     }
> +
> +     if (-f $_) {
> +-	if (/\.(?:al|ix)$/&&  !($dir =~ m[^auto/(.*)$])) {
> ++	if (/\.(?:al|ix)$/&&  !($dir =~ m[^auto/(.*)$]&&  $archpms{$1})) {
> + 	    $installlib = $installprivlib;
> + 	    #We're installing *.al and *.ix files into $installprivlib,
> + 	    #but we have to delete old *.al and *.ix files from the 5.000
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch b/meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch
> new file mode 100644
> index 0000000..103fe97
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch
> @@ -0,0 +1,288 @@
> +Index: perl-5.12.2/Makefile.SH
> +===================================================================
> +--- perl-5.12.2.orig/Makefile.SH
> ++++ perl-5.12.2/Makefile.SH
> +@@ -50,12 +50,12 @@ case "$useshrplib" in
> + true)
> + 	# Prefix all runs of 'miniperl' and 'perl' with
> + 	# $ldlibpth so that ./perl finds *this* shared libperl.
> +-	case "$LD_LIBRARY_PATH" in
> +-	'')
> +-		ldlibpth="LD_LIBRARY_PATH=`pwd`";;
> +-	*)
> +-		ldlibpth="LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}";;
> +-	esac
> ++#	case "$LD_LIBRARY_PATH" in
> ++#	'')
> ++#		ldlibpth="LD_LIBRARY_PATH=`pwd`";;
> ++#	*)
> ++#		ldlibpth="LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}";;
> ++#	esac
> +
> + 	pldlflags="$cccdlflags"
> + 	static_ldflags=''
> +@@ -133,7 +133,8 @@ true)
> + 	        ldlibpth=''
> + 	        ;;
> + 	    *)
> +-		eval "ldlibpth=\"$ldlibpthname=`pwd`:\$$ldlibpthname\""
> ++# We compile in the library path in OE from cross-compile, so lets not do this
> ++#		eval "ldlibpth=\"$ldlibpthname=`pwd`:\$$ldlibpthname\""
> + 		;;
> + 	    esac
> + 	    # Strip off any trailing :'s
> +@@ -154,18 +155,7 @@ true)
> + 	    # INSTALL file, under "Building a shared perl library".
> + 	    # If there is no pre-existing $libperl, we don't need
> + 	    # to do anything further.
> +-	    if test -f $archlib/CORE/$libperl; then
> +-		rm -f preload
> +-		cat<<'EOT'>  preload
> +-#! /bin/sh
> +-lib=$1
> +-shift
> +-test -r $lib&&  export LD_PRELOAD="$lib $LD_PRELOAD"
> +-exec "$@"
> +-EOT
> +-		chmod 755 preload
> +-		ldlibpth="$ldlibpth `pwd`/preload `pwd`/$libperl"
> +-	    fi
> ++	    echo linux libraries overwritten by cross-compile patches
> + 	    ;;
> + 	os390)	test -f /bin/env&&  ldlibpth="/bin/env $ldlibpth"
> + 		;;
> +@@ -553,9 +543,19 @@ splintfiles = $(c1)
> + .c.s:
> + 	$(CCCMDSRC) -S $*.c
> +
> +-all: $(FIRSTMAKEFILE) $(MINIPERL_EXE) miniperl $(generated_pods) $(private) $(unidatafiles) $(public) $(dynamic_ext) $(nonxs_ext) extras.make
> +-	@echo " ";
> +-	@echo "	Everything is up to date. Type '$(MAKE) test' to run test suite."
> ++#all: $(FIRSTMAKEFILE) $(MINIPERL_EXE) miniperl $(generated_pods) $(private) $(unidatafiles) $(public) $(dynamic_ext) $(nonxs_ext) extras.make
> ++#	@echo " ";
> ++#	@echo "	Everything is up to date. Type '$(MAKE) test' to run test suite."
> ++
> ++all: $(FIRSTMAKEFILE) $(MINIPERL_EXE) miniperl $(unidatafiles)
> ++
> ++more: $(generated_pods) $(private) $(public)
> ++
> ++more2: $(dynamic_ext)
> ++
> ++more3: $(nonxs_ext)
> ++
> ++more4: extras.make
> +
> + .PHONY: all translators utilities
> +
> +@@ -563,16 +563,16 @@ all: $(FIRSTMAKEFILE) $(MINIPERL_EXE) mi
> + # by make_patchnum.pl.
> + git_version.h: lib/Config_git.pl
> +
> +-lib/Config_git.pl: $(MINIPERL_EXE) make_patchnum.pl
> ++lib/Config_git.pl: make_patchnum.pl
> + 	$(MINIPERL) make_patchnum.pl
> +
> + # make sure that we recompile perl.c if the git version changes
> + perl$(OBJ_EXT): git_version.h
> +
> +-translators:	$(MINIPERL_EXE) $(CONFIGPM) $(dynamic_ext) FORCE
> ++translators:	$(CONFIGPM) $(dynamic_ext) FORCE
> + 	@echo " "; echo "	Making x2p stuff"; cd x2p; $(LDLIBPTH) $(MAKE) all
> +
> +-utilities:	$(MINIPERL_EXE) $(CONFIGPM) $(plextract) FORCE
> ++utilities:	$(CONFIGPM) $(plextract) FORCE
> + 	@echo " "; echo "	Making utilities"; cd utils; $(LDLIBPTH) $(MAKE) all
> +
> +
> +@@ -747,7 +747,7 @@ $(LIBPERL): $&  $(obj) $(DYNALOADER) $(LI
> + 	true)
> + 		$spitshell>>$Makefile<<'!NO!SUBS!'
> + 	rm -f $@
> +-	$(LD) -o $@ $(SHRPLDFLAGS) $(obj) $(DYNALOADER) $(libs)
> ++	$(LD) -o $@ $(SHRPLDFLAGS) $(obj) $(DYNALOADER) $(libs) -Wl,-soname,libperl.so.5
> + !NO!SUBS!
> + 		case "$osname" in
> + 		aix)
> +@@ -788,7 +788,9 @@ $(MINIPERL_EXE): $&  miniperlmain$(OBJ_EX
> + 	$(CC) -o $(MINIPERL_EXE) $(CLDFLAGS) \
> + 	    $(mini_obj) \
> + 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perlmini$(OBJ_EXT) $(libs)
> +-	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> ++	mv -f miniperl miniperl-target
> ++	ln -s hostperl miniperl
> ++#	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> + !NO!SUBS!
> + 		;;
> + 	next4*)
> +@@ -796,7 +798,9 @@ $(MINIPERL_EXE): $&  miniperlmain$(OBJ_EX
> + $(MINIPERL_EXE): $&  miniperlmain$(OBJ_EXT) $(mini_obj) perlmini$(OBJ_EXT) opmini$(OBJ_EXT)
> + 	$(CC) -o $(MINIPERL_EXE) $(mini_obj) \
> + 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perlmini$(OBJ_EXT) $(libs)
> +-	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> ++	mv -f miniperl miniperl-target
> ++	ln -s hostperl miniperl
> ++#	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> + !NO!SUBS!
> + 		;;
> + 	darwin*)
> +@@ -818,7 +822,9 @@ $(MINIPERL_EXE): $&  miniperlmain$(OBJ_EX
> + 	$(CC) $(CLDFLAGS) $(NAMESPACEFLAGS) -o $(MINIPERL_EXE) \
> + 	    $(mini_obj) \
> + 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perlmini$(OBJ_EXT) $(libs)
> +-	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> ++	mv -f miniperl miniperl-target
> ++	ln -s hostperl miniperl
> ++#	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> + !NO!SUBS!
> + 		;;
> + 	*)
> +@@ -828,7 +834,10 @@ $(MINIPERL_EXE): $&  miniperlmain$(OBJ_EX
> + 	$(LDLIBPTH) $(CC) $(CLDFLAGS) -o $(MINIPERL_EXE) \
> + 	    $(mini_obj) \
> + 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perlmini$(OBJ_EXT) $(libs)
> +-	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> ++
> ++	mv -f miniperl miniperl-target
> ++	ln -s hostperl miniperl
> ++#	$(LDLIBPTH) $(RUN) ./miniperl$(HOST_EXE_EXT) -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> + !NO!SUBS!
> + 		;;
> + 	esac
> +@@ -950,7 +959,7 @@ case "${osname}" in
> + catamount)
> + $spitshell>>$Makefile<<!GROK!THIS!
> + .PHONY: makeppport
> +-makeppport: \$(MINIPERL_EXE) \$(CONFIGPM)
> ++makeppport: \$(CONFIGPM)
> + 	-@for f in Makefile.PL PPPort_pm.PL PPPort_xs.PL ppport_h.PL; do \
> + 	(cd ext/Devel-PPPort&&  `pwd`/run.sh ../../$(MINIPERL_EXE) -I../../lib \$\$f); \
> + 	done
> +@@ -960,7 +969,7 @@ makeppport: \$(MINIPERL_EXE) \$(CONFIGPM
> + *)
> + $spitshell>>$Makefile<<'!NO!SUBS!'
> + .PHONY: makeppport
> +-makeppport: $(MINIPERL_EXE) $(CONFIGPM) $(nonxs_ext)
> ++makeppport: $(CONFIGPM) $(nonxs_ext)
> + 	$(MINIPERL) $(Icwd) mkppport
> +
> + !NO!SUBS!
> +@@ -970,30 +979,30 @@ esac
> + $spitshell>>$Makefile<<'!NO!SUBS!'
> +
> + .PHONY: preplibrary
> +-preplibrary: $(MINIPERL_EXE) $(CONFIGPM) lib/re.pm $(PREPLIBRARY_LIBPERL)
> ++preplibrary: $(CONFIGPM) lib/re.pm $(PREPLIBRARY_LIBPERL)
> +
> + $(CONFIGPM_FROM_CONFIG_SH): $(CONFIGPOD)
> +
> +-$(CONFIGPOD): config.sh $(MINIPERL_EXE) configpm Porting/Glossary lib/Config_git.pl
> ++$(CONFIGPOD): config.sh configpm Porting/Glossary lib/Config_git.pl
> + 	$(MINIPERL) configpm
> +
> +-lib/ExtUtils/Miniperl.pm: miniperlmain.c $(MINIPERL_EXE) minimod.pl $(CONFIGPM)
> ++lib/ExtUtils/Miniperl.pm: miniperlmain.c minimod.pl $(CONFIGPM)
> + 	$(MINIPERL) minimod.pl>  lib/ExtUtils/Miniperl.pm
> +
> + lib/re.pm: ext/re/re.pm
> + 	@-rm -f $@
> + 	cp ext/re/re.pm lib/re.pm
> +
> +-$(plextract):	$(MINIPERL_EXE) $(CONFIGPM) x2p/s2p $(dynamic_ext)
> ++$(plextract):	$(CONFIGPM) x2p/s2p $(dynamic_ext)
> + 	@-rm -f $@
> + 	$(MINIPERL) $@.PL
> +
> +-x2p/s2p: $(MINIPERL_EXE) $(CONFIGPM) $(dynamic_ext) x2p/s2p.PL
> ++x2p/s2p: $(CONFIGPM) $(dynamic_ext) x2p/s2p.PL
> + 	cd x2p; $(LDLIBPTH) $(MAKE) s2p
> +
> + unidatafiles $(unidatafiles) pod/perluniprops.pod: uni.data
> +
> +-uni.data: $(MINIPERL_EXE) $(CONFIGPM) lib/unicore/mktables $(nonxs_ext)
> ++uni.data: $(CONFIGPM) lib/unicore/mktables $(nonxs_ext)
> + 	$(MINIPERL) $(Icwd) lib/unicore/mktables -C lib/unicore -P pod -maketest -makelist -p
> + #	Commented out so always runs, mktables looks at far more files than we
> + #	can in this makefile to decide if needs to run or not
> +@@ -1002,21 +1011,21 @@ uni.data: $(MINIPERL_EXE) $(CONFIGPM) li
> + # $(PERL_EXE) and ext because buildtoc uses Text::Wrap uses re
> + # But also this ensures that all extensions are built before we try to scan
> + # them, which picks up Devel::PPPort's documentation.
> +-pod/perltoc.pod: $(perltoc_pod_prereqs)  $(PERL_EXE) $(ext) pod/buildtoc
> +-	$(RUN_PERL) -f -Ilib pod/buildtoc --build-toc -q
> ++pod/perltoc.pod: $(perltoc_pod_prereqs) $(ext) pod/buildtoc
> ++	$(MINIPERL) -f -Ilib pod/buildtoc --build-toc -q
> +
> + pod/perlapi.pod: pod/perlintern.pod
> +
> +-pod/perlintern.pod: $(MINIPERL_EXE) autodoc.pl embed.fnc
> ++pod/perlintern.pod: autodoc.pl embed.fnc
> + 	$(MINIPERL) autodoc.pl
> +
> +-pod/perlmodlib.pod: $(MINIPERL_EXE) pod/perlmodlib.PL MANIFEST
> ++pod/perlmodlib.pod: pod/perlmodlib.PL MANIFEST
> + 	$(MINIPERL) $(Icwd) pod/perlmodlib.PL -q
> +
> + pod/perldelta.pod: pod/perl5122delta.pod
> + 	$(LNS) perl5122delta.pod pod/perldelta.pod
> +
> +-extra.pods: $(MINIPERL_EXE)
> ++extra.pods:
> + 	-@test ! -f extra.pods || rm -f `cat extra.pods`
> + 	-@rm -f extra.pods
> + 	-@for x in `grep -l '^=[a-z]' README.* | grep -v README.vms` ; do \
> +@@ -1059,11 +1068,7 @@ no-install:
> + INSTALL_DEPENDENCE = all
> +
> + install.perl:	$(INSTALL_DEPENDENCE) installperl
> +-	$(RUN_PERL) installperl --destdir=$(DESTDIR) $(INSTALLFLAGS) $(STRIPFLAGS)
> +-	-@test ! -s extras.lst || $(MAKE) extras.install
> +-
> +-install.man:	all installman
> +-	$(RUN_PERL) installman --destdir=$(DESTDIR) $(INSTALLFLAGS)
> ++	./hostperl -Ifake_config_library -Ilib -MConfig installperl --destdir=$(DESTDIR) $(INSTALLFLAGS) $(STRIPFLAGS)
> +
> + # XXX Experimental. Hardwired values, but useful for testing.
> + # Eventually Configure could ask for some of these values.
> +@@ -1160,16 +1165,16 @@ manicheck:	FORCE
> + #
> + # DynaLoader may be needed for extensions that use Makefile.PL.
> +
> +-$(DYNALOADER):	$(MINIPERL_EXE) preplibrary FORCE $(nonxs_ext)
> ++$(DYNALOADER):	preplibrary FORCE $(nonxs_ext)
> + 	$(MINIPERL) make_ext.pl $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL) LINKTYPE=static $(STATIC_LDFLAGS)
> +
> +-d_dummy $(dynamic_ext):	$(MINIPERL_EXE) preplibrary makeppport $(DYNALOADER) FORCE $(PERLEXPORT)
> ++d_dummy $(dynamic_ext):	preplibrary makeppport $(DYNALOADER) FORCE $(PERLEXPORT)
> + 	$(MINIPERL) make_ext.pl $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL) LINKTYPE=dynamic
> +
> +-s_dummy $(static_ext):	$(MINIPERL_EXE) preplibrary makeppport $(DYNALOADER) FORCE
> ++s_dummy $(static_ext):	preplibrary makeppport $(DYNALOADER) FORCE
> + 	$(MINIPERL) make_ext.pl $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL) LINKTYPE=static $(STATIC_LDFLAGS)
> +
> +-n_dummy $(nonxs_ext):	$(MINIPERL_EXE) preplibrary FORCE
> ++n_dummy $(nonxs_ext):	preplibrary FORCE
> + 	$(MINIPERL) make_ext.pl $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL)
> + !NO!SUBS!
> +
> +@@ -1367,10 +1372,10 @@ _test:
> +
> + test_prep_pre: preplibrary utilities $(nonxs_ext)
> +
> +-test_prep: test_prep_pre $(MINIPERL_EXE) $(unidatafiles) $(PERL_EXE) $(dynamic_ext) $(TEST_PERL_DLL) runtests
> ++test_prep: test_prep_pre $(unidatafiles) $(PERL_EXE) $(dynamic_ext) $(TEST_PERL_DLL) runtests
> + 	cd t&&  (rm -f $(PERL_EXE); $(LNS) ../$(PERL_EXE) $(PERL_EXE))
> +
> +-test_prep_reonly: $(MINIPERL_EXE) $(PERL_EXE) $(dynamic_ext_re) $(TEST_PERL_DLL)
> ++test_prep_reonly: $(PERL_EXE) $(dynamic_ext_re) $(TEST_PERL_DLL)
> + 	$(MINIPERL) make_ext.pl $(dynamic_ext_re) MAKE=$(MAKE) LIBPERL_A=$(LIBPERL) LINKTYPE=dynamic
> + 	cd t&&  (rm -f $(PERL_EXE); $(LNS) ../$(PERL_EXE) $(PERL_EXE))
> +
> +@@ -1461,7 +1466,7 @@ minitest.prep:
> +
> + # Can't depend on lib/Config.pm because that might be where miniperl
> + # is crashing.
> +-minitest: $(MINIPERL_EXE) lib/re.pm minitest.prep
> ++minitest: lib/re.pm minitest.prep
> + 	- cd t&&  (rm -f $(PERL_EXE); $(LNS) ../$(MINIPERL_EXE) $(PERL_EXE)) \
> + 		&&  $(RUN_PERL) TEST -minitest base/*.t comp/*.t cmd/*.t run/*.t io/*.t re/*.t op/*.t uni/*.t</dev/tty
> +
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/Makefile.patch b/meta/recipes-devtools/perl/perl-5.12.2/Makefile.patch
> similarity index 81%
> rename from meta/recipes-devtools/perl/perl-5.8.8/Makefile.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/Makefile.patch
> index ed494b3..e7226ff 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/Makefile.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/Makefile.patch
> @@ -1,10 +1,10 @@
> -Index: perl-5.8.8/Cross/Makefile
> +Index: perl-5.12.2/Cross/Makefile
>   ===================================================================
> ---- perl-5.8.8.orig/Cross/Makefile	2004-01-12 21:44:01.000000000 +0100
> -+++ perl-5.8.8/Cross/Makefile	2007-08-15 00:15:18.000000000 +0200
> +--- perl-5.12.2.orig/Cross/Makefile
> ++++ perl-5.12.2/Cross/Makefile
>   @@ -2,7 +2,8 @@
>    #
> - ## $Id: Makefile,v 1.7 2004/01/12 15:41:02 red Exp red $
> + ## $Id: Makefile,v 1.5 2003/12/12 00:48:19 red Exp red $
>
>   -export TOPDIR=${shell pwd}
>   +override TOPDIR=${shell pwd}
> @@ -12,7 +12,7 @@ Index: perl-5.8.8/Cross/Makefile
>    include $(TOPDIR)/config
>    export CFLAGS
>    export SYS=$(ARCH)-$(OS)
> -@@ -12,7 +13,7 @@
> +@@ -12,7 +13,7 @@ export OPTIMIZATION = -O2
>
>    export CC = $(CROSS)gcc
>    export CXX = $(CROSS)g++
> @@ -21,7 +21,7 @@ Index: perl-5.8.8/Cross/Makefile
>    export STRIP = $(CROSS)strip
>    export AR = $(CROSS)ar
>    export RANLIB = $(CROSS)ranlib
> -@@ -34,21 +35,6 @@
> +@@ -34,17 +35,6 @@ CFLAGS+=$(FULL_OPTIMIZATION)
>    all:
>    	@echo Please read the README file before doing anything else.
>
> @@ -36,17 +36,13 @@ Index: perl-5.8.8/Cross/Makefile
>   -		sed -e 's/XXSTRIPXX/$(SYS)/' installperl-patched>  installperl; \
>   -		touch CROSS_PATCHED ; fi
>   -
> --dry_patch:
> --	cd .. ;	patch --dry-run -p1<  Cross/Makefile.SH.patch; \
> --		patch --dry-run -p1<  Cross/installperl.patch; \
> --
>    perl:
>    	@echo Perl cross-build directory is $(TOPDIR)
>    	@echo Target arch is $(SYS)
> -@@ -58,11 +44,11 @@
> +@@ -54,11 +44,11 @@ perl:
>    	$(TOPDIR)/generate_config_sh config.sh-$(SYS)>  $(TOPDIR)/../config.sh
>    	cd $(TOPDIR)/.. ; ./Configure -S ; make depend ; make ; make more
> - 	cd $(TOPDIR)/.. ; mkdir -p fake_config_library ; cp lib/Config.pm fake_config_library
> + 	cd $(TOPDIR)/.. ; mkdir -p fake_config_library ; cp lib/Config.pm lib/Config_heavy.pl fake_config_library
>   -	cd $(TOPDIR)/.. ; $(MAKE) more2 "PERLRUN=/usr/bin/perl -I$(TOPDIR)/../fake_config_library -MConfig"
>   -	cd $(TOPDIR)/.. ; $(MAKE) more3 "PERLRUN=/usr/bin/perl -I$(TOPDIR)/../fake_config_library -MConfig"
>   -	cd $(TOPDIR)/.. ; $(MAKE) more4 "PERLRUN=/usr/bin/perl -I$(TOPDIR)/../fake_config_library -MConfig"
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/asm-pageh-fix.patch b/meta/recipes-devtools/perl/perl-5.12.2/asm-pageh-fix.patch
> similarity index 72%
> rename from meta/recipes-devtools/perl/perl-5.8.8/asm-pageh-fix.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/asm-pageh-fix.patch
> index 41f3b1d..c972108 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/asm-pageh-fix.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/asm-pageh-fix.patch
> @@ -3,10 +3,10 @@ has been definied in unistd.h since glibc 2.1. Some recent version of linux
>   libc headers removed the asm/page.h resulting in failures here for some
>   people.
>
> -Index: perl-5.8.8/ext/IPC/SysV/SysV.xs
> +Index: perl-5.12.2/cpan/IPC-SysV/SysV.xs
>   ===================================================================
> ---- perl-5.8.8.orig/ext/IPC/SysV/SysV.xs	2001-07-01 04:46:07.000000000 +1000
> -+++ perl-5.8.8/ext/IPC/SysV/SysV.xs	2007-07-06 11:40:21.000000000 +1000
> +--- perl-5.12.2.orig/cpan/IPC-SysV/SysV.xs	2001-07-01 04:46:07.000000000 +1000
> ++++ perl-5.12.2/cpan/IPC-SysV/SysV.xs	2001-07-01 04:46:07.000000000 +1000
>   @@ -3,9 +3,6 @@
>    #include "XSUB.h"
>
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh b/meta/recipes-devtools/perl/perl-5.12.2/config.sh
> similarity index 66%
> rename from meta/recipes-devtools/perl/perl-5.8.8/config.sh
> rename to meta/recipes-devtools/perl/perl-5.12.2/config.sh
> index 3d4c193..e33b4ba 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/config.sh
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/config.sh
> @@ -8,9 +8,42 @@
>
>   # Package name      : perl5
>   # Source directory  : .
> -# Configuration time: Thu Apr  5 19:20:23 EST 2007
> +# Configuration time: Thu Dec 23 03:57:51 UTC 2010
>   # Configured by     : Open Embedded
> -# Target system     : linux birgitte 2.6.21-rc5 #63 tue mar 27 14:41:54 est 2007 i686 gnulinux
> +# Target system     : linux qemux86 2.6.37-rc5-yocto-standard+ #1 preempt mon dec 20 14:21:27 pst 2010 i686 gnulinux
> +
> +: Configure command line arguments.
> +config_arg0='Configure'
> +config_args='-des -Doptimize=-O2 -Dmyhostname=localhost -Dperladmin=root@localhost -Dcc=gcc -Dcf_by=Open Embedded -Dinstallprefix=@DESTDIR@ -Dprefix=/usr -Dvendorprefix=/usr -Dsiteprefix=/usr -Dotherlibdirs=/usr/lib/perl5/5.12.2 -Duseshrplib -Dusethreads -Duseithreads -Duselargefiles -Ud_dosuid -Dd_semctl_semun -Ui_db -Ui_ndbm -Ui_gdbm -Di_shadow -Di_syslog -Dman3ext=3pm -Duseperlio -Dinstallusrbinperl -Ubincompat5005 -Uversiononly -Dpager=/usr/bin/less -isr'
> +config_argc=28
> +config_arg1='-des'
> +config_arg2='-Doptimize=-O2'
> +config_arg3='-Dmyhostname=localhost'
> +config_arg4='-Dperladmin=root@localhost'
> +config_arg5='-Dcc=gcc'
> +config_arg6='-Dcf_by=Open Embedded'
> +config_arg7='-Dinstallprefix=@DESTDIR@'
> +config_arg8='-Dprefix=/usr'
> +config_arg9='-Dvendorprefix=/usr'
> +config_arg10='-Dsiteprefix=/usr'
> +config_arg11='-Dotherlibdirs=/usr/lib/perl5/5.12.2'
> +config_arg12='-Duseshrplib'
> +config_arg13='-Dusethreads'
> +config_arg14='-Duseithreads'
> +config_arg15='-Duselargefiles'
> +config_arg16='-Ud_dosuid'
> +config_arg17='-Dd_semctl_semun'
> +config_arg18='-Ui_db'
> +config_arg19='-Ui_ndbm'
> +config_arg20='-Ui_gdbm'
> +config_arg21='-Di_shadow'
> +config_arg22='-Di_syslog'
> +config_arg23='-Dman3ext=3pm'
> +config_arg24='-Duseperlio'
> +config_arg25='-Dinstallusrbinperl'
> +config_arg26='-Ubincompat5005'
> +config_arg27='-Uversiononly'
> +config_arg28='-Dpager=/usr/bin/less -isr'
>
>   Author=''
>   Date='$Date'
> @@ -18,7 +51,6 @@ Header=''
>   Id='$Id'
>   Locker=''
>   Log='$Log'
> -Mcc='Mcc'
>   RCSfile='$RCSfile'
>   Revision='$Revision'
>   Source=''
> @@ -32,11 +64,11 @@ ansi2knr=''
>   aphostname=''
>   api_revision='5'
>   api_subversion='0'
> -api_version='8'
> -api_versionstring='5.8.0'
> +api_version='12'
> +api_versionstring='5.12.0'
>   ar='ar'
> -archlib='/usr/lib/perl/5.8'
> -archlibexp='/usr/lib/perl/5.8'
> +archlib='/usr/lib/perl5/5.12.2/@ARCH@-thread-multi'
> +archlibexp='/usr/lib/perl5/5.12.2/@ARCH@-thread-multi'
>   archname64=''
>   archname='@ARCH@-thread-multi'
>   archobjs=''
> @@ -45,6 +77,7 @@ awk='awk'
>   baserev='5.0'
>   bash=''
>   bin='/usr/bin'
> +bin_ELF='define'
>   binexp='/usr/bin'
>   bison='bison'
>   byacc='byacc'
> @@ -53,12 +86,15 @@ castflags='0'
>   cat='cat'
>   cc='gcc'
>   cccdlflags='-fPIC'
> -ccdlflags='-Wl,-E'
> +ccdlflags='-Wl,-E -Wl,-rpath,/usr/lib/perl5/5.12.2/@ARCH@-thread-multi/CORE'
> +ccflags='-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
> +ccflags_uselargefiles='-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
>   ccname='gcc'
> +ccsymbols=''
>   ccversion=''
>   cf_by='Open Embedded'
>   cf_email='Open Embedded@localhost.localdomain'
> -cf_time='Thu Apr  5 23:06:39 EST 2007'
> +charbits='8'
>   charsize='1'
>   chgrp=''
>   chmod='chmod'
> @@ -71,6 +107,8 @@ cp='cp'
>   cpio=''
>   cpp='cpp'
>   cpp_stuff='42'
> +cppccsymbols=''
> +cppflags='-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector'
>   cpplast='-'
>   cppminus='-'
>   cpprun='gcc -E'
> @@ -100,25 +138,30 @@ d_accessx='undef'
>   d_aintl='undef'
>   d_alarm='define'
>   d_archlib='define'
> +d_asctime64='undef'
>   d_asctime_r='define'
>   d_atolf='undef'
>   d_atoll='define'
> +d_attribute_deprecated='define'
>   d_attribute_format='define'
>   d_attribute_malloc='define'
>   d_attribute_nonnull='define'
>   d_attribute_noreturn='define'
>   d_attribute_pure='define'
>   d_attribute_unused='define'
> -d_attribute_warn_unused_result='undef'
> +d_attribute_warn_unused_result='define'
>   d_bcmp='define'
>   d_bcopy='define'
>   d_bsd='undef'
>   d_bsdgetpgrp='undef'
>   d_bsdsetpgrp='undef'
> +d_builtin_choose_expr='define'
> +d_builtin_expect='define'
>   d_bzero='define'
> +d_c99_variadic_macros='define'
>   d_casti32='undef'
>   d_castneg='define'
> -d_charvspr='define'
> +d_charvspr='undef'
>   d_chown='define'
>   d_chroot='define'
>   d_chsize='undef'
> @@ -128,15 +171,20 @@ d_closedir='define'
>   d_cmsghdr_s='define'
>   d_const='define'
>   d_copysignl='define'
> +d_cplusplus='undef'
>   d_crypt='define'
>   d_crypt_r='define'
>   d_csh='undef'
> +d_ctermid='define'
>   d_ctermid_r='undef'
> +d_ctime64='undef'
>   d_ctime_r='define'
>   d_cuserid='define'
>   d_dbl_dig='define'
>   d_dbminitproto='undef'
> +d_difftime64='undef'
>   d_difftime='define'
> +d_dir_dd_fd='undef'
>   d_dirfd='define'
>   d_dirnamlen='undef'
>   d_dlerror='define'
> @@ -146,7 +194,7 @@ d_dosuid='undef'
>   d_drand48_r='define'
>   d_drand48proto='define'
>   d_dup2='define'
> -d_eaccess='undef'
> +d_eaccess='define'
>   d_endgrent='define'
>   d_endgrent_r='undef'
>   d_endhent='define'
> @@ -161,7 +209,7 @@ d_endsent='define'
>   d_endservent_r='undef'
>   d_eofnblk='define'
>   d_eunice='undef'
> -d_faststdio='undef'
> +d_faststdio='define'
>   d_fchdir='define'
>   d_fchmod='define'
>   d_fchown='define'
> @@ -193,6 +241,9 @@ d_fsync='define'
>   d_ftello='define'
>   d_ftime='undef'
>   d_futimes='define'
> +d_gdbm_ndbm_h_uses_prototypes='undef'
> +d_gdbmndbm_h_uses_prototypes='undef'
> +d_getaddrinfo='define'
>   d_getcwd='define'
>   d_getespwnam='undef'
>   d_getfsstat='undef'
> @@ -214,6 +265,7 @@ d_getlogin='define'
>   d_getlogin_r='define'
>   d_getmnt='undef'
>   d_getmntent='define'
> +d_getnameinfo='define'
>   d_getnbyaddr='define'
>   d_getnbyname='define'
>   d_getnent='define'
> @@ -247,16 +299,20 @@ d_getservbyport_r='define'
>   d_getservent_r='define'
>   d_getservprotos='define'
>   d_getspnam='define'
> -d_getspnam_r='undef'
> +d_getspnam_r='define'
>   d_gettimeod='define'
> +d_gmtime64='undef'
>   d_gmtime_r='define'
>   d_gnulibc='define'
>   d_grpasswd='define'
>   d_hasmntopt='define'
>   d_htonl='define'
>   d_ilogbl='define'
> +d_inc_version_list='undef'
>   d_index='undef'
>   d_inetaton='define'
> +d_inetntop='define'
> +d_inetpton='define'
>   d_int64_t='define'
>   d_isascii='define'
>   d_isfinite='undef'
> @@ -268,7 +324,9 @@ d_lchown='define'
>   d_ldbl_dig='define'
>   d_libm_lib_version='define'
>   d_link='define'
> +d_localtime64='undef'
>   d_localtime_r='define'
> +d_localtime_r_needs_tzset='define'
>   d_locconv='define'
>   d_lockf='define'
>   d_longdbl='define'
> @@ -290,7 +348,8 @@ d_mkdir='define'
>   d_mkdtemp='define'
>   d_mkfifo='define'
>   d_mkstemp='define'
> -d_mkstemps='undef'
> +d_mkstemps='define'
> +d_mktime64='undef'
>   d_mktime='define'
>   d_mmap='define'
>   d_modfl='define'
> @@ -311,6 +370,8 @@ d_msgsnd='define'
>   d_msync='define'
>   d_munmap='define'
>   d_mymalloc='undef'
> +d_ndbm='undef'
> +d_ndbm_h_uses_prototypes='undef'
>   d_nice='define'
>   d_nl_langinfo='define'
>   d_nv_zero_is_allbits_zero='define'
> @@ -327,6 +388,7 @@ d_pipe='define'
>   d_poll='define'
>   d_portable='define'
>   d_procselfexe='define'
> +d_pseudofork='undef'
>   d_pthread_atfork='define'
>   d_pthread_attr_setscope='define'
>   d_pthread_yield='define'
> @@ -406,8 +468,11 @@ d_shmctl='define'
>   d_shmdt='define'
>   d_shmget='define'
>   d_sigaction='define'
> +d_signbit='define'
>   d_sigprocmask='define'
>   d_sigsetjmp='define'
> +d_sitearch='define'
> +d_snprintf='define'
>   d_sockatmark='define'
>   d_sockatmarkproto='define'
>   d_socket='define'
> @@ -425,12 +490,12 @@ d_statfs_f_flags='undef'
>   d_statfs_s='define'
>   d_statvfs='define'
>   d_stdio_cnt_lval='undef'
> -d_stdio_ptr_lval='undef'
> +d_stdio_ptr_lval='define'
>   d_stdio_ptr_lval_nochange_cnt='undef'
> -d_stdio_ptr_lval_sets_cnt='undef'
> +d_stdio_ptr_lval_sets_cnt='define'
>   d_stdio_stream_array='undef'
> -d_stdiobase='undef'
> -d_stdstdio='undef'
> +d_stdiobase='define'
> +d_stdstdio='define'
>   d_strchr='define'
>   d_strcoll='define'
>   d_strctcpy='define'
> @@ -462,6 +527,7 @@ d_tcsetpgrp='define'
>   d_telldir='define'
>   d_telldirproto='define'
>   d_time='define'
> +d_timegm='define'
>   d_times='define'
>   d_tm_tm_gmtoff='define'
>   d_tm_tm_zone='define'
> @@ -488,6 +554,7 @@ d_voidsig='define'
>   d_voidtty=''
>   d_volatile='define'
>   d_vprintf='define'
> +d_vsnprintf='define'
>   d_wait4='define'
>   d_waitpid='define'
>   d_wcstombs='define'
> @@ -507,7 +574,8 @@ dlsrc='dl_dlopen.xs'
>   doublesize='8'
>   drand01='drand48()'
>   drand48_r_proto='REENTRANT_PROTO_I_ST'
> -dynamic_ext='attrs B ByteLoader Cwd Data/Dumper Devel/DProf Devel/Peek Devel/PPPort Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Opcode PerlIO/encoding PerlIO/scalar PerlIO/via POSIX re GDBM_File SDBM_File Socket Storable Sys/Hostname Sys/Syslog threads Time/HiRes Unicode/Normalize XS/APItest XS/Typemap threads/shared'
> +dtrace=''
> +dynamic_ext='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared'
>   eagain='EAGAIN'
>   ebcdic='undef'
>   echo='echo'
> @@ -522,7 +590,8 @@ endservent_r_proto='0'
>   eunicefix=':'
>   exe_ext=''
>   expr='expr'
> -extensions='attrs B ByteLoader Cwd Data/Dumper Devel/DProf Devel/Peek Devel/PPPort Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Opcode PerlIO/encoding PerlIO/scalar PerlIO/via POSIX re SDBM_File Socket Storable Sys/Hostname Sys/Syslog threads Time/HiRes Unicode/Normalize XS/APItest XS/Typemap threads/shared Errno'
> +extensions='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared Archive/Extract Archive/Tar Attribute/Handlers AutoLoader B/Debug B/Deparse B/Lint CGI CPAN CPANPLUS CPANPLUS/Dist/Build Class/ISA Devel/SelfStubber Digest Errno ExtUtils/CBuilder ExtUtils/Command ExtUtils/Constant ExtUtils/Install ExtUtils/MakeMaker ExtUtils/Manifest ExtUtils/ParseXS File/Fetch File/Path File/Temp FileCache Filter/Simple Getopt/Long I18N/LangTags IO/Compress IO/Zlib IPC/Cmd IPC/Open2 IPC/Open3 Locale/Codes Locale/Maketext Locale/Maketext/Simple Log/Message Lo
g/
>   Message/Simple Math/BigInt Math/BigRat Math/Complex Memoize Module/Build Module/CoreList Module/Load Module/Load/Conditional Module/Loaded Module/Pluggable NEXT Net/Ping Object/Accessor Package/Constants Params/Check Parse/CPAN/Meta PerlIO/via/QuotedPrint Pod/Escapes Pod/LaTeX Pod/Parser Pod/Perldoc Pod/Plainer Pod/Simple Safe SelfLoader Shell Switch Term/ANSIColor Term/Cap Term/UI Test Test/Harness Test/Simple Text/Balanced Text/ParseWords Text/Tabs Thread/Queue Thread/Semaphore Tie/File Tie/Memoize Tie/RefHash Time/Local Unicode/Collate XSLoader autodie autouse base bignum constant encoding/warnings if lib libnet parent podlators'
> +extern_C='extern'
>   extras=''
>   fflushNULL='define'
>   fflushall='undef'
> @@ -534,10 +603,11 @@ fpostype='fpos_t'
>   freetype='void'
>   from=':'
>   full_ar='/usr/bin/ar'
> -full_csh='/bin/csh'
> +full_csh='csh'
>   full_sed='/bin/sed'
>   gccansipedantic=''
>   gccosandvers=''
> +gccversion='4.5.1'
>   getgrent_r_proto='REENTRANT_PROTO_I_SBWR'
>   getgrgid_r_proto='REENTRANT_PROTO_I_TSBWR'
>   getgrnam_r_proto='REENTRANT_PROTO_I_CSBWR'
> @@ -557,12 +627,14 @@ getpwuid_r_proto='REENTRANT_PROTO_I_TSBWR'
>   getservbyname_r_proto='REENTRANT_PROTO_I_CCSBWR'
>   getservbyport_r_proto='REENTRANT_PROTO_I_ICSBWR'
>   getservent_r_proto='REENTRANT_PROTO_I_SBWR'
> +getspnam_r_proto='REENTRANT_PROTO_I_CSBWR'
>   gidsign='1'
>   gidsize='4'
>   gidtype='gid_t'
>   glibpth='/usr/shlib  /lib /usr/lib /usr/lib/386 /lib/386 /usr/ccs/lib /usr/ucblib /usr/local/lib '
>   gmake='gmake'
>   gmtime_r_proto='REENTRANT_PROTO_S_TS'
> +gnulibc_version='2.12.1'
>   grep='grep'
>   groupcat='cat /etc/group'
>   groupstype='gid_t'
> @@ -580,8 +652,9 @@ i16type='short'
>   i32size='4'
>   i64size='8'
>   i8size='1'
> -i8type='char'
> +i8type='signed char'
>   i_arpainet='define'
> +i_assert='define'
>   i_bsdioctl=''
>   i_crypt='define'
>   i_db='undef'
> @@ -593,7 +666,9 @@ i_fcntl='undef'
>   i_float='define'
>   i_fp='undef'
>   i_fp_class='undef'
> -i_gdbm='define'
> +i_gdbm='undef'
> +i_gdbm_ndbm='undef'
> +i_gdbmndbm='undef'
>   i_grp='define'
>   i_ieeefp='undef'
>   i_inttypes='define'
> @@ -603,6 +678,7 @@ i_limits='define'
>   i_locale='define'
>   i_machcthr='undef'
>   i_malloc='define'
> +i_mallocmalloc='undef'
>   i_math='define'
>   i_memory='undef'
>   i_mntent='define'
> @@ -637,6 +713,7 @@ i_sysmode='undef'
>   i_sysmount='define'
>   i_sysndir='undef'
>   i_sysparam='define'
> +i_syspoll='define'
>   i_sysresrc='define'
>   i_syssecrt='undef'
>   i_sysselct='define'
> @@ -668,49 +745,58 @@ inc_version_list=' '
>   inc_version_list_init='0'
>   incpath=''
>   inews=''
> -installarchlib='@LIBDIR@/perl/5.8'
> -installbin='@BINDIR@'
> +initialinstalllocation='/usr/bin'
> +installarchlib='@DESTDIR@/lib/perl5/5.12.2/@ARCH@-thread-multi'
> +installbin='@DESTDIR@/bin'
>   installhtml1dir=''
>   installhtml3dir=''
> -installman1dir='@MANDIR@/man1'
> -installman3dir='@MANDIR@/man3'
> -installprefix='@PREFIX@'
> -installprefixexp='@PREFIX@/usr'
> -installprivlib='@DATADIR@/perl/5.8'
> -installscript='@BINDIR@'
> -installsitearch='@PREFIX@/local/lib/perl/5.8.8'
> -installsitebin='@PREFIX@/local/bin'
> +installman1dir=''
> +installman3dir=''
> +installprefix='@DESTDIR@'
> +installprefixexp='@DESTDIR@'
> +installprivlib='@DESTDIR@/lib/perl5/5.12.2'
> +installscript='@DESTDIR@/bin'
> +installsitearch='@DESTDIR@/lib/perl5/site_perl/5.12.2/@ARCH@-thread-multi'
> +installsitebin='@DESTDIR@/bin'
>   installsitehtml1dir=''
>   installsitehtml3dir=''
> -installsitelib='@PREFIX@/local/share/perl/5.8.8'
> -installsiteman1dir='@PREFIX@/local/man/man1'
> -installsiteman3dir='@PREFIX@/local/man/man3'
> -installsitescript='@PREFIX@/local/bin'
> +installsitelib='@DESTDIR@/lib/perl5/site_perl/5.12.2'
> +installsiteman1dir=''
> +installsiteman3dir=''
> +installsitescript='@DESTDIR@/bin'
>   installstyle='lib/perl5'
>   installusrbinperl='define'
> -installvendorarch='@LIBDIR@/perl5'
> -installvendorbin='@BINDIR@'
> +installvendorarch='@DESTDIR@/lib/perl5/vendor_perl/5.12.2/@ARCH@-thread-multi'
> +installvendorbin='@DESTDIR@/bin'
>   installvendorhtml1dir=''
>   installvendorhtml3dir=''
> -installvendorlib='@DATADIR@/perl5'
> -installvendorman1dir='@MANDIR@/man1'
> -installvendorman3dir='@MANDIR@/man3'
> -installvendorscript='@BINDIR@'
> +installvendorlib='@DESTDIR@/lib/perl5/vendor_perl/5.12.2'
> +installvendorman1dir=''
> +installvendorman3dir=''
> +installvendorscript='@DESTDIR@/bin'
>   intsize='4'
>   issymlink='test -h'
>   ivdformat='"ld"'
>   ivtype='long'
> -known_extensions='attrs B ByteLoader Cwd Data/Dumper DB_File Devel/DProf Devel/Peek Devel/PPPort Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call GDBM_File I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 NDBM_File ODBM_File Opcode PerlIO/encoding PerlIO/scalar PerlIO/via POSIX re SDBM_File Socket Storable Sys/Hostname Sys/Syslog Thread threads Time/HiRes Unicode/Normalize XS/APItest XS/Typemap threads/shared'
> +known_extensions='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd DB_File Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call GDBM_File Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc NDBM_File ODBM_File Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize VMS/DCLsym VMS/Stdio Win32 Win32API/File Win32CORE XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared '
>   ksh=''
>   ld='gcc'
> -lddlflags='-shared -L/usr/local/lib'
> -ldflags=' -L/usr/local/lib'
> +lddlflags='-shared -O2 -fstack-protector'
> +ldflags=' -fstack-protector'
>   ldflags_uselargefiles=''
>   ldlibpthname='LD_LIBRARY_PATH'
>   less='less'
>   lib_ext='.a'
> +libc='/lib/libc-2.12.1.so'
>   libperl='libperl.so'
> -libpth='/usr/local/lib /lib /usr/lib'
> +libpth='/lib /usr/lib'
> +libs='-lnsl -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc'
> +libsdirs=' /usr/lib'
> +libsfiles=' libnsl.so libgdbm.so libdb.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> +libsfound=' /usr/lib/libnsl.so /usr/lib/libgdbm.so /usr/lib/libdb.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> +libspath=' /lib /usr/lib'
> +libswanted='sfio socket inet nsl nm ndbm gdbm dbm db malloc dl dld ld sun m crypt sec util pthread c cposix posix ucb BSD gdbm_compat'
> +libswanted_uselargefiles=''
>   line=''
>   lint=''
>   lkflags=''
> @@ -725,6 +811,10 @@ lpr=''
>   ls='ls'
>   lseeksize='8'
>   lseektype='off_t'
> +mad='undef'
> +madlyh=''
> +madlyobj=''
> +madlysrc=''
>   mail=''
>   mailx=''
>   make='make'
> @@ -732,12 +822,12 @@ make_set_make='#'
>   mallocobj=''
>   mallocsrc=''
>   malloctype='void *'
> -man1dir='/usr/share/man/man1'
> -man1direxp='/usr/share/man/man1'
> -man1ext='1'
> -man3dir='/usr/share/man/man3'
> -man3direxp='/usr/share/man/man3'
> -man3ext='3pm'
> +man1dir=' '
> +man1direxp=''
> +man1ext='0'
> +man3dir=' '
> +man3direxp=''
> +man3ext='0'
>   mips_type=''
>   mistrustnm=''
>   mkdir='mkdir'
> @@ -750,19 +840,18 @@ myarchname='@ARCH@'
>   mydomain='.localdomain'
>   myhostname='localhost'
>   n='-n'
> -need_va_copy='undef'
>   netdb_hlen_type='size_t'
> -netdb_host_type='const void *'
>   netdb_name_type='const char *'
>   netdb_net_type='in_addr_t'
>   nm='nm'
>   nm_opt=''
>   nm_so_opt='--dynamic'
> -nonxs_ext='Errno'
> +nonxs_ext='Archive/Extract Archive/Tar Attribute/Handlers AutoLoader B/Debug B/Deparse B/Lint CGI CPAN CPANPLUS CPANPLUS/Dist/Build Class/ISA Devel/SelfStubber Digest Errno ExtUtils/CBuilder ExtUtils/Command ExtUtils/Constant ExtUtils/Install ExtUtils/MakeMaker ExtUtils/Manifest ExtUtils/ParseXS File/Fetch File/Path File/Temp FileCache Filter/Simple Getopt/Long I18N/LangTags IO/Compress IO/Zlib IPC/Cmd IPC/Open2 IPC/Open3 Locale/Codes Locale/Maketext Locale/Maketext/Simple Log/Message Log/Message/Simple Math/BigInt Math/BigRat Math/Complex Memoize Module/Build Module/CoreList Module/Load Module/Load/Conditional Module/Loaded Module/Pluggable NEXT Net/Ping Object/Accessor Package/Constants Params/Check Parse/CPAN/Meta PerlIO/via/QuotedPrint Pod/Escapes Pod/LaTeX Pod/Parser Pod/Perldoc Pod/Plainer Pod/Simple Safe SelfLoader Shell Switch Term/ANSIColor Term/Cap Term/UI Test Test/Harness Test/Simple Text/Balanced Text/ParseWords Text/Tabs Thread/Queue Thread/Semaphore Tie/File
 T
>   ie/Memoize Tie/RefHash Time/Local Unicode/Collate XSLoader autodie autouse base bignum constant encoding/warnings if lib libnet parent podlators'
>   nroff='nroff'
>   nvEUformat='"E"'
>   nvFUformat='"F"'
>   nvGUformat='"G"'
> +nv_overflows_integers_at='256.0*256.0*256.0*256.0*256.0*256.0*2.0*2.0*2.0*2.0*2.0'
>   nveformat='"e"'
>   nvfformat='"f"'
>   nvgformat='"g"'
> @@ -774,18 +863,19 @@ old_pthread_create_joinable=''
>   optimize='-O2'
>   orderlib='false'
>   osname='linux'
> -otherlibdirs=' '
> +osvers='2.6.37-rc5-yocto-standard+'
> +otherlibdirs='/usr/lib/perl5/5.12.2'
>   package='perl5'
>   pager='/usr/bin/less -isr'
>   passcat='cat /etc/passwd'
> -patchlevel='8'
> +patchlevel='12'
>   path_sep=':'
> -perl5='hostperl'
> +perl5='/usr/bin/perl'
>   perl=''
>   perl_patchlevel=''
>   perladmin='root@localhost'
>   perllibs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lc'
> -perlpath='hostperl'
> +perlpath='/usr/bin/perl'
>   pg='pg'
>   phostname=''
>   pidtype='pid_t'
> @@ -794,8 +884,8 @@ pmake=''
>   pr=''
>   prefix='/usr'
>   prefixexp='/usr'
> -privlib='/usr/share/perl/5.8'
> -privlibexp='/usr/share/perl/5.8'
> +privlib='/usr/lib/perl5/5.12.2'
> +privlibexp='/usr/lib/perl5/5.12.2'
>   procselfexe='"/proc/self/exe"'
>   prototype='define'
>   randbits='48'
> @@ -808,6 +898,7 @@ readdir64_r_proto='REENTRANT_PROTO_I_TSR'
>   readdir_r_proto='REENTRANT_PROTO_I_TSR'
>   revision='5'
>   rm='rm'
> +rm_try='/bin/rm -f try try a.out .out try.[cho] try..o core core.try* try.core*'
>   rmail=''
>   run=''
>   runnm='false'
> @@ -840,31 +931,31 @@ shortsize='2'
>   shrpenv=''
>   shsharp='true'
>   sig_count='65'
> +sig_name='ZERO HUP INT QUIT ILL TRAP ABRT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH IO PWR SYS NUM32 NUM33 RTMIN NUM35 NUM36 NUM37 NUM38 NUM39 NUM40 NUM41 NUM42 NUM43 NUM44 NUM45 NUM46 NUM47 NUM48 NUM49 NUM50 NUM51 NUM52 NUM53 NUM54 NUM55 NUM56 NUM57 NUM58 NUM59 NUM60 NUM61 NUM62 NUM63 RTMAX IOT CLD POLL UNUSED '
> +sig_name_init='"ZERO", "HUP", "INT", "QUIT", "ILL", "TRAP", "ABRT", "BUS", "FPE", "KILL", "USR1", "SEGV", "USR2", "PIPE", "ALRM", "TERM", "STKFLT", "CHLD", "CONT", "STOP", "TSTP", "TTIN", "TTOU", "URG", "XCPU", "XFSZ", "VTALRM", "PROF", "WINCH", "IO", "PWR", "SYS", "NUM32", "NUM33", "RTMIN", "NUM35", "NUM36", "NUM37", "NUM38", "NUM39", "NUM40", "NUM41", "NUM42", "NUM43", "NUM44", "NUM45", "NUM46", "NUM47", "NUM48", "NUM49", "NUM50", "NUM51", "NUM52", "NUM53", "NUM54", "NUM55", "NUM56", "NUM57", "NUM58", "NUM59", "NUM60", "NUM61", "NUM62", "NUM63", "RTMAX", "IOT", "CLD", "POLL", "UNUSED", 0'
>   sig_num='0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 6 17 29 31 '
>   sig_num_init='0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 6, 17, 29, 31, 0'
>   sig_size='69'
> -sig_name='ZERO HUP INT QUIT ILL TRAP ABRT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH IO PWR SYS NUM32 NUM33 RTMIN NUM35 NUM36 NUM37 NUM38 NUM39 NUM40 NUM41 NUM42 NUM43 NUM44 NUM45 NUM46 NUM47 NUM48 NUM49 NUM50 NUM51 NUM52 NUM53 NUM54 NUM55 NUM56 NUM57 NUM58 NUM59 NUM60 NUM61 NUM62 NUM63 RTMAX IOT CLD POLL UNUSED '
> -sig_name_init='"ZERO", "HUP", "INT", "QUIT", "ILL", "TRAP", "ABRT", "BUS", "FPE", "KILL", "USR1", "SEGV", "USR2", "PIPE", "ALRM", "TERM", "STKFLT", "CHLD", "CONT", "STOP", "TSTP", "TTIN", "TTOU", "URG", "XCPU", "XFSZ", "VTALRM", "PROF", "WINCH", "IO", "PWR", "SYS", "NUM32", "NUM33", "RTMIN", "NUM35", "NUM36", "NUM37", "NUM38", "NUM39", "NUM40", "NUM41", "NUM42", "NUM43", "NUM44", "NUM45", "NUM46", "NUM47", "NUM48", "NUM49", "NUM50", "NUM51", "NUM52", "NUM53", "NUM54", "NUM55", "NUM56", "NUM57", "NUM58", "NUM59", "NUM60", "NUM61", "NUM62", "NUM63", "RTMAX", "IOT", "CLD", "POLL", "UNUSED", 0'
>   signal_t='void'
> -sitearch='/usr/local/lib/perl/5.8.8'
> -sitearchexp='/usr/local/lib/perl/5.8.8'
> -sitebin='/usr/local/bin'
> -sitebinexp='/usr/local/bin'
> +sitearch='/usr/lib/perl5/site_perl/5.12.2/@ARCH@-thread-multi'
> +sitearchexp='/usr/lib/perl5/site_perl/5.12.2/@ARCH@-thread-multi'
> +sitebin='/usr/bin'
> +sitebinexp='/usr/bin'
>   sitehtml1dir=''
>   sitehtml1direxp=''
>   sitehtml3dir=''
>   sitehtml3direxp=''
> -sitelib='/usr/local/share/perl/5.8.8'
> -sitelib_stem=''
> -sitelibexp='/usr/local/share/perl/5.8.8'
> -siteman1dir='/usr/local/man/man1'
> -siteman1direxp='/usr/local/man/man1'
> -siteman3dir='/usr/local/man/man3'
> -siteman3direxp='/usr/local/man/man3'
> -siteprefix='/usr/local'
> -siteprefixexp='/usr/local'
> -sitescript='/usr/local/bin'
> -sitescriptexp='/usr/local/bin'
> +sitelib='/usr/lib/perl5/site_perl/5.12.2'
> +sitelib_stem='/usr/lib/perl5/site_perl'
> +sitelibexp='/usr/lib/perl5/site_perl/5.12.2'
> +siteman1dir=''
> +siteman1direxp=''
> +siteman3dir=''
> +siteman3direxp=''
> +siteprefix='/usr'
> +siteprefixexp='/usr'
> +sitescript='/usr/bin'
> +sitescriptexp='/usr/bin'
>   sizetype='size_t'
>   sleep=''
>   smail=''
> @@ -892,7 +983,7 @@ stdio_stream_array=''
>   strerror_r_proto='REENTRANT_PROTO_B_IBW'
>   strings='/usr/include/string.h'
>   submit=''
> -subversion='8'
> +subversion='2'
>   sysman='/usr/share/man/man1'
>   tail=''
>   tar=''
> @@ -922,8 +1013,10 @@ uname='uname'
>   uniq='uniq'
>   use5005threads='undef'
>   usecrosscompile='undef'
> +usedevel='undef'
>   usedl='define'
> -usefaststdio='define'
> +usedtrace='undef'
> +usefaststdio='undef'
>   useithreads='define'
>   uselargefiles='define'
>   uselongdouble='undef'
> @@ -936,6 +1029,7 @@ useopcode='true'
>   useperlio='define'
>   useposix='true'
>   usereentrant='undef'
> +userelocatableinc='undef'
>   usesfio='false'
>   useshrplib='true'
>   usesitecustomize='undef'
> @@ -950,27 +1044,28 @@ uvoformat='"lo"'
>   uvtype='unsigned long'
>   uvuformat='"lu"'
>   uvxformat='"lx"'
> -vendorarch='/usr/lib/perl5'
> -vendorarchexp='/usr/lib/perl5'
> +vaproto='define'
> +vendorarch='/usr/lib/perl5/vendor_perl/5.12.2/@ARCH@-thread-multi'
> +vendorarchexp='/usr/lib/perl5/vendor_perl/5.12.2/@ARCH@-thread-multi'
>   vendorbin='/usr/bin'
>   vendorbinexp='/usr/bin'
>   vendorhtml1dir=' '
>   vendorhtml1direxp=''
>   vendorhtml3dir=' '
>   vendorhtml3direxp=''
> -vendorlib='/usr/share/perl5'
> -vendorlib_stem=''
> -vendorlibexp='/usr/share/perl5'
> -vendorman1dir='/usr/share/man/man1'
> -vendorman1direxp='/usr/share/man/man1'
> -vendorman3dir='/usr/share/man/man3'
> -vendorman3direxp='/usr/share/man/man3'
> +vendorlib='/usr/lib/perl5/vendor_perl/5.12.2'
> +vendorlib_stem='/usr/lib/perl5/vendor_perl'
> +vendorlibexp='/usr/lib/perl5/vendor_perl/5.12.2'
> +vendorman1dir=' '
> +vendorman1direxp=''
> +vendorman3dir=' '
> +vendorman3direxp=''
>   vendorprefix='/usr'
>   vendorprefixexp='/usr'
>   vendorscript='/usr/bin'
>   vendorscriptexp='/usr/bin'
> -version='5.8.8'
> -version_patchlevel_string='version 8 subversion 8'
> +version='5.12.2'
> +version_patchlevel_string='version 12 subversion 2'
>   versiononly='undef'
>   vi=''
>   voidflags='15'
> @@ -979,42 +1074,13 @@ yacc='yacc'
>   yaccflags=''
>   zcat=''
>   zip='zip'
> -# Configure command line arguments.
> -config_arg0='Configure'
> -config_args='-des -Doptimize=-O2 -Dmyhostname=localhost -Dperladmin=root@localhost -Dcc=gcc -Dcf_by=Open Embedded -Dprefix=/usr -Dvendorprefix=/usr -Dsiteprefix=/usr -Dotherlibdirs=/usr/lib/perl5/5.8.8 -Duseshrplib -Dusethreads -Duseithreads -Duselargefiles -Ud_dosuid -Dd_semctl_semun -Ui_db -Ui_ndbm -Di_gdbm -Di_shadow -Di_syslog -Dman3ext=3pm -Duseperlio -Dinstallusrbinperl -Ubincompat5005 -Uversiononly -Dpager=/usr/bin/less -isr'
> -config_argc=27
> -config_arg1='-des'
> -config_arg2='-Doptimize=-O2'
> -config_arg3='-Dmyhostname=localhost'
> -config_arg4='-Dperladmin=root@localhost'
> -config_arg5='-Dcc=gcc'
> -config_arg6='-Dcf_by=Open Embedded'
> -config_arg7='-Dprefix=/usr'
> -config_arg8='-Dvendorprefix=/usr'
> -config_arg9='-Dsiteprefix=/usr'
> -config_arg10='-Dotherlibdirs=/usr/lib/perl5/5.8.8'
> -config_arg11='-Duseshrplib'
> -config_arg12='-Dusethreads'
> -config_arg13='-Duseithreads'
> -config_arg14='-Duselargefiles'
> -config_arg15='-Ud_dosuid'
> -config_arg16='-Dd_semctl_semun'
> -config_arg17='-Ui_db'
> -config_arg18='-Ui_ndbm'
> -config_arg19='-Di_gdbm'
> -config_arg20='-Di_shadow'
> -config_arg21='-Di_syslog'
> -config_arg22='-Dman3ext=3pm'
> -config_arg23='-Duseperlio'
> -config_arg24='-Dinstallusrbinperl'
> -config_arg25='-Ubincompat5005'
> -config_arg26='-Uversiononly'
> -config_arg27='-Dpager=/usr/bin/less -isr'
>   PERL_REVISION=5
> -PERL_VERSION=8
> -PERL_SUBVERSION=8
> +PERL_VERSION=12
> +PERL_SUBVERSION=2
>   PERL_API_REVISION=5
> -PERL_API_VERSION=8
> +PERL_API_VERSION=12
>   PERL_API_SUBVERSION=0
> -PERL_PATCHLEVEL=
> +PERL_PATCHLEVEL=''
>   PERL_CONFIG_SH=true
> +: Variables propagated from previous config.sh file.
> +libdb_needs_pthread='N'
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/config.sh-32 b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-32
> new file mode 100644
> index 0000000..7259a0c
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-32
> @@ -0,0 +1,38 @@
> +alignbytes='4'
> +cf_time='Thu Dec 23 03:57:51 UTC 2010'
> +cppsymbols='_FILE_OFFSET_BITS=64 _GNU_SOURCE=1 _LARGEFILE64_SOURCE=1 _LARGEFILE_SOURCE=1 _POSIX_C_SOURCE=200809L _POSIX_SOURCE=1 _REENTRANT=1 _XOPEN_SOURCE=700 _XOPEN_SOURCE_EXTENDED=1 __BIGGEST_ALIGNMENT__=16 __CHAR16_TYPE__=short\ unsigned\ int __CHAR32_TYPE__=unsigned\ int __CHAR_BIT__=8 __DBL_DENORM_MIN__=((double)4.94065645841246544177e-324L) __DBL_DIG__=15 __DBL_EPSILON__=((double)2.22044604925031308085e-16L) __DBL_HAS_DENORM__=1 __DBL_HAS_INFINITY__=1 __DBL_HAS_QUIET_NAN__=1 __DBL_MANT_DIG__=53 __DBL_MAX_10_EXP__=308 __DBL_MAX_EXP__=1024 __DBL_MAX__=((double)1.79769313486231570815e+308L) __DBL_MIN_10_EXP__=(-307) __DBL_MIN_EXP__=(-1021) __DBL_MIN__=((double)2.22507385850720138309e-308L) __DEC128_EPSILON__=1E-33DL __DEC128_MANT_DIG__=34 __DEC128_MAX_EXP__=6145 __DEC128_MAX__=9.999999999999999999999999999999999E6144DL __DEC128_MIN_EXP__=(-6142) __DEC128_MIN__=1E-6143DL __DEC128_SUBNORMAL_MIN__=0.000000000000000000000000000000001E-6143DL __DEC32_EPSILON__=1E-6DF __DEC3
2_
>   MANT_DIG__=7 __DEC32_MAX_EXP__=97 __DEC32_MAX__=9.999999E96DF __DEC32_MIN_EXP__=(-94) __DEC32_MIN__=1E-95DF __DEC32_SUBNORMAL_MIN__=0.000001E-95DF __DEC64_EPSILON__=1E-15DD __DEC64_MANT_DIG__=16 __DEC64_MAX_EXP__=385 __DEC64_MAX__=9.999999999999999E384DD __DEC64_MIN_EXP__=(-382) __DEC64_MIN__=1E-383DD __DEC64_SUBNORMAL_MIN__=0.000000000000001E-383DD __DECIMAL_BID_FORMAT__=1 __DECIMAL_DIG__=21 __DEC_EVAL_METHOD__=2 __ELF__=1 __FINITE_MATH_ONLY__=0 __FLT_DENORM_MIN__=1.40129846432481707092e-45F __FLT_DIG__=6 __FLT_EPSILON__=1.19209289550781250000e-7F __FLT_EVAL_METHOD__=2 __FLT_HAS_DENORM__=1 __FLT_HAS_INFINITY__=1 __FLT_HAS_QUIET_NAN__=1 __FLT_MANT_DIG__=24 __FLT_MAX_10_EXP__=38 __FLT_MAX_EXP__=128 __FLT_MAX__=3.40282346638528859812e+38F __FLT_MIN_10_EXP__=(-37) __FLT_MIN_EXP__=(-125) __FLT_MIN__=1.17549435082228750797e-38F __FLT_RADIX__=2 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4=1 __GCC_HAVE_SYNC_COMPARE_
AND
>   _SWAP_8=1 __GLIBC_MINOR__=12 __GLIBC__=2 __GNUC_GNU_INLINE__=1 __GNUC_MINOR__=5 __GNUC_PATCHLEVEL__=1 __GNUC__=4 __GNU_LIBRARY__=6 __GXX_ABI_VERSION=1002 __INT16_C(c)=c __INT16_MAX__=32767 __INT16_TYPE__=short\ int __INT32_C(c)=c __INT32_MAX__=2147483647 __INT32_TYPE__=int __INT64_C(c)=cLL __INT64_MAX__=9223372036854775807LL __INT64_TYPE__=long\ long\ int __INT8_C(c)=c __INT8_MAX__=127 __INT8_TYPE__=signed\ char __INTMAX_C(c)=cLL __INTMAX_MAX__=9223372036854775807LL __INTMAX_TYPE__=long\ long\ int __INTPTR_MAX__=2147483647 __INTPTR_TYPE__=int __INT_FAST16_MAX__=2147483647 __INT_FAST16_TYPE__=int __INT_FAST32_MAX__=2147483647 __INT_FAST32_TYPE__=int __INT_FAST64_MAX__=9223372036854775807LL __INT_FAST64_TYPE__=long\ long\ int __INT_FAST8_MAX__=127 __INT_FAST8_TYPE__=signed\ char __INT_LEAST16_MAX__=32767 __INT_LEAST16_TYPE__=short\ int __INT_LEAST32_MAX__=2147483647 __INT_LEAST32_TYPE__=int __INT_LEAST64_MAX__=9223372036854775807LL __INT_LEAST64_TYPE__=long\ long\ int __INT
_LE
>   AST8_MAX__=127 __INT_LEAST8_TYPE__=signed\ char __INT_MAX__=2147483647 __LDBL_DENORM_MIN__=3.64519953188247460253e-4951L __LDBL_DIG__=18 __LDBL_EPSILON__=1.08420217248550443401e-19L __LDBL_HAS_DENORM__=1 __LDBL_HAS_INFINITY__=1 __LDBL_HAS_QUIET_NAN__=1 __LDBL_MANT_DIG__=64 __LDBL_MAX_10_EXP__=4932 __LDBL_MAX_EXP__=16384 __LDBL_MAX__=1.18973149535723176502e+4932L __LDBL_MIN_10_EXP__=(-4931) __LDBL_MIN_EXP__=(-16381) __LDBL_MIN__=3.36210314311209350626e-4932L __LONG_LONG_MAX__=9223372036854775807LL __LONG_MAX__=2147483647L __PRAGMA_REDEFINE_EXTNAME=1 __PTRDIFF_MAX__=2147483647 __PTRDIFF_TYPE__=int __REGISTER_PREFIX__= __SCHAR_MAX__=127 __SHRT_MAX__=32767 __SIG_ATOMIC_MAX__=2147483647 __SIG_ATOMIC_MIN__=(-2147483647\ -\ 1) __SIG_ATOMIC_TYPE__=int __SIZEOF_DOUBLE__=8 __SIZEOF_FLOAT__=4 __SIZEOF_INT__=4 __SIZEOF_LONG_DOUBLE__=12 __SIZEOF_LONG_LONG__=8 __SIZEOF_LONG__=4 __SIZEOF_POINTER__=4 __SIZEOF_PTRDIFF_T__=4 __SIZEOF_SHORT__=2 __SIZEOF_SIZE_T__=4 __SIZEOF_WCHAR_T__=4 __SIZ
EOF
>   _WINT_T__=4 __SIZE_MAX__=4294967295U __SIZE_TYPE__=unsigned\ int __STDC_HOSTED__=1 __STDC__=1 __UINT16_C(c)=c __UINT16_MAX__=65535 __UINT16_TYPE__=short\ unsigned\ int __UINT32_C(c)=cU __UINT32_MAX__=4294967295U __UINT32_TYPE__=unsigned\ int __UINT64_C(c)=cULL __UINT64_MAX__=18446744073709551615ULL __UINT64_TYPE__=long\ long\ unsigned\ int __UINT8_C(c)=c __UINT8_MAX__=255 __UINT8_TYPE__=unsigned\ char __UINTMAX_C(c)=cULL __UINTMAX_MAX__=18446744073709551615ULL __UINTMAX_TYPE__=long\ long\ unsigned\ int __UINTPTR_MAX__=4294967295U __UINTPTR_TYPE__=unsigned\ int __UINT_FAST16_MAX__=4294967295U __UINT_FAST16_TYPE__=unsigned\ int __UINT_FAST32_MAX__=4294967295U __UINT_FAST32_TYPE__=unsigned\ int __UINT_FAST64_MAX__=18446744073709551615ULL __UINT_FAST64_TYPE__=long\ long\ unsigned\ int __UINT_FAST8_MAX__=255 __UINT_FAST8_TYPE__=unsigned\ char __UINT_LEAST16_MAX__=65535 __UINT_LEAST16_TYPE__=short\ unsigned\ int __UINT_LEAST32_MAX__=4294967295U __UINT_LEAST32_TYPE__=unsigned\ i
nt
>   __UINT_LEAST64_MAX__=18446744073709551615ULL __UINT_LEAST64_TYPE__=long\ long\ unsigned\ int __UINT_LEAST8_MAX__=255 __UINT_LEAST8_TYPE__=unsigned\ char __USER_LABEL_PREFIX__= __USE_BSD=1 __USE_FILE_OFFSET64=1 __USE_GNU=1 __USE_LARGEFILE64=1 __USE_LARGEFILE=1 __USE_MISC=1 __USE_POSIX199309=1 __USE_POSIX199506=1 __USE_POSIX2=1 __USE_POSIX=1 __USE_REENTRANT=1 __USE_SVID=1 __USE_UNIX98=1 __USE_XOPEN=1 __USE_XOPEN_EXTENDED=1 __VERSION__="4.5.1" __WCHAR_MAX__=2147483647L __WCHAR_MIN__=(-2147483647L\ -\ 1) __WCHAR_TYPE__=long\ int __WINT_MAX__=4294967295U __WINT_MIN__=0U __WINT_TYPE__=unsigned\ int __gnu_linux__=1 __i386=1 __i386__=1 __i586=1 __i586__=1 __linux=1 __linux__=1 __pentium=1 __pentium__=1 __tune_i586__=1 __tune_pentium__=1 __unix=1 __unix__=1 i386=1 linux=1 unix=1'
> +d_nv_preserves_uv='define'
> +d_printf_format_null='define'
> +d_u32align='undef'
> +gidformat='"lu"'
> +i32type='long'
> +i64type='long long'
> +ivsize='4'
> +longdblsize='12'
> +longsize='4'
> +myuname='linux qemux86 2.6.37-rc5-yocto-standard+ #1 preempt mon dec 20 14:21:27 pst 2010 i686 gnulinux '
> +need_va_copy='undef'
> +netdb_host_type='const void *'
> +nv_preserves_uv_bits='32'
> +ptrsize='4'
> +quadkind='3'
> +quadtype='long long'
> +sGMTIME_max='2147483647'
> +sGMTIME_min='-2147483648'
> +sLOCALTIME_max='2147483647'
> +sLOCALTIME_min='-2147483648'
> +sPRIXU64='"LX"'
> +sPRId64='"Ld"'
> +sPRIi64='"Li"'
> +sPRIo64='"Lo"'
> +sPRIu64='"Lu"'
> +sPRIx64='"Lx"'
> +selectminbits='32'
> +sizesize='4'
> +u32type='unsigned long'
> +u64type='unsigned long long'
> +uidformat='"lu"'
> +uquadtype='unsigned long long'
> +use64bitall='undef'
> +use64bitint='undef'
> +uvsize='4'
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-32-be b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-32-be
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/config.sh-32-be
> rename to meta/recipes-devtools/perl/perl-5.12.2/config.sh-32-be
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-32-le b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-32-le
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/config.sh-32-le
> rename to meta/recipes-devtools/perl/perl-5.12.2/config.sh-32-le
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/config.sh-64 b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-64
> new file mode 100644
> index 0000000..6929d3a
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-64
> @@ -0,0 +1,38 @@
> +alignbytes='8'
> +cf_time='Thu Dec 23 02:06:42 UTC 2010'
> +cppsymbols='_FILE_OFFSET_BITS=64 _GNU_SOURCE=1 _LARGEFILE64_SOURCE=1 _LARGEFILE_SOURCE=1 _LP64=1 _POSIX_C_SOURCE=200809L _POSIX_SOURCE=1 _REENTRANT=1 _XOPEN_SOURCE=700 _XOPEN_SOURCE_EXTENDED=1 __BIGGEST_ALIGNMENT__=16 __CHAR16_TYPE__=short\ unsigned\ int __CHAR32_TYPE__=unsigned\ int __CHAR_BIT__=8 __DBL_DENORM_MIN__=((double)4.94065645841246544177e-324L) __DBL_DIG__=15 __DBL_EPSILON__=((double)2.22044604925031308085e-16L) __DBL_HAS_DENORM__=1 __DBL_HAS_INFINITY__=1 __DBL_HAS_QUIET_NAN__=1 __DBL_MANT_DIG__=53 __DBL_MAX_10_EXP__=308 __DBL_MAX_EXP__=1024 __DBL_MAX__=((double)1.79769313486231570815e+308L) __DBL_MIN_10_EXP__=(-307) __DBL_MIN_EXP__=(-1021) __DBL_MIN__=((double)2.22507385850720138309e-308L) __DEC128_EPSILON__=1E-33DL __DEC128_MANT_DIG__=34 __DEC128_MAX_EXP__=6145 __DEC128_MAX__=9.999999999999999999999999999999999E6144DL __DEC128_MIN_EXP__=(-6142) __DEC128_MIN__=1E-6143DL __DEC128_SUBNORMAL_MIN__=0.000000000000000000000000000000001E-6143DL __DEC32_EPSILON__=1E-6D
F
>   __DEC32_MANT_DIG__=7 __DEC32_MAX_EXP__=97 __DEC32_MAX__=9.999999E96DF __DEC32_MIN_EXP__=(-94) __DEC32_MIN__=1E-95DF __DEC32_SUBNORMAL_MIN__=0.000001E-95DF __DEC64_EPSILON__=1E-15DD __DEC64_MANT_DIG__=16 __DEC64_MAX_EXP__=385 __DEC64_MAX__=9.999999999999999E384DD __DEC64_MIN_EXP__=(-382) __DEC64_MIN__=1E-383DD __DEC64_SUBNORMAL_MIN__=0.000000000000001E-383DD __DECIMAL_BID_FORMAT__=1 __DECIMAL_DIG__=21 __DEC_EVAL_METHOD__=2 __ELF__=1 __FINITE_MATH_ONLY__=0 __FLT_DENORM_MIN__=1.40129846432481707092e-45F __FLT_DIG__=6 __FLT_EPSILON__=1.19209289550781250000e-7F __FLT_EVAL_METHOD__=0 __FLT_HAS_DENORM__=1 __FLT_HAS_INFINITY__=1 __FLT_HAS_QUIET_NAN__=1 __FLT_MANT_DIG__=24 __FLT_MAX_10_EXP__=38 __FLT_MAX_EXP__=128 __FLT_MAX__=3.40282346638528859812e+38F __FLT_MIN_10_EXP__=(-37) __FLT_MIN_EXP__=(-125) __FLT_MIN__=1.17549435082228750797e-38F __FLT_RADIX__=2 __GCC_HAVE_DWARF2_CFI_ASM=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2=1 __GCC_HAVE_SYNC_COMPARE_A
ND_
>   SWAP_4=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8=1 __GLIBC_MINOR__=12 __GLIBC__=2 __GNUC_GNU_INLINE__=1 __GNUC_MINOR__=5 __GNUC_PATCHLEVEL__=1 __GNUC__=4 __GNU_LIBRARY__=6 __GXX_ABI_VERSION=1002 __INT16_C(c)=c __INT16_MAX__=32767 __INT16_TYPE__=short\ int __INT32_C(c)=c __INT32_MAX__=2147483647 __INT32_TYPE__=int __INT64_C(c)=cL __INT64_MAX__=9223372036854775807L __INT64_TYPE__=long\ int __INT8_C(c)=c __INT8_MAX__=127 __INT8_TYPE__=signed\ char __INTMAX_C(c)=cL __INTMAX_MAX__=9223372036854775807L __INTMAX_TYPE__=long\ int __INTPTR_MAX__=9223372036854775807L __INTPTR_TYPE__=long\ int __INT_FAST16_MAX__=9223372036854775807L __INT_FAST16_TYPE__=long\ int __INT_FAST32_MAX__=9223372036854775807L __INT_FAST32_TYPE__=long\ int __INT_FAST64_MAX__=9223372036854775807L __INT_FAST64_TYPE__=long\ int __INT_FAST8_MAX__=127 __INT_FAST8_TYPE__=signed\ char __INT_LEAST16_MAX__=32767 __INT_LEAST16_TYPE__=short\ int __INT_LEAST32_MAX__=2147483647 __INT_LEAST32_TYPE__=int __INT_LEAST64_MAX__=922
337
>   2036854775807L __INT_LEAST64_TYPE__=long\ int __INT_LEAST8_MAX__=127 __INT_LEAST8_TYPE__=signed\ char __INT_MAX__=2147483647 __LDBL_DENORM_MIN__=3.64519953188247460253e-4951L __LDBL_DIG__=18 __LDBL_EPSILON__=1.08420217248550443401e-19L __LDBL_HAS_DENORM__=1 __LDBL_HAS_INFINITY__=1 __LDBL_HAS_QUIET_NAN__=1 __LDBL_MANT_DIG__=64 __LDBL_MAX_10_EXP__=4932 __LDBL_MAX_EXP__=16384 __LDBL_MAX__=1.18973149535723176502e+4932L __LDBL_MIN_10_EXP__=(-4931) __LDBL_MIN_EXP__=(-16381) __LDBL_MIN__=3.36210314311209350626e-4932L __LONG_LONG_MAX__=9223372036854775807LL __LONG_MAX__=9223372036854775807L __LP64__=1 __MMX__=1 __PRAGMA_REDEFINE_EXTNAME=1 __PTRDIFF_MAX__=9223372036854775807L __PTRDIFF_TYPE__=long\ int __REGISTER_PREFIX__= __SCHAR_MAX__=127 __SHRT_MAX__=32767 __SIG_ATOMIC_MAX__=2147483647 __SIG_ATOMIC_MIN__=(-2147483647\ -\ 1) __SIG_ATOMIC_TYPE__=int __SIZEOF_DOUBLE__=8 __SIZEOF_FLOAT__=4 __SIZEOF_INT__=4 __SIZEOF_LONG_DOUBLE__=16 __SIZEOF_LONG_LONG__=8 __SIZEOF_LONG__=8 __SIZEOF_
POI
>   NTER__=8 __SIZEOF_PTRDIFF_T__=8 __SIZEOF_SHORT__=2 __SIZEOF_SIZE_T__=8 __SIZEOF_WCHAR_T__=4 __SIZEOF_WINT_T__=4 __SIZE_MAX__=18446744073709551615UL __SIZE_TYPE__=long\ unsigned\ int __SSE2_MATH__=1 __SSE2__=1 __SSE_MATH__=1 __SSE__=1 __STDC_HOSTED__=1 __STDC__=1 __UINT16_C(c)=c __UINT16_MAX__=65535 __UINT16_TYPE__=short\ unsigned\ int __UINT32_C(c)=cU __UINT32_MAX__=4294967295U __UINT32_TYPE__=unsigned\ int __UINT64_C(c)=cUL __UINT64_MAX__=18446744073709551615UL __UINT64_TYPE__=long\ unsigned\ int __UINT8_C(c)=c __UINT8_MAX__=255 __UINT8_TYPE__=unsigned\ char __UINTMAX_C(c)=cUL __UINTMAX_MAX__=18446744073709551615UL __UINTMAX_TYPE__=long\ unsigned\ int __UINTPTR_MAX__=18446744073709551615UL __UINTPTR_TYPE__=long\ unsigned\ int __UINT_FAST16_MAX__=18446744073709551615UL __UINT_FAST16_TYPE__=long\ unsigned\ int __UINT_FAST32_MAX__=18446744073709551615UL __UINT_FAST32_TYPE__=long\ unsigned\ int __UINT_FAST64_MAX__=18446744073709551615UL __UINT_FAST64_TYPE__=long\ unsigned\ i
nt
>   __UINT_FAST8_MAX__=255 __UINT_FAST8_TYPE__=unsigned\ char __UINT_LEAST16_MAX__=65535 __UINT_LEAST16_TYPE__=short\ unsigned\ int __UINT_LEAST32_MAX__=4294967295U __UINT_LEAST32_TYPE__=unsigned\ int __UINT_LEAST64_MAX__=18446744073709551615UL __UINT_LEAST64_TYPE__=long\ unsigned\ int __UINT_LEAST8_MAX__=255 __UINT_LEAST8_TYPE__=unsigned\ char __USER_LABEL_PREFIX__= __USE_BSD=1 __USE_FILE_OFFSET64=1 __USE_GNU=1 __USE_LARGEFILE64=1 __USE_LARGEFILE=1 __USE_MISC=1 __USE_POSIX199309=1 __USE_POSIX199506=1 __USE_POSIX2=1 __USE_POSIX=1 __USE_REENTRANT=1 __USE_SVID=1 __USE_UNIX98=1 __USE_XOPEN=1 __USE_XOPEN_EXTENDED=1 __VERSION__="4.5.1" __WCHAR_MAX__=2147483647 __WCHAR_MIN__=(-2147483647\ -\ 1) __WCHAR_TYPE__=int __WINT_MAX__=4294967295U __WINT_MIN__=0U __WINT_TYPE__=unsigned\ int __amd64=1 __amd64__=1 __gnu_linux__=1 __k8=1 __k8__=1 __linux=1 __linux__=1 __unix=1 __unix__=1 __x86_64=1 __x86_64__=1 linux=1 unix=1'
> +d_nv_preserves_uv='undef'
> +d_printf_format_null='undef'
> +d_u32align='define'
> +gidformat='"u"'
> +i32type='int'
> +i64type='long'
> +ivsize='8'
> +longdblsize='16'
> +longsize='8'
> +myuname='linux qemux86-64 2.6.37-rc5-yocto-standard+ #1 smp preempt mon dec 20 17:19:50 pst 2010 x86_64 gnulinux '
> +need_va_copy='define'
> +netdb_host_type='char *'
> +nv_preserves_uv_bits='53'
> +ptrsize='8'
> +quadkind='2'
> +quadtype='long'
> +sGMTIME_max='67768036191676799'
> +sGMTIME_min='-62167219200'
> +sLOCALTIME_max='67768036191676799'
> +sLOCALTIME_min='-62167219200'
> +sPRIXU64='"lX"'
> +sPRId64='"ld"'
> +sPRIi64='"li"'
> +sPRIo64='"lo"'
> +sPRIu64='"lu"'
> +sPRIx64='"lx"'
> +selectminbits='64'
> +sizesize='8'
> +u32type='unsigned int'
> +u64type='unsigned long'
> +uidformat='"u"'
> +uquadtype='unsigned long'
> +use64bitall='define'
> +use64bitint='define'
> +uvsize='8'
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-64-be b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-64-be
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/config.sh-64-be
> rename to meta/recipes-devtools/perl/perl-5.12.2/config.sh-64-be
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-64-le b/meta/recipes-devtools/perl/perl-5.12.2/config.sh-64-le
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/config.sh-64-le
> rename to meta/recipes-devtools/perl/perl-5.12.2/config.sh-64-le
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch b/meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch
> new file mode 100644
> index 0000000..f6218c1
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch
> @@ -0,0 +1,13 @@
> +Index: perl-5.10.1/Makefile.SH
> +===================================================================
> +--- perl-5.10.1.orig/Makefile.SH	2010-02-12 19:06:17.000000000 +0300
> ++++ perl-5.10.1/Makefile.SH	2010-02-12 19:10:13.000000000 +0300
> +@@ -596,7 +596,7 @@
> + 	\$(RUN) ./generate_uudmap\$(HOST_EXE_EXT)>uudmap.h
> +
> + generate_uudmap\$(HOST_EXE_EXT): generate_uudmap\$(OBJ_EXT)
> +-	\$(CC) -o generate_uudmap\$(EXE_EXT) \$(LDFLAGS) generate_uudmap\$(OBJ_EXT) \$(libs)
> ++	\$(BUILD_CC) -o generate_uudmap\$(EXE_EXT) generate_uudmap.c
> +
> + !GROK!THIS!
> + $spitshell>>$Makefile<<'!NO!SUBS!'
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff
> new file mode 100644
> index 0000000..383df6b
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff
> @@ -0,0 +1,32 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Description: Downgrade the optimization of sv.c on arm due to a gcc-4.4 bug
> +Bug-Debian: http://bugs.debian.org/580334
> +
> +Regression from gcc-4.3, not reported yet.
> +
> + perl -e '"-2" =~ /(.+)/; @foo=(); push @foo, $_ for $1..undef; print @foo ? "ok\n" : "not ok\n"'
> +
> +
> +---
> + cflags.SH |    6 +++++-
> + 1 files changed, 5 insertions(+), 1 deletions(-)
> +
> +diff --git a/cflags.SH b/cflags.SH
> +index a5d71b9..6914ba6 100755
> +--- a/cflags.SH
> ++++ b/cflags.SH
> +@@ -312,7 +312,11 @@ for file do
> +     regexec) ;;
> +     run) ;;
> +     scope) ;;
> +-    sv) ;;
> ++    sv)
> ++	case $archname in
> ++	arm-*|armeb-*)
> ++	    optimize=-O0;;
> ++	esac;;
> +     taint) ;;
> +     toke) ;;
> +     universal) ;;
> +--
> +tg: (c823880..) debian/arm_optim (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff
> new file mode 100644
> index 0000000..34b8a2c
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff
> @@ -0,0 +1,23 @@
> +Subject: Raise the timeout of ext/threads/shared/t/stress.t to accommodate slower build hosts
> +Bug-Debian: http://bugs.debian.org/501970
> +
> +
> +---
> + dist/threads-shared/t/stress.t |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +diff --git a/dist/threads-shared/t/stress.t b/dist/threads-shared/t/stress.t
> +index adfd1ed..652a3e6 100755
> +--- a/dist/threads-shared/t/stress.t
> ++++ b/dist/threads-shared/t/stress.t
> +@@ -34,7 +34,7 @@ use threads::shared;
> + {
> +     my $cnt = 50;
> +
> +-    my $TIMEOUT = 60;
> ++    my $TIMEOUT = 150;
> +
> +     my $mutex = 1;
> +     share($mutex);
> +--
> +tg: (c823880..) debian/arm_thread_stress_timeout (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff
> new file mode 100644
> index 0000000..799d15e
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff
> @@ -0,0 +1,22 @@
> +Subject: Set location of CPAN::Config to /etc/perl as /usr may not be writable.
> +
> +
> +---
> + cpan/CPAN/lib/CPAN/HandleConfig.pm |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +diff --git a/cpan/CPAN/lib/CPAN/HandleConfig.pm b/cpan/CPAN/lib/CPAN/HandleConfig.pm
> +index 76cd81e..65a3b27 100644
> +--- a/cpan/CPAN/lib/CPAN/HandleConfig.pm
> ++++ b/cpan/CPAN/lib/CPAN/HandleConfig.pm
> +@@ -543,7 +543,7 @@ sub load {
> +         $configpm = $INC{"CPAN/MyConfig.pm"};
> +         $redo++;
> +     } else {
> +-        my($path_to_cpan) = File::Basename::dirname($INC{"CPAN.pm"});
> ++        my($path_to_cpan) = '/etc/perl';
> +         my($configpmdir) = File::Spec->catdir($path_to_cpan,"CPAN");
> +         my($configpmtest) = File::Spec->catfile($configpmdir,"Config.pm");
> +         my $inc_key;
> +--
> +tg: (c823880..) debian/cpan_config_path (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff
> new file mode 100644
> index 0000000..f64af15
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff
> @@ -0,0 +1,35 @@
> +Subject: Provide a sensible INSTALLDIRS default for modules installed from CPAN.
> +
> +Some modules which are included in core set INSTALLDIRS =>  'perl'
> +explicitly in Makefile.PL or Build.PL.  This makes sense for the normal @INC
> +ordering, but not ours.
> +
> +
> +---
> + cpan/CPAN/lib/CPAN/FirstTime.pm |    4 ++--
> + 1 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/cpan/CPAN/lib/CPAN/FirstTime.pm b/cpan/CPAN/lib/CPAN/FirstTime.pm
> +index 53ffbf1..53976ff 100644
> +--- a/cpan/CPAN/lib/CPAN/FirstTime.pm
> ++++ b/cpan/CPAN/lib/CPAN/FirstTime.pm
> +@@ -947,7 +947,7 @@ sub init {
> +     my_prompt_loop(prefer_installer =>  'MB', $matcher, 'MB|EUMM|RAND');
> +
> +     if (!$matcher or 'makepl_arg make_arg' =~ /$matcher/) {
> +-        my_dflt_prompt(makepl_arg =>  "", $matcher);
> ++        my_dflt_prompt(makepl_arg =>  "INSTALLDIRS=site", $matcher);
> +         my_dflt_prompt(make_arg =>  "", $matcher);
> +         if ( $CPAN::Config->{makepl_arg} =~ /LIBS=|INC=/ ) {
> +             $CPAN::Frontend->mywarn(
> +@@ -969,7 +969,7 @@ sub init {
> +     my_dflt_prompt(make_install_arg =>  $CPAN::Config->{make_arg} || "",
> +                    $matcher);
> +
> +-    my_dflt_prompt(mbuildpl_arg =>  "", $matcher);
> ++    my_dflt_prompt(mbuildpl_arg =>  "--installdirs site", $matcher);
> +     my_dflt_prompt(mbuild_arg =>  "", $matcher);
> +
> +     if (exists $CPAN::HandleConfig::keys{mbuild_install_build_command}
> +--
> +tg: (c823880..) debian/cpan_definstalldirs (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff
> new file mode 100644
> index 0000000..6956218
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff
> @@ -0,0 +1,43 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Save local versions of CPANPLUS::Config::System into /etc/perl.
> +
> +This is a configuration file and needs to go in /etc by policy.
> +Besides, /usr may not even be writable.
> +
> +This mirrors the Debian setup of CPAN.pm in debian/cpan_config_path.
> +
> +See #533707.
> +
> +---
> + cpan/CPANPLUS/lib/CPANPLUS/Configure.pm           |    1 +
> + cpan/CPANPLUS/lib/CPANPLUS/Internals/Constants.pm |    3 +++
> + 2 files changed, 4 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/CPANPLUS/lib/CPANPLUS/Configure.pm b/cpan/CPANPLUS/lib/CPANPLUS/Configure.pm
> +index baac91d..a3794de 100644
> +--- a/cpan/CPANPLUS/lib/CPANPLUS/Configure.pm
> ++++ b/cpan/CPANPLUS/lib/CPANPLUS/Configure.pm
> +@@ -276,6 +276,7 @@ Saves the configuration to the package name you provided.
> + If this package is not C<CPANPLUS::Config::System>, it will
> + be saved in your C<.cpanplus>  directory, otherwise it will
> + be attempted to be saved in the system wide directory.
> ++(On Debian systems, this system wide directory is /etc/perl.)
> +
> + If no argument is provided, it will default to your personal
> + config.
> +diff --git a/cpan/CPANPLUS/lib/CPANPLUS/Internals/Constants.pm b/cpan/CPANPLUS/lib/CPANPLUS/Internals/Constants.pm
> +index 1a38200..6ee0d82 100644
> +--- a/cpan/CPANPLUS/lib/CPANPLUS/Internals/Constants.pm
> ++++ b/cpan/CPANPLUS/lib/CPANPLUS/Internals/Constants.pm
> +@@ -199,6 +199,9 @@ use constant CONFIG_USER_FILE    =>  sub {
> +                                     ) . '.pm';
> +                                 };
> + use constant CONFIG_SYSTEM_FILE  =>  sub {
> ++                                    # Debian-specific shortcut
> ++                                    return '/etc/perl/CPANPLUS/Config/System.pm';
> ++
> +                                     require CPANPLUS::Internals;
> +                                     require File::Basename;
> +                                     my $dir = File::Basename::dirname(
> +--
> +tg: (c823880..) debian/cpanplus_config_path (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff
> new file mode 100644
> index 0000000..3a1e209
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff
> @@ -0,0 +1,52 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Configure CPANPLUS to use the site directories by default.
> +Closes: 533707
> +
> +The core modules usually default to INSTALLDIRS=perl (ExtUtils::MakeMaker)
> +or installdirs=core (Module::Build), so we need to explicitly ask for
> +the site destination to get upgraded versions into /usr/local.
> +
> +See also the sister patch, debian/cpan_definstalldirs .
> +
> +---
> + cpan/CPANPLUS/lib/CPANPLUS/Config/System.pm |   30 +++++++++++++++++++++++++++
> + 1 files changed, 30 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/CPANPLUS/lib/CPANPLUS/Config/System.pm b/cpan/CPANPLUS/lib/CPANPLUS/Config/System.pm
> +new file mode 100644
> +index 0000000..5e6e11e
> +--- /dev/null
> ++++ b/cpan/CPANPLUS/lib/CPANPLUS/Config/System.pm
> +@@ -0,0 +1,30 @@
> ++### minimal pod, so you can find it with perldoc -l, etc
> ++=pod
> ++
> ++=head1 NAME
> ++
> ++CPANPLUS::Config::System
> ++
> ++=head1 DESCRIPTION
> ++
> ++This is a CPANPLUS configuration file that sets appropriate default
> ++settings on Debian systems.
> ++
> ++The only preconfigured settings are C<makemakerflags>  (set to
> ++C<INSTALLDIRS=site>) and C<buildflags>  (set to C<--installdirs site>).
> ++
> ++These settings will not have any effect if
> ++C</etc/perl/CPANPLUS/Config/System.pm>  is present.
> ++
> ++=cut
> ++
> ++
> ++package CPANPLUS::Config::System;
> ++
> ++sub setup {
> ++    my $conf = shift;
> ++    $conf->set_conf( makemakerflags =>  'INSTALLDIRS=site' );
> ++    $conf->set_conf( buildflags =>  '--installdirs site' );
> ++}
> ++
> ++1;
> +--
> +tg: (c823880..) debian/cpanplus_definstalldirs (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff
> new file mode 100644
> index 0000000..8d0e61b
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff
> @@ -0,0 +1,32 @@
> +Subject: Remove overly restrictive DB_File version check.
> +Bug-Debian: http://bugs.debian.org/340047
> +
> +Package dependencies ensure the correct library is linked at run-time.
> +
> +
> +---
> + cpan/DB_File/version.c |    2 ++
> + 1 files changed, 2 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/DB_File/version.c b/cpan/DB_File/version.c
> +index 47158d3..67ccdff 100644
> +--- a/cpan/DB_File/version.c
> ++++ b/cpan/DB_File/version.c
> +@@ -48,6 +48,7 @@ __getBerkeleyDBInfo()
> +
> +     (void)db_version(&Major,&Minor,&Patch) ;
> +
> ++#ifndef DEBIAN
> +     /* Check that the versions of db.h and libdb.a are the same */
> +     if (Major != DB_VERSION_MAJOR || Minor != DB_VERSION_MINOR )
> + 		/* || Patch != DB_VERSION_PATCH) */
> +@@ -55,6 +56,7 @@ __getBerkeleyDBInfo()
> + 	croak("\nDB_File was build with libdb version %d.%d.%d,\nbut you are attempting to run it with libdb version %d.%d.%d\n",
> + 		DB_VERSION_MAJOR, DB_VERSION_MINOR, DB_VERSION_PATCH,
> + 		Major, Minor, Patch) ;
> ++#endif /* DEBIAN */
> +
> +     /* check that libdb is recent enough  -- we need 2.3.4 or greater */
> +     if (Major == 2&&  (Minor<  3 || (Minor ==  3&&  Patch<  4)))
> +--
> +tg: (c823880..) debian/db_file_ver (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff
> new file mode 100644
> index 0000000..a515035
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff
> @@ -0,0 +1,59 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Point users to Debian packages of deprecated core modules
> +Bug-Debian: http://bugs.debian.org/580034
> +
> +Class::ISA, Switch, Pod::Plainer, and (partially) Shell were
> +deprecated from the Perl core in 5.12.0.
> +
> +To get a clean transition, perl-modules is going to recommend the separate
> +Debian packages of these for one release cycle so that they will be
> +pulled in by default on upgrades.
> +
> +However, on systems configured to ignore recommendations the deprecation
> +warnings will still be useful, so modify them slightly to point to the
> +separate packages instead.
> +
> +---
> + lib/deprecate.pm |   18 +++++++++++++++++-
> + 1 files changed, 17 insertions(+), 1 deletions(-)
> +
> +diff --git a/lib/deprecate.pm b/lib/deprecate.pm
> +index 7b92e0b..9db7330 100644
> +--- a/lib/deprecate.pm
> ++++ b/lib/deprecate.pm
> +@@ -7,6 +7,16 @@ our $VERSION = 0.01;
> + our %Config;
> + unless (%Config) { require Config; *Config = \%Config::Config; }
> +
> ++# Debian-specific change: recommend the separate Debian packages of
> ++# deprecated modules where available
> ++
> ++my %DEBIAN_PACKAGES = (
> ++    "Class::ISA"	=>  "libclass-isa-perl",
> ++    "Pod::Plainer"	=>  "libpod-plainer-perl",
> ++    "Switch"		=>  "libswitch-perl",
> ++    "Shell"		=>  "libshell-perl",
> ++);
> ++
> + sub import {
> +     my ($package, $file, $line) = caller;
> +     my $expect_leaf = "$package.pm";
> +@@ -44,9 +54,15 @@ EOM
> + 	    if (defined $callers_bitmask
> +             	&&  (vec($callers_bitmask, $warnings::Offsets{deprecated}, 1)
> + 		    || vec($callers_bitmask, $warnings::Offsets{all}, 1))) {
> +-		warn<<"EOM";
> ++		if (my $deb = $DEBIAN_PACKAGES{$package}) {
> ++		    warn<<"EOM";
> ++$package will be removed from the Perl core distribution in the next major release. Please install the separate $deb package. It is being used at $call_file, line $call_line.
> ++EOM
> ++		} else {
> ++		    warn<<"EOM";
> + $package will be removed from the Perl core distribution in the next major release. Please install it from CPAN. It is being used at $call_file, line $call_line.
> + EOM
> ++		}
> + 	    }
> + 	    return;
> + 	}
> +--
> +tg: (c823880..) debian/deprecate-with-apt (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff
> new file mode 100644
> index 0000000..9e4d9cf
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff
> @@ -0,0 +1,32 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Work around an ICE on ia64
> +Closes: 548943
> +
> +Temporarily work around an internal compiler error in Devel::PPPort
> +on ia64+gcc-4.3.
> +
> +
> +---
> + cpan/Devel-PPPort/Makefile.PL |    7 +++++++
> + 1 files changed, 7 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/Devel-PPPort/Makefile.PL b/cpan/Devel-PPPort/Makefile.PL
> +index 67eebc1..f1ef7a2 100644
> +--- a/cpan/Devel-PPPort/Makefile.PL
> ++++ b/cpan/Devel-PPPort/Makefile.PL
> +@@ -75,6 +75,13 @@ sub configure
> +     push @moreopts, INSTALLDIRS =>  ($]>= 5.007003 ? 'perl' : 'site');
> +   }
> +
> ++
> ++  # temporary Debian hack, see http://bugs.debian.org/548943
> ++  require Config;
> ++  if ($Config::Config{archname} =~ /^ia64/) {
> ++    push @moreopts, OPTIMIZE =>  '-g -O0';
> ++  }
> ++
> +   if ($opt{'apicheck'}) {
> +     $PL_FILES{'apicheck_c.PL'} = 'apicheck.c';
> +     push @C_FILES, qw{ apicheck.c };
> +--
> +tg: (c823880..) debian/devel-ppport-ia64-optim (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff
> new file mode 100644
> index 0000000..f540067
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff
> @@ -0,0 +1,29 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Disable zlib bundling in Compress::Raw::Zlib
> +
> +Compress::Raw::Zlib statically links its bundled version of zlib
> +by default, but we use the system library instead.
> +
> +---
> + cpan/Compress-Raw-Zlib/config.in |    6 +++---
> + 1 files changed, 3 insertions(+), 3 deletions(-)
> +
> +diff --git a/cpan/Compress-Raw-Zlib/config.in b/cpan/Compress-Raw-Zlib/config.in
> +index c56cc03..2c6659b 100644
> +--- a/cpan/Compress-Raw-Zlib/config.in
> ++++ b/cpan/Compress-Raw-Zlib/config.in
> +@@ -16,9 +16,9 @@
> + #    Setting the Gzip OS Code
> + #
> +
> +-BUILD_ZLIB      = True
> +-INCLUDE         = ./zlib-src
> +-LIB             = ./zlib-src
> ++BUILD_ZLIB      = False
> ++INCLUDE         = /usr/include
> ++LIB             = /usr/lib
> +
> + OLD_ZLIB        = False
> + GZIP_OS_CODE    = AUTO_DETECT
> +--
> +tg: (c823880..) debian/disable-zlib-bundling (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff
> new file mode 100644
> index 0000000..ec7eba9
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff
> @@ -0,0 +1,34 @@
> +Subject: Replace generic man(1) instructions with Debian-specific information.
> +
> +Indicate that the user needs to install the perl-doc package.
> +
> +
> +---
> + pod/perl.pod |   12 ++++++++++--
> + 1 files changed, 10 insertions(+), 2 deletions(-)
> +
> +diff --git a/pod/perl.pod b/pod/perl.pod
> +index e48e526..3b0bbf6 100644
> +--- a/pod/perl.pod
> ++++ b/pod/perl.pod
> +@@ -241,8 +241,16 @@ For ease of access, the Perl manual has been split up into several sections.
> +     perlwin32		Perl notes for Windows
> +
> +
> +-On a Unix-like system, these documentation files will usually also be
> +-available as manpages for use with the F<man>  program.
> ++On Debian systems, you need to install the B<perl-doc>  package which
> ++contains the majority of the standard Perl documentation and the
> ++F<perldoc>  program.
> ++
> ++Extensive additional documentation for Perl modules is available, both
> ++those distributed with Perl and third-party modules which are packaged
> ++or locally installed.
> ++
> ++You should be able to view Perl's documentation with your man(1)
> ++program or perldoc(1).
> +
> + In general, if something strange has gone wrong with your program and you're
> + not sure where you should look for help, try the B<-w>  switch first.  It will
> +--
> +tg: (c823880..) debian/doc_info (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff
> new file mode 100644
> index 0000000..227dc10
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff
> @@ -0,0 +1,49 @@
> +Subject: Tweak enc2xs to follow symlinks and ignore missing @INC directories.
> +Bug-Debian: http://bugs.debian.org/290336
> +
> +- ignore missing directories,
> +- follow symlinks (/usr/share/perl/5.8 ->  5.8.4).
> +
> +
> +---
> + cpan/Encode/bin/enc2xs |    8 ++++----
> + 1 files changed, 4 insertions(+), 4 deletions(-)
> +
> +diff --git a/cpan/Encode/bin/enc2xs b/cpan/Encode/bin/enc2xs
> +index 773c0a0..049ecf9 100644
> +--- a/cpan/Encode/bin/enc2xs
> ++++ b/cpan/Encode/bin/enc2xs
> +@@ -924,11 +924,11 @@ use vars qw(
> + sub find_e2x{
> +     eval { require File::Find; };
> +     my (@inc, %e2x_dir);
> +-    for my $inc (@INC){
> ++    for my $inc (grep -d, @INC){
> +     push @inc, $inc unless $inc eq '.'; #skip current dir
> +     }
> +     File::Find::find(
> +-         sub {
> ++         { wanted =>  sub {
> +          my ($dev,$ino,$mode,$nlink,$uid,$gid,$rdev,$size,
> +              $atime,$mtime,$ctime,$blksize,$blocks)
> +              = lstat($_) or return;
> +@@ -938,7 +938,7 @@ sub find_e2x{
> +              $e2x_dir{$File::Find::dir} ||= $mtime;
> +          }
> +          return;
> +-         }, @inc);
> ++         }, follow =>  1}, @inc);
> +     warn join("\n", keys %e2x_dir), "\n";
> +     for my $d (sort {$e2x_dir{$a}<=>  $e2x_dir{$b}} keys %e2x_dir){
> +     $_E2X = $d;
> +@@ -1005,7 +1005,7 @@ sub make_configlocal_pm {
> + 	    $LocalMod{$enc} ||= $mod;
> + 	}
> +     };
> +-    File::Find::find({wanted =>  $wanted}, @INC);
> ++    File::Find::find({wanted =>  $wanted, follow =>  1}, grep -d, @INC);
> +     $_ModLines = "";
> +     for my $enc ( sort keys %LocalMod ) {
> +         $_ModLines .=
> +--
> +tg: (c823880..) debian/enc2xs_inc (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff
> new file mode 100644
> index 0000000..f437008
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff
> @@ -0,0 +1,32 @@
> +Subject: Remove Errno version check due to upgrade problems with long-running processes.
> +Bug-Debian: http://bugs.debian.org/343351
> +
> +Remove version check which can cause problems for long running
> +processes embedding perl when upgrading to a newer version,
> +compatible, but built on a different machine.
> +
> +
> +---
> + ext/Errno/Errno_pm.PL |    5 -----
> + 1 files changed, 0 insertions(+), 5 deletions(-)
> +
> +diff --git a/ext/Errno/Errno_pm.PL b/ext/Errno/Errno_pm.PL
> +index 124b8fc..b554cd4 100644
> +--- a/ext/Errno/Errno_pm.PL
> ++++ b/ext/Errno/Errno_pm.PL
> +@@ -341,13 +341,8 @@ EOF
> + package Errno;
> + our (\@EXPORT_OK,\%EXPORT_TAGS,\@ISA,\$VERSION,\%errno,\$AUTOLOAD);
> + use Exporter ();
> +-use Config;
> + use strict;
> +
> +-"\$Config{'archname'}-\$Config{'osvers'}" eq
> +-"$Config{'archname'}-$Config{'osvers'}" or
> +-	die "Errno architecture ($Config{'archname'}-$Config{'osvers'}) does not match executable architecture (\$Config{'archname'}-\$Config{'osvers'})";
> +-
> + \$VERSION = "$VERSION";
> + \$VERSION = eval \$VERSION;
> + \@ISA = qw(Exporter);
> +--
> +tg: (c823880..) debian/errno_ver (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/52_debian_extutils_hacks.patch b/meta/recipes-devtools/perl/perl-5.12.2/debian/extutils_hacks.diff
> similarity index 55%
> rename from meta/recipes-devtools/perl/perl-5.8.8/52_debian_extutils_hacks.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/debian/extutils_hacks.diff
> index 8a964f9..9134cac 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/52_debian_extutils_hacks.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/extutils_hacks.diff
> @@ -1,4 +1,4 @@
> -Various debian-specific ExtUtils changes:
> +Subject: Various debian-specific ExtUtils changes
>
>    * Respect umask during installation, and set as appropriate for each of
>      perl, vendor and site (policy requires group writable site dirs).
> @@ -11,38 +11,23 @@ Various debian-specific ExtUtils changes:
>
>    * Set location of libperl.a to /usr/lib.
>    * Note that libperl-dev package is required for embedded linking.
> + * Change install target dependencies to facilitate parallel makes.
>
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/Embed.pm perl-5.8.8/lib/ExtUtils/Embed.pm
> ---- perl-5.8.8.orig/lib/ExtUtils/Embed.pm	2004-08-03 20:41:49.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/Embed.pm	2006-02-05 10:42:11.000000000 +1100
> -@@ -300,6 +300,9 @@
> - Typically, an application B<Makefile>  will invoke ExtUtils::Embed
> - functions while building your application.
> -
> -+Note that on Debian systems the B<libperl-dev>  package is required for
> -+compiling applications which embed an interpreter.
> -+
> - =head1 @EXPORT
> -
> - ExtUtils::Embed exports the following functions:
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/Install.pm perl-5.8.8/lib/ExtUtils/Install.pm
> ---- perl-5.8.8.orig/lib/ExtUtils/Install.pm	2005-10-21 22:00:01.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/Install.pm	2006-02-05 10:42:11.000000000 +1100
> -@@ -173,8 +173,8 @@
> - 		if (-f $targetfile){
> - 		    forceunlink($targetfile) unless $nonono;
> - 		} else {
> --		    mkpath($targetdir,0,0755) unless $nonono;
> --		    print "mkpath($targetdir,0,0755)\n" if $verbose>1;
> -+		    mkpath($targetdir) unless $nonono;
> -+		    print "mkpath($targetdir)\n" if $verbose>1;
> - 		}
> - 		copy($sourcefile, $targetfile) unless $nonono;
> - 		print "Installing $targetfile\n";
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Any.pm perl-5.8.8/lib/ExtUtils/MM_Any.pm
> ---- perl-5.8.8.orig/lib/ExtUtils/MM_Any.pm	2005-04-13 17:49:53.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/MM_Any.pm	2006-02-05 11:17:52.000000000 +1100
> -@@ -645,8 +645,6 @@
> +
> +---
> + cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Any.pm  |   12 +++---
> + cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm |   44 +++++-----------------
> + cpan/ExtUtils-MakeMaker/t/INST.t                |    4 +--
> + cpan/ExtUtils-MakeMaker/t/INST_PREFIX.t         |   10 +++---
> + dist/ExtUtils-Install/lib/ExtUtils/Install.pm   |   18 +++++-----
> + lib/ExtUtils/Embed.pm                           |    3 ++
> + 6 files changed, 34 insertions(+), 57 deletions(-)
> +
> +diff --git a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Any.pm b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Any.pm
> +index 4905aeb..a80ac20 100644
> +--- a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Any.pm
> ++++ b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Any.pm
> +@@ -701,8 +701,6 @@ all POD files in MAN1PODS and MAN3PODS.
>    sub manifypods_target {
>        my($self) = shift;
>
> @@ -51,7 +36,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Any.pm perl-5.8.8/li
>        my $dependencies  = '';
>
>        # populate manXpods&  dependencies:
> -@@ -666,7 +664,7 @@
> +@@ -718,7 +716,7 @@ END
>        foreach my $section (qw(1 3)) {
>            my $pods = $self->{"MAN${section}PODS"};
>            push @man_cmds, $self->split_command(<<CMD, %$pods);
> @@ -60,7 +45,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Any.pm perl-5.8.8/li
>    CMD
>        }
>
> -@@ -1080,9 +1078,11 @@
> +@@ -1428,9 +1426,11 @@ sub init_INSTALL_from_PREFIX {
>            $self->{SITEPREFIX}   ||= $sprefix;
>            $self->{VENDORPREFIX} ||= $vprefix;
>
> @@ -75,13 +60,14 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Any.pm perl-5.8.8/li
>        }
>
>        my $arch    = $Config{archname};
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/lib/ExtUtils/MM_Unix.pm
> ---- perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm	2005-05-21 19:42:56.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/MM_Unix.pm	2006-02-05 17:40:19.000000000 +1100
> -@@ -2054,9 +2054,7 @@
> +diff --git a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +index 239d6df..940de38 100644
> +--- a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> ++++ b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +@@ -2046,9 +2046,7 @@ doc__install : doc_site_install
>    	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site
>
> - pure_perl_install ::
> + pure_perl_install :: all
>   -	$(NOECHO) $(MOD_INSTALL) \
>   -		read }.$self->catfile('$(PERL_ARCHLIB)','auto','$(FULLEXT)','.packlist').q{ \
>   -		write }.$self->catfile('$(DESTINSTALLARCHLIB)','auto','$(FULLEXT)','.packlist').q{ \
> @@ -89,19 +75,19 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>    		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
>    		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
>    		$(INST_BIN) $(DESTINSTALLBIN) \
> -@@ -2068,7 +2066,7 @@
> +@@ -2060,7 +2058,7 @@ pure_perl_install :: all
>
>
> - pure_site_install ::
> + pure_site_install :: all
>   -	$(NOECHO) $(MOD_INSTALL) \
>   +	$(NOECHO) umask 02; $(MOD_INSTALL) \
>    		read }.$self->catfile('$(SITEARCHEXP)','auto','$(FULLEXT)','.packlist').q{ \
>    		write }.$self->catfile('$(DESTINSTALLSITEARCH)','auto','$(FULLEXT)','.packlist').q{ \
>    		$(INST_LIB) $(DESTINSTALLSITELIB) \
> -@@ -2081,9 +2079,7 @@
> +@@ -2073,9 +2071,7 @@ pure_site_install :: all
>    		}.$self->catdir('$(PERL_ARCHLIB)','auto','$(FULLEXT)').q{
>
> - pure_vendor_install ::
> + pure_vendor_install :: all
>   -	$(NOECHO) $(MOD_INSTALL) \
>   -		read }.$self->catfile('$(VENDORARCHEXP)','auto','$(FULLEXT)','.packlist').q{ \
>   -		write }.$self->catfile('$(DESTINSTALLVENDORARCH)','auto','$(FULLEXT)','.packlist').q{ \
> @@ -109,10 +95,10 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>    		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
>    		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
>    		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
> -@@ -2092,37 +2088,19 @@
> +@@ -2084,37 +2080,19 @@ pure_vendor_install :: all
>    		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)
>
> - doc_perl_install ::
> + doc_perl_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
>   -	-$(NOECHO) $(DOC_INSTALL) \
> @@ -123,7 +109,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>   -		EXE_FILES "$(EXE_FILES)" \
>   -		>>  }.$self->catfile('$(DESTINSTALLARCHLIB)','perllocal.pod').q{
>
> - doc_site_install ::
> + doc_site_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
>   -	-$(NOECHO) $(DOC_INSTALL) \
> @@ -138,7 +124,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>   -		>>  }.$self->catfile('$(DESTINSTALLARCHLIB)','perllocal.pod').q{
>   +		>>  }.$self->catfile('$(DESTINSTALLSITEARCH)','perllocal.pod').q{
>
> - doc_vendor_install ::
> + doc_vendor_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
>   -	-$(NOECHO) $(DOC_INSTALL) \
> @@ -151,7 +137,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>
>    };
>
> -@@ -2131,13 +2109,12 @@
> +@@ -2123,13 +2101,12 @@ uninstall :: uninstall_from_$(INSTALLDIRS)dirs
>    	$(NOECHO) $(NOOP)
>
>    uninstall_from_perldirs ::
> @@ -166,7 +152,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>    };
>
>        join("",@m);
> -@@ -2415,7 +2392,7 @@
> +@@ -2402,7 +2379,7 @@ MAP_PRELIBS   = $Config{perllibs} $Config{cryptlib}
>    	($lperl = $libperl) =~ s/\$\(A\)/$self->{LIB_EXT}/;
>        }
>        unless ($libperl&&  -f $lperl) { # Ilya's code...
> @@ -175,20 +161,21 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>    	$dir = "$self->{PERL_ARCHLIB}/.." if $self->{UNINSTALLED_PERL};
>    	$libperl ||= "libperl$self->{LIB_EXT}";
>    	$libperl   = "$dir/$libperl";
> -@@ -3007,8 +2984,7 @@
> +@@ -2998,8 +2975,7 @@ sub prefixify {
>        print STDERR "  prefixify $var =>  $path\n" if $Verbose>= 2;
>        print STDERR "    from $sprefix to $rprefix\n" if $Verbose>= 2;
>
> --    if( $self->{ARGS}{PREFIX}&&  $self->file_name_is_absolute($path)&&
> +-    if( $self->{ARGS}{PREFIX}&&
>   -        $path !~ s{^\Q$sprefix\E\b}{$rprefix}s )
>   +    if( $path !~ s{^\Q$sprefix\E\b}{$rprefix}s&&  $self->{ARGS}{PREFIX} )
>        {
>
>            print STDERR "    cannot prefix, using default.\n" if $Verbose>= 2;
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/t/INST.t perl-5.8.8/lib/ExtUtils/t/INST.t
> ---- perl-5.8.8.orig/lib/ExtUtils/t/INST.t	2005-10-21 19:12:39.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/t/INST.t	2006-02-05 17:48:56.000000000 +1100
> -@@ -65,9 +65,7 @@
> +diff --git a/cpan/ExtUtils-MakeMaker/t/INST.t b/cpan/ExtUtils-MakeMaker/t/INST.t
> +index 8a140eb..cf1410e 100755
> +--- a/cpan/ExtUtils-MakeMaker/t/INST.t
> ++++ b/cpan/ExtUtils-MakeMaker/t/INST.t
> +@@ -59,9 +59,7 @@ isa_ok( $mm, 'ExtUtils::MakeMaker' );
>    is( $mm->{NAME}, 'Big::Dummy',  'NAME' );
>    is( $mm->{VERSION}, 0.01,            'VERSION' );
>
> @@ -199,10 +186,11 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/t/INST.t perl-5.8.8/lib
>
>    is( !!$mm->{PERL_CORE}, !!$ENV{PERL_CORE}, 'PERL_CORE' );
>
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/t/INST_PREFIX.t perl-5.8.8/lib/ExtUtils/t/INST_PREFIX.t
> ---- perl-5.8.8.orig/lib/ExtUtils/t/INST_PREFIX.t	2005-10-21 22:00:19.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/t/INST_PREFIX.t	2006-02-05 17:48:06.000000000 +1100
> -@@ -16,7 +16,7 @@
> +diff --git a/cpan/ExtUtils-MakeMaker/t/INST_PREFIX.t b/cpan/ExtUtils-MakeMaker/t/INST_PREFIX.t
> +index 8bb9db8..316546d 100755
> +--- a/cpan/ExtUtils-MakeMaker/t/INST_PREFIX.t
> ++++ b/cpan/ExtUtils-MakeMaker/t/INST_PREFIX.t
> +@@ -10,7 +10,7 @@ BEGIN {
>    }
>
>    use strict;
> @@ -211,7 +199,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/t/INST_PREFIX.t perl-5.
>    use MakeMaker::Test::Utils;
>    use MakeMaker::Test::Setup::BFD;
>    use ExtUtils::MakeMaker;
> -@@ -62,16 +62,16 @@
> +@@ -56,16 +56,16 @@ like( $stdout->read, qr{
>                            Writing\ $Makefile\ for\ Big::Dummy\n
>    }x );
>
> @@ -232,3 +220,94 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/t/INST_PREFIX.t perl-5.
>
>
>    my $PREFIX = File::Spec->catdir('foo', 'bar');
> +diff --git a/dist/ExtUtils-Install/lib/ExtUtils/Install.pm b/dist/ExtUtils-Install/lib/ExtUtils/Install.pm
> +index da58365..d6d5c11 100644
> +--- a/dist/ExtUtils-Install/lib/ExtUtils/Install.pm
> ++++ b/dist/ExtUtils-Install/lib/ExtUtils/Install.pm
> +@@ -468,7 +468,7 @@ sub _can_write_dir {
> +
> + =pod
> +
> +-=item _mkpath($dir,$show,$mode,$verbose,$dry_run)
> ++=item _mkpath($dir,$show,$verbose,$dry_run)
> +
> + Wrapper around File::Path::mkpath() to handle errors.
> +
> +@@ -485,13 +485,13 @@ writable.
> + =cut
> +
> + sub _mkpath {
> +-    my ($dir,$show,$mode,$verbose,$dry_run)=@_;
> ++    my ($dir,$show,$verbose,$dry_run)=@_;
> +     if ( $verbose&&  $verbose>  1&&  ! -d $dir) {
> +         $show= 1;
> +-        printf "mkpath(%s,%d,%#o)\n", $dir, $show, $mode;
> ++        printf "mkpath(%s,%d)\n", $dir, $show;
> +     }
> +     if (!$dry_run) {
> +-        if ( ! eval { File::Path::mkpath($dir,$show,$mode); 1 } ) {
> ++        if ( ! eval { File::Path::mkpath($dir,$show); 1 } ) {
> +             _choke("Can't create '$dir'","$@");
> +         }
> +
> +@@ -796,7 +796,7 @@ sub install { #XXX OS-SPECIFIC
> +         _chdir($cwd);
> +     }
> +     foreach my $targetdir (sort keys %check_dirs) {
> +-        _mkpath( $targetdir, 0, 0755, $verbose, $dry_run );
> ++        _mkpath( $targetdir, 0, $verbose, $dry_run );
> +     }
> +     foreach my $found (@found_files) {
> +         my ($diff, $ffd, $origfile, $mode, $size, $atime, $mtime,
> +@@ -810,7 +810,7 @@ sub install { #XXX OS-SPECIFIC
> +                     $targetfile= _unlink_or_rename( $targetfile, 'tryhard', 'install' )
> +                         unless $dry_run;
> +                 } elsif ( ! -d $targetdir ) {
> +-                    _mkpath( $targetdir, 0, 0755, $verbose, $dry_run );
> ++                    _mkpath( $targetdir, 0, $verbose, $dry_run );
> +                 }
> +                 print "Installing $targetfile\n";
> +
> +@@ -850,7 +850,7 @@ sub install { #XXX OS-SPECIFIC
> +
> +     if ($pack{'write'}) {
> +         $dir = install_rooted_dir(dirname($pack{'write'}));
> +-        _mkpath( $dir, 0, 0755, $verbose, $dry_run );
> ++        _mkpath( $dir, 0, $verbose, $dry_run );
> +         print "Writing $pack{'write'}\n" if $verbose;
> +         $packlist->write(install_rooted_file($pack{'write'})) unless $dry_run;
> +     }
> +@@ -1190,7 +1190,7 @@ be prepended as a directory to each installed file (and directory).
> + sub pm_to_blib {
> +     my($fromto,$autodir,$pm_filter) = @_;
> +
> +-    _mkpath($autodir,0,0755);
> ++    _mkpath($autodir,0);
> +     while(my($from, $to) = each %$fromto) {
> +         if( -f $to&&  -s $from == -s $to&&  -M $to<  -M $from ) {
> +             print "Skip $to (unchanged)\n";
> +@@ -1213,7 +1213,7 @@ sub pm_to_blib {
> +             # we wont try hard here. its too likely to mess things up.
> +             forceunlink($to);
> +         } else {
> +-            _mkpath(dirname($to),0,0755);
> ++            _mkpath(dirname($to),0);
> +         }
> +         if ($need_filtering) {
> +             run_filter($pm_filter, $from, $to);
> +diff --git a/lib/ExtUtils/Embed.pm b/lib/ExtUtils/Embed.pm
> +index 24ae909..12d421d 100644
> +--- a/lib/ExtUtils/Embed.pm
> ++++ b/lib/ExtUtils/Embed.pm
> +@@ -305,6 +305,9 @@ and extensions in your C/C++ applications.
> + Typically, an application B<Makefile>  will invoke ExtUtils::Embed
> + functions while building your application.
> +
> ++Note that on Debian systems the B<libperl-dev>  package is required for
> ++compiling applications which embed an interpreter.
> ++
> + =head1 @EXPORT
> +
> + ExtUtils::Embed exports the following functions:
> +--
> +tg: (c823880..) debian/extutils_hacks (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff
> new file mode 100644
> index 0000000..e3430ce
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff
> @@ -0,0 +1,43 @@
> +Subject: Postpone LD_LIBRARY_PATH evaluation to the binary targets.
> +
> +Modify the setting of LD_LIBRARY_PATH to append pre-existing values at the
> +time the rule is evaluated rather than when the Makefile is created.
> +
> +This is required when building packages with dpkg-buildpackage and fakeroot,
> +since fakeroot (which now sets LD_LIBRARY_PATH) is not used for the "build"
> +rule where the Makefile is created, but is for the clean/binary* targets.
> +
> +
> +---
> + Makefile.SH |    9 ++-------
> + 1 files changed, 2 insertions(+), 7 deletions(-)
> +
> +diff --git a/Makefile.SH b/Makefile.SH
> +index c039938..15184d8 100755
> +--- a/Makefile.SH
> ++++ b/Makefile.SH
> +@@ -50,12 +50,7 @@ case "$useshrplib" in
> + true)
> + 	# Prefix all runs of 'miniperl' and 'perl' with
> + 	# $ldlibpth so that ./perl finds *this* shared libperl.
> +-	case "$LD_LIBRARY_PATH" in
> +-	'')
> +-		ldlibpth="LD_LIBRARY_PATH=`pwd`";;
> +-	*)
> +-		ldlibpth="LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}";;
> +-	esac
> ++	ldlibpth=LD_LIBRARY_PATH=`pwd`'$${LD_LIBRARY_PATH:+:}$$LD_LIBRARY_PATH'
> +
> + 	pldlflags="$cccdlflags"
> + 	static_ldflags=''
> +@@ -126,7 +121,7 @@ true)
> + 	    ;;
> + 	esac
> + 	case "$ldlibpthname" in
> +-	'') ;;
> ++	''|LD_LIBRARY_PATH) ;;
> + 	*)
> + 	    case "$osname" in
> + 	    os2)
> +--
> +tg: (c823880..) debian/fakeroot (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff
> new file mode 100644
> index 0000000..f8908ac
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff
> @@ -0,0 +1,98 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Allow for flock returning EAGAIN instead of EWOULDBLOCK on linux/parisc
> +Bug-Debian: http://bugs.debian.org/543731
> +Origin: upstream, http://github.com/pfenwick/autodie/commit/037738e11a6097734b0e1dabdd77b92e5fe35219
> +
> +
> +---
> + cpan/autodie/lib/Fatal.pm |   14 +++++++++++++-
> + cpan/autodie/t/flock.t    |   12 ++++++++++--
> + 2 files changed, 23 insertions(+), 3 deletions(-)
> +
> +diff --git a/cpan/autodie/lib/Fatal.pm b/cpan/autodie/lib/Fatal.pm
> +old mode 100644
> +new mode 100755
> +index 18e71ed..c17a257
> +--- a/cpan/autodie/lib/Fatal.pm
> ++++ b/cpan/autodie/lib/Fatal.pm
> +@@ -5,6 +5,7 @@ use Carp;
> + use strict;
> + use warnings;
> + use Tie::RefHash;   # To cache subroutine refs
> ++use Config;
> +
> + use constant PERL510     =>  ( $]>= 5.010 );
> +
> +@@ -52,6 +53,10 @@ our %_EWOULDBLOCK = (
> +     MSWin32 =>  33,
> + );
> +
> ++# the linux parisc port has separate EAGAIN and EWOULDBLOCK,
> ++# and the kernel returns EAGAIN
> ++my $try_EAGAIN = ($^O eq 'linux' and $Config{archname} =~ /hppa|parisc/) ? 1 : 0;
> ++
> + # We have some tags that can be passed in for use with import.
> + # These are all assumed to be CORE::
> +
> +@@ -720,6 +725,11 @@ sub _one_invocation {
> +         my $EWOULDBLOCK = eval { POSIX::EWOULDBLOCK(); }
> +                           || $_EWOULDBLOCK{$^O}
> +                           || _autocroak("Internal error - can't overload flock - EWOULDBLOCK not defined on this system.");
> ++        my $EAGAIN = $EWOULDBLOCK;
> ++        if ($try_EAGAIN) {
> ++            $EAGAIN = eval { POSIX::EAGAIN(); }
> ++                          || _autocroak("Internal error - can't overload flock - EAGAIN not defined on this system.");
> ++        }
> +
> +         require Fcntl;      # For Fcntl::LOCK_NB
> +
> +@@ -735,7 +745,9 @@ sub _one_invocation {
> +             # If we failed, but we're using LOCK_NB and
> +             # returned EWOULDBLOCK, it's not a real error.
> +
> +-            if (\$_[1]&  Fcntl::LOCK_NB() and \$! == $EWOULDBLOCK ) {
> ++            if (\$_[1]&  Fcntl::LOCK_NB() and
> ++                (\$! == $EWOULDBLOCK or
> ++                ($try_EAGAIN and \$! == $EAGAIN ))) {
> +                 return \$retval;
> +             }
> +
> +diff --git a/cpan/autodie/t/flock.t b/cpan/autodie/t/flock.t
> +index a7550ba..6421a56 100755
> +--- a/cpan/autodie/t/flock.t
> ++++ b/cpan/autodie/t/flock.t
> +@@ -2,7 +2,8 @@
> + use strict;
> + use Test::More;
> + use Fcntl qw(:flock);
> +-use POSIX qw(EWOULDBLOCK);
> ++use POSIX qw(EWOULDBLOCK EAGAIN);
> ++use Config;
> +
> + require Fatal;
> +
> +@@ -10,6 +11,9 @@ my $EWOULDBLOCK = eval { EWOULDBLOCK() }
> +                   || $Fatal::_EWOULDBLOCK{$^O}
> +                   || plan skip_all =>  "EWOULDBLOCK not defined on this system";
> +
> ++my $try_EAGAIN = ($^O eq 'linux' and $Config{archname} =~ /hppa|parisc/) ? 1 : 0;
> ++my $EAGAIN = eval { EAGAIN() };
> ++
> + my ($self_fh, $self_fh2);
> +
> + eval {
> +@@ -55,7 +59,11 @@ eval {
> +     $return = flock($self_fh2, LOCK_EX | LOCK_NB);
> + };
> +
> +-is($!+0, $EWOULDBLOCK, "Double-flocking should be EWOULDBLOCK");
> ++if (!$try_EAGAIN) {
> ++    is($!+0, $EWOULDBLOCK, "Double-flocking should be EWOULDBLOCK");
> ++} else {
> ++    ok($!+0 == $EWOULDBLOCK || $!+0 == $EAGAIN, "Double-flocking should be EWOULDBLOCK or EAGAIN");
> ++}
> + ok(!$return, "flocking a file twice should fail");
> + is($@, "", "Non-blocking flock should not fail on EWOULDBLOCK");
> +
> +--
> +tg: (c823880..) fixes/autodie-flock (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff
> new file mode 100644
> index 0000000..6feb840
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff
> @@ -0,0 +1,37 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Fix stack pointer corruption in pp_concat() with 'use encoding'
> +Bug-Debian: http://bugs.debian.org/596105
> +Bug: http://rt.perl.org/rt3/Ticket/Display.html?id=78674
> +Origin: upstream, http://perl5.git.perl.org/perl.git/commit/e3393f51d48d8b790e26324eb0336fac9689fa46
> +
> +If the stack is reallocated during pp_concat() and 'use encoding' in
> +effect, the stack pointer gets corrupted, causing memory allocation bugs
> +and the like.
> +
> +---
> + pp_hot.c |    3 +++
> + 1 files changed, 3 insertions(+), 0 deletions(-)
> +
> +diff --git a/pp_hot.c b/pp_hot.c
> +index 3371e88..e9cccf3 100644
> +--- a/pp_hot.c
> ++++ b/pp_hot.c
> +@@ -271,6 +271,8 @@ PP(pp_concat)
> + 	rbyte = !DO_UTF8(right);
> +     }
> +     if (lbyte != rbyte) {
> ++	/* sv_utf8_upgrade_nomg() may reallocate the stack */
> ++	PUTBACK;
> + 	if (lbyte)
> + 	    sv_utf8_upgrade_nomg(TARG);
> + 	else {
> +@@ -279,6 +281,7 @@ PP(pp_concat)
> + 	    sv_utf8_upgrade_nomg(right);
> + 	    rpv = SvPV_const(right, rlen);
> + 	}
> ++	SPAGAIN;
> +     }
> +     sv_catpvn_nomg(TARG, rpv, rlen);
> +
> +--
> +tg: (c823880..) fixes/concat-stack-corruption (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff
> new file mode 100644
> index 0000000..5f85894
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff
> @@ -0,0 +1,30 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Fix CPANPLUS test failures when HOME doesn't exist
> +Bug: http://rt.cpan.org/Public/Bug/Display.html?id=52988
> +Bug-Debian: http://bugs.debian.org/577011
> +Origin: upstream
> +
> +The Debian autobuilders are configured with a non-existing $ENV{HOME},
> +triggering a bug in CPANPLUS that causes test failures.
> +
> +Fix from CPANPLUS-0.9001.
> +
> +---
> + cpan/CPANPLUS/lib/CPANPLUS/Internals/Utils.pm |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +diff --git a/cpan/CPANPLUS/lib/CPANPLUS/Internals/Utils.pm b/cpan/CPANPLUS/lib/CPANPLUS/Internals/Utils.pm
> +index 27d2abc..8475c36 100644
> +--- a/cpan/CPANPLUS/lib/CPANPLUS/Internals/Utils.pm
> ++++ b/cpan/CPANPLUS/lib/CPANPLUS/Internals/Utils.pm
> +@@ -5,7 +5,7 @@ use strict;
> + use CPANPLUS::Error;
> + use CPANPLUS::Internals::Constants;
> +
> +-use Cwd qw[chdir];
> ++use Cwd                         qw[chdir cwd];
> + use File::Copy;
> + use Params::Check               qw[check];
> + use Module::Load::Conditional   qw[can_load];
> +--
> +tg: (c823880..) fixes/cpanplus-without-home (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff
> new file mode 100644
> index 0000000..c2baf2f
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff
> @@ -0,0 +1,106 @@
> +Author: Robin Barker<rmbarker@cpan.org>
> +Subject: h2ph fix for gcc 4.5
> +Bug-Debian: http://bugs.debian.org/599933
> +Origin: upstream, http://perl5.git.perl.org/perl.git/commit/8d66b3f930dc6d88b524d103e304308ae73a46e7
> +
> +Fix h2ph and test. Needed to build with GCC 4.5.
> +
> +
> +---
> + lib/h2ph.t    |   12 ++++++++++--
> + utils/h2ph.PL |   28 +++++++++++++++++++++++-----
> + 2 files changed, 33 insertions(+), 7 deletions(-)
> +
> +diff --git a/lib/h2ph.t b/lib/h2ph.t
> +index 27dd7b9..8d62d46 100755
> +--- a/lib/h2ph.t
> ++++ b/lib/h2ph.t
> +@@ -18,7 +18,7 @@ if (!(-e $extracted_program)) {
> +     exit 0;
> + }
> +
> +-plan(4);
> ++plan(5);
> +
> + # quickly compare two text files
> + sub txt_compare {
> +@@ -41,8 +41,16 @@ $result = runperl( progfile =>  'lib/h2ph.pht',
> +                    stderr =>  1 );
> + like( $result, qr/syntax OK$/, "output compiles");
> +
> ++$result = runperl( progfile =>  '_h2ph_pre.ph',
> ++                   switches =>  ['-c'],
> ++                   stderr =>  1 );
> ++like( $result, qr/syntax OK$/, "preamble compiles");
> ++
> + $result = runperl( switches =>  ["-w"],
> +-                   prog =>  '$SIG{__WARN__} = sub { die $_[0] }; require q(lib/h2ph.pht);');
> ++                   stderr =>  1,
> ++                   prog =>  <<'PROG' );
> ++$SIG{__WARN__} = sub { die $_[0] }; require q(lib/h2ph.pht);
> ++PROG
> + is( $result, '', "output free of warnings" );
> +
> + # cleanup
> +diff --git a/utils/h2ph.PL b/utils/h2ph.PL
> +index 8f56db4..1255807 100644
> +--- a/utils/h2ph.PL
> ++++ b/utils/h2ph.PL
> +@@ -401,7 +401,10 @@ if ($opt_e&&  (scalar(keys %bad_file)>  0)) {
> + exit $Exit;
> +
> + sub expr {
> +-    $new = '"(assembly code)"' and return if /\b__asm__\b/; # freak out.
> ++    if (/\b__asm__\b/) {	# freak out
> ++	$new = '"(assembly code)"';
> ++	return
> ++    }
> +     my $joined_args;
> +     if(keys(%curargs)) {
> + 	$joined_args = join('|', keys(%curargs));
> +@@ -770,7 +773,7 @@ sub inc_dirs
> + sub build_preamble_if_necessary
> + {
> +     # Increment $VERSION every time this function is modified:
> +-    my $VERSION     = 2;
> ++    my $VERSION     = 3;
> +     my $preamble    = "$Dest_dir/_h2ph_pre.ph";
> +
> +     # Can we skip building the preamble file?
> +@@ -798,7 +801,16 @@ sub build_preamble_if_necessary
> + 		# parenthesized value:  d=(v)
> + 		$define{$_} = $1;
> + 	    }
> +-	    if ($define{$_} =~ /^([+-]?(\d+)?\.\d+([eE][+-]?\d+)?)[FL]?$/) {
> ++	    if (/^(\w+)\((\w)\)$/) {
> ++		my($macro, $arg) = ($1, $2);
> ++		my $def = $define{$_};
> ++		$def =~ s/$arg/\$\{$arg\}/g;
> ++		print PREAMBLE<<DEFINE;
> ++unless (defined&$macro) { sub $macro(\$) { my (\$$arg) = \@_; \"$def\" } }
> ++
> ++DEFINE
> ++	    } elsif
> ++		($define{$_} =~ /^([+-]?(\d+)?\.\d+([eE][+-]?\d+)?)[FL]?$/) {
> + 		# float:
> + 		print PREAMBLE
> + 		    "unless (defined&$_) { sub $_() { $1 } }\n\n";
> +@@ -807,8 +819,14 @@ sub build_preamble_if_necessary
> + 		print PREAMBLE
> + 		    "unless (defined&$_) { sub $_() { $1 } }\n\n";
> + 	    } elsif ($define{$_} =~ /^\w+$/) {
> +-		print PREAMBLE
> +-		    "unless (defined&$_) { sub $_() {&$define{$_} } }\n\n";
> ++		my $def = $define{$_};
> ++		if ($isatype{$def}) {
> ++		  print PREAMBLE
> ++		    "unless (defined&$_) { sub $_() { \"$def\" } }\n\n";
> ++		} else {
> ++		  print PREAMBLE
> ++		    "unless (defined&$_) { sub $_() {&$def } }\n\n";
> ++	        }
> + 	    } else {
> + 		print PREAMBLE
> + 		    "unless (defined&$_) { sub $_() { \"",
> +--
> +tg: (c823880..) fixes/h2ph-gcc-4.5 (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff
> new file mode 100644
> index 0000000..b9ea677
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff
> @@ -0,0 +1,26 @@
> +Author: Samuel Thibault<sthibault@debian.org>
> +Subject: Make hints/gnu.sh append to $ccflags rather than overriding them
> +Bug-Debian: http://bugs.debian.org/587901
> +
> +Don't override possible extra $ccflags values given to Configure
> +on GNU/Hurd.
> +
> +---
> + hints/gnu.sh |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +diff --git a/hints/gnu.sh b/hints/gnu.sh
> +index 2cfce54..c1ba2db 100644
> +--- a/hints/gnu.sh
> ++++ b/hints/gnu.sh
> +@@ -19,7 +19,7 @@ lddlflags='-shared'
> + ccdlflags='-Wl,-E'
> +
> + # Debian bug #258618
> +-ccflags='-D_GNU_SOURCE'
> ++ccflags="-D_GNU_SOURCE $ccflags"
> +
> + # The following routines are only available as stubs in GNU libc.
> + # XXX remove this once metaconf detects the GNU libc stubs.
> +--
> +tg: (c823880..) fixes/hurd-ccflags (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff
> new file mode 100644
> index 0000000..bb5c0e8
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff
> @@ -0,0 +1,95 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: LC_NUMERIC documentation fixes
> +Bug-Debian: http://bugs.debian.org/379329
> +Bug: http://rt.perl.org/rt3/Ticket/Display.html?id=78452
> +Origin: upstream, http://perl5.git.perl.org/perl.git/commit/903eb63f7d8d47a38971a8e9af7201b9927882cf
> +
> +LC_NUMERIC documentation updates fixing two errors:
> +
> +    - the early parts of perllocale.pod still say printf() uses LC_NUMERIC
> +      with just 'use locale' when actually a POSIX::setlocale() call is
> +      also needed
> +
> +    - format() hasn't used LC_NUMERIC unconditionally since 5.005_03
> +      (commit 097ee67dff1c60f201bc09435bc6eaeeafcd8123).
> +
> +Test cases from the upstream commit dropped for the sake of simplicity.
> +
> +---
> + pod/perlform.pod   |   20 ++++++++------------
> + pod/perllocale.pod |   15 ++++++---------
> + 2 files changed, 14 insertions(+), 21 deletions(-)
> +
> +diff --git a/pod/perlform.pod b/pod/perlform.pod
> +index 3cfa1b7..df0f0a1 100644
> +--- a/pod/perlform.pod
> ++++ b/pod/perlform.pod
> +@@ -166,9 +166,9 @@ token on the first line.  If an expression evaluates to a number with a
> + decimal part, and if the corresponding picture specifies that the decimal
> + part should appear in the output (that is, any picture except multiple "#"
> + characters B<without>  an embedded "."), the character used for the decimal
> +-point is B<always>  determined by the current LC_NUMERIC locale.  This
> +-means that, if, for example, the run-time environment happens to specify a
> +-German locale, "," will be used instead of the default ".".  See
> ++point is determined by the current LC_NUMERIC locale if C<use locale>  is in
> ++effect.  This means that, if, for example, the run-time environment happens
> ++to specify a German locale, "," will be used instead of the default ".".  See
> + L<perllocale>  and L<"WARNINGS">  for more information.
> +
> +
> +@@ -442,15 +442,11 @@ Lexical variables (declared with "my") are not visible within a
> + format unless the format is declared within the scope of the lexical
> + variable.  (They weren't visible at all before version 5.001.)
> +
> +-Formats are the only part of Perl that unconditionally use information
> +-from a program's locale; if a program's environment specifies an
> +-LC_NUMERIC locale, it is always used to specify the decimal point
> +-character in formatted output.  Perl ignores all other aspects of locale
> +-handling unless the C<use locale>  pragma is in effect.  Formatted output
> +-cannot be controlled by C<use locale>  because the pragma is tied to the
> +-block structure of the program, and, for historical reasons, formats
> +-exist outside that block structure.  See L<perllocale>  for further
> +-discussion of locale handling.
> ++If a program's environment specifies an LC_NUMERIC locale and C<use
> ++locale>  is in effect when the format is declared, the locale is used
> ++to specify the decimal point character in formatted output.  Formatted
> ++output cannot be controlled by C<use locale>  at the time when write()
> ++is called. See L<perllocale>  for further discussion of locale handling.
> +
> + Within strings that are to be displayed in a fixed length text field,
> + each control character is substituted by a space. (But remember the
> +diff --git a/pod/perllocale.pod b/pod/perllocale.pod
> +index 0dbabe7..0bec423 100644
> +--- a/pod/perllocale.pod
> ++++ b/pod/perllocale.pod
> +@@ -115,8 +115,7 @@ ucfirst(), and lcfirst()) use C<LC_CTYPE>
> +
> + =item *
> +
> +-B<The formatting functions>  (printf(), sprintf() and write()) use
> +-C<LC_NUMERIC>
> ++B<Format declarations>  (format()) use C<LC_NUMERIC>
> +
> + =item *
> +
> +@@ -967,13 +966,11 @@ system's implementation of the locale system than by Perl.
> +
> + =head2 write() and LC_NUMERIC
> +
> +-Formats are the only part of Perl that unconditionally use information
> +-from a program's locale; if a program's environment specifies an
> +-LC_NUMERIC locale, it is always used to specify the decimal point
> +-character in formatted output.  Formatted output cannot be controlled by
> +-C<use locale>  because the pragma is tied to the block structure of the
> +-program, and, for historical reasons, formats exist outside that block
> +-structure.
> ++If a program's environment specifies an LC_NUMERIC locale and C<use
> ++locale>  is in effect when the format is declared, the locale is used
> ++to specify the decimal point character in formatted output.  Formatted
> ++output cannot be controlled by C<use locale>  at the time when write()
> ++is called.
> +
> + =head2 Freely available locale definitions
> +
> +--
> +tg: (c823880..) fixes/lc-numeric-docs (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff
> new file mode 100644
> index 0000000..6a39820
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff
> @@ -0,0 +1,29 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Fix sprintf not to ignore LC_NUMERIC with constants
> +Bug-Debian: http://bugs.debian.org/601549
> +Bug: http://rt.perl.org/rt3/Ticket/Display.html?id=78632
> +Origin: upstream, http://perl5.git.perl.org/perl.git/commit/b3fd61496ebc585b1115807e3195f17714662a09
> +
> +Don't fold constants in sprintf() if locales are used
> +
> +An upstream regression in 5.10.1 made sprintf() ignore LC_NUMERIC for
> +numeric constants.
> +
> +---
> + op.c |    1 +
> + 1 files changed, 1 insertions(+), 0 deletions(-)
> +
> +diff --git a/op.c b/op.c
> +index e94f158..3c6badb 100644
> +--- a/op.c
> ++++ b/op.c
> +@@ -2503,6 +2503,7 @@ S_fold_constants(pTHX_ register OP *o)
> +     case OP_SLE:
> +     case OP_SGE:
> +     case OP_SCMP:
> ++    case OP_SPRINTF:
> + 	/* XXX what about the numeric ops? */
> + 	if (PL_hints&  HINT_LOCALE)
> + 	    goto nope;
> +--
> +tg: (c823880..) fixes/lc-numeric-sprintf (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff
> new file mode 100644
> index 0000000..6dc9712
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff
> @@ -0,0 +1,23 @@
> +Subject: Document the Net::SMTP 'Port' option
> +Bug-Debian: http://bugs.debian.org/100195
> +Bug: http://rt.cpan.org/Public/Bug/Display.html?id=36038
> +
> +
> +---
> + cpan/libnet/Net/SMTP.pm |    1 +
> + 1 files changed, 1 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/libnet/Net/SMTP.pm b/cpan/libnet/Net/SMTP.pm
> +index a28496d..07b2498 100644
> +--- a/cpan/libnet/Net/SMTP.pm
> ++++ b/cpan/libnet/Net/SMTP.pm
> +@@ -625,6 +625,7 @@ Net::SMTP will attempt to extract the address from the value passed.
> +
> + B<Debug>  - Enable debugging information
> +
> ++B<Port>  - Select a port on the remote host to connect to (default is 25)
> +
> + Example:
> +
> +--
> +tg: (c823880..) fixes/net_smtp_docs (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff
> new file mode 100644
> index 0000000..5a444e3
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff
> @@ -0,0 +1,43 @@
> +Subject: Always use PERLRUNINST when building perl modules.
> +Bug-Debian: http://bugs.debian.org/357264
> +Bug: http://rt.cpan.org/Public/Bug/Display.html?id=17224
> +
> +Revert part of upstream change 24524 to always use PERLRUNINST when
> +building perl modules:  Some PDL demos expect blib to be implicitly
> +searched.
> +
> +
> +---
> + cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm |    5 +----
> + 1 files changed, 1 insertions(+), 4 deletions(-)
> +
> +diff --git a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +index 239d6df..294d266 100644
> +--- a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> ++++ b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +@@ -3043,14 +3043,11 @@ sub processPL {
> + 	    # pm_to_blib depends on then it can't depend on pm_to_blib
> + 	    # else we have a dependency loop.
> + 	    my $pm_dep;
> +-	    my $perlrun;
> + 	    if( defined $self->{PM}{$target} ) {
> + 		$pm_dep  = '';
> +-		$perlrun = 'PERLRUN';
> + 	    }
> + 	    else {
> + 		$pm_dep  = 'pm_to_blib';
> +-		$perlrun = 'PERLRUNINST';
> + 	    }
> +
> +             $m .=<<MAKE_FRAG;
> +@@ -3059,7 +3056,7 @@ all :: $target
> + 	\$(NOECHO) \$(NOOP)
> +
> + $target :: $plfile $pm_dep
> +-	\$($perlrun) $plfile $target
> ++	\$(PERLRUNINST) $plfile $target
> + MAKE_FRAG
> +
> + 	}
> +--
> +tg: (c823880..) fixes/processPL (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff
> new file mode 100644
> index 0000000..5670863
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff
> @@ -0,0 +1,26 @@
> +Subject: Debian policy doesn't install .packlist files for core or vendor.
> +
> +
> +---
> + cpan/ExtUtils-MakeMaker/bin/instmodsh |    4 +++-
> + 1 files changed, 3 insertions(+), 1 deletions(-)
> +
> +diff --git a/cpan/ExtUtils-MakeMaker/bin/instmodsh b/cpan/ExtUtils-MakeMaker/bin/instmodsh
> +index 5874aa6..6a2f03e 100644
> +--- a/cpan/ExtUtils-MakeMaker/bin/instmodsh
> ++++ b/cpan/ExtUtils-MakeMaker/bin/instmodsh
> +@@ -18,9 +18,11 @@ instmodsh - A shell to examine installed modules
> +
> + =head1 DESCRIPTION
> +
> +-A little interface to ExtUtils::Installed to examine installed modules,
> ++A little interface to ExtUtils::Installed to examine locally* installed modules,
> + validate your packlists and even create a tarball from an installed module.
> +
> ++*On Debian system, B<core>  and B<vendor>  modules are managed by C<dpkg>.
> ++
> + =head1 SEE ALSO
> +
> + ExtUtils::Installed
> +--
> +tg: (c823880..) debian/instmodsh_doc (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff
> new file mode 100644
> index 0000000..ffcfab9
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff
> @@ -0,0 +1,23 @@
> +Subject: Remove standard libs from LD_RUN_PATH as per Debian policy.
> +
> +
> +---
> + .../ExtUtils-MakeMaker/lib/ExtUtils/Liblist/Kid.pm |    3 +++
> + 1 files changed, 3 insertions(+), 0 deletions(-)
> +
> +diff --git a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/Liblist/Kid.pm b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/Liblist/Kid.pm
> +index b807e97..6c955d7 100644
> +--- a/cpan/ExtUtils-MakeMaker/lib/ExtUtils/Liblist/Kid.pm
> ++++ b/cpan/ExtUtils-MakeMaker/lib/ExtUtils/Liblist/Kid.pm
> +@@ -53,6 +53,9 @@ sub _unix_os2_ext {
> +     my($pwd) = cwd(); # from Cwd.pm
> +     my($found) = 0;
> +
> ++    # Debian-specific: don't use LD_RUN_PATH for standard dirs
> ++    $ld_run_path_seen{$_}++ for qw(/lib /usr/lib /usr/X11R6/lib);
> ++
> +     foreach my $thislib (split ' ', $potential_libs) {
> +
> + 	# Handle possible linker path arguments.
> +--
> +tg: (c823880..) debian/ld_run_path (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff
> new file mode 100644
> index 0000000..41bca97
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff
> @@ -0,0 +1,35 @@
> +Subject: Set location of libnet.cfg to /etc/perl/Net as /usr may not be writable.
> +
> +
> +---
> + cpan/libnet/Net/Config.pm |    7 +++----
> + 1 files changed, 3 insertions(+), 4 deletions(-)
> +
> +diff --git a/cpan/libnet/Net/Config.pm b/cpan/libnet/Net/Config.pm
> +index db51c1f..8404593 100644
> +--- a/cpan/libnet/Net/Config.pm
> ++++ b/cpan/libnet/Net/Config.pm
> +@@ -57,9 +57,8 @@ my %nc = (
> + }
> + TRY_INTERNET_CONFIG
> +
> +-my $file = __FILE__;
> ++my $file = '/etc/perl/Net/libnet.cfg';
> + my $ref;
> +-$file =~ s/Config.pm/libnet.cfg/;
> + if (-f $file) {
> +   $ref = eval { local $SIG{__DIE__}; do $file };
> +   if (ref($ref) eq 'HASH') {
> +@@ -132,8 +131,8 @@ Net::Config - Local configuration data for libnet
> + C<Net::Config>  holds configuration data for the modules in the libnet
> + distribution. During installation you will be asked for these values.
> +
> +-The configuration data is held globally in a file in the perl installation
> +-tree, but a user may override any of these values by providing their own. This
> ++The configuration data is held globally in C</etc/perl/Net/libnet.cfg>,
> ++but a user may override any of these values by providing their own. This
> + can be done by having a C<.libnetrc>  file in their home directory. This file
> + should return a reference to a HASH containing the keys described below.
> + For example
> +--
> +tg: (c823880..) debian/libnet_config_path (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff
> new file mode 100644
> index 0000000..cda6089
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff
> @@ -0,0 +1,43 @@
> +Subject: Disable some threads tests on m68k for now due to missing TLS.
> +Closes: #495826, #517938
> +
> +
> +---
> + dist/threads-shared/t/stress.t    |    4 ++++
> + dist/threads-shared/t/waithires.t |    6 ++++++
> + 2 files changed, 10 insertions(+), 0 deletions(-)
> +
> +diff --git a/dist/threads-shared/t/stress.t b/dist/threads-shared/t/stress.t
> +index adfd1ed..8573f1a 100755
> +--- a/dist/threads-shared/t/stress.t
> ++++ b/dist/threads-shared/t/stress.t
> +@@ -11,6 +11,10 @@ BEGIN {
> +         print("1..0 # SKIP Broken under HP-UX 10.20\n");
> +         exit(0);
> +     }
> ++    if ($^O eq 'linux'&&  $Config{archname} =~ /^m68k/) {
> ++        print("1..0 # Skip: no TLS on m68k yet<http://bugs.debian.org/495826>\n");
> ++        exit(0);
> ++    }
> + }
> +
> + use ExtUtils::testlib;
> +diff --git a/dist/threads-shared/t/waithires.t b/dist/threads-shared/t/waithires.t
> +index e3a1086..633374e 100755
> +--- a/dist/threads-shared/t/waithires.t
> ++++ b/dist/threads-shared/t/waithires.t
> +@@ -16,6 +16,12 @@ BEGIN {
> +     if (! eval 'use Time::HiRes "time"; 1') {
> +         Test::skip_all('Time::HiRes not available');
> +     }
> ++
> ++    if ($^O eq 'linux'&&  $Config{archname} =~ /^m68k/) {
> ++        print("1..0 # Skip: no TLS on m68k yet<http://bugs.debian.org/495826>\n");
> ++        exit(0);
> ++    }
> ++
> + }
> +
> + use ExtUtils::testlib;
> +--
> +tg: (c823880..) debian/m68k_thread_stress (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/53_debian_mod_paths.patch b/meta/recipes-devtools/perl/perl-5.12.2/debian/mod_paths.diff
> similarity index 59%
> rename from meta/recipes-devtools/perl/perl-5.8.8/53_debian_mod_paths.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/debian/mod_paths.diff
> index df74bc5..bfa4721 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/53_debian_mod_paths.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/mod_paths.diff
> @@ -1,4 +1,6 @@
> -Tweak @INC so that the ordering is:
> +Subject: Tweak @INC ordering for Debian
> +
> +Our order is:
>
>       etc (for config files)
>       site (5.8.1)
> @@ -11,49 +13,36 @@ The rationale being that an admin (via site), or module packager
>   (vendor) can chose to shadow core modules when there is a newer
>   version than is included in core.
>
> -diff -Naur --exclude=debian perl-5.8.8.orig/perl.c perl-5.8.8/perl.c
> ---- perl-5.8.8.orig/perl.c	2006-01-31 23:34:47.000000000 +1100
> -+++ perl-5.8.8/perl.c	2006-02-02 23:36:38.000000000 +1100
> -@@ -4776,9 +4776,14 @@
> -     incpush(APPLLIB_EXP, TRUE, TRUE, TRUE);
> +
> +---
> + perl.c |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> + 1 files changed, 58 insertions(+), 0 deletions(-)
> +
> +diff --git a/perl.c b/perl.c
> +index 05cea40..023d6a0 100644
> +--- a/perl.c
> ++++ b/perl.c
> +@@ -4125,6 +4125,11 @@ S_init_perllib(pTHX)
> + 		      INCPUSH_ADD_SUB_DIRS|INCPUSH_CAN_RELOCATE);
>    #endif
>
> -+#if 1
> ++#ifdef DEBIAN
>   +    /* for configuration where /usr is mounted ro (CPAN::Config, Net::Config) */
> -+    incpush("/etc/perl", FALSE, FALSE, FALSE);
> -+#else
> - #ifdef ARCHLIB_EXP
> -     incpush(ARCHLIB_EXP, FALSE, FALSE, TRUE);
> - #endif
> ++    S_incpush_use_sep(aTHX_ STR_WITH_LEN("/etc/perl"), 0x0);
>   +#endif
> - #ifdef MACOS_TRADITIONAL
> -     {
> - 	Stat_t tmpstatbuf;
> -@@ -4803,11 +4808,13 @@
> - #ifndef PRIVLIB_EXP
> - #  define PRIVLIB_EXP "/usr/local/lib/perl5:/usr/local/lib/perl"
> - #endif
> -+#if 0
> - #if defined(WIN32)
> -     incpush(PRIVLIB_EXP, TRUE, FALSE, TRUE);
> - #else
> -     incpush(PRIVLIB_EXP, FALSE, FALSE, TRUE);
> - #endif
> -+#endif
> -
> ++
>    #ifdef SITEARCH_EXP
>        /* sitearch is always relative to sitelib on Windows for
> -@@ -4850,6 +4857,61 @@
> -     incpush(PERL_VENDORLIB_STEM, FALSE, TRUE, TRUE);
> +      * DLL-based path intuition to work correctly */
> +@@ -4242,6 +4247,59 @@ S_init_perllib(pTHX)
> + 		      INCPUSH_ADD_OLD_VERS|INCPUSH_CAN_RELOCATE);
>    #endif
>
> -+#if 1
> -+    incpush(ARCHLIB_EXP, FALSE, FALSE, TRUE);
> -+    incpush(PRIVLIB_EXP, FALSE, FALSE, TRUE);
> -+
> ++#ifdef DEBIAN
>   +    /* Non-versioned site directory for local modules and for
>   +       compatability with the previous packages' site dirs */
> -+    incpush("/usr/local/lib/site_perl", TRUE, FALSE, FALSE);
> ++    S_incpush_use_sep(aTHX_ STR_WITH_LEN("/usr/local/lib/site_perl"),
> ++		      INCPUSH_ADD_SUB_DIRS);
>   +
>   +#ifdef PERL_INC_VERSION_LIST
>   +    {
> @@ -88,14 +77,14 @@ diff -Naur --exclude=debian perl-5.8.8.orig/perl.c perl-5.8.8/perl.c
>   +	    {
>   +		strcpy(arch_vers, *p);
>   +		if (PerlLIO_stat(sitearch,&s)>= 0&&  S_ISDIR(s.st_mode))
> -+		    incpush(sitearch, FALSE, FALSE, FALSE);
> ++		    S_incpush_use_sep(aTHX_ sitearch, strlen(sitearch), 0x0);
>   +	    }
>   +
>   +	    if (lib_vers)
>   +	    {
>   +		strcpy(lib_vers, *p);
>   +		if (PerlLIO_stat(sitelib,&s)>= 0&&  S_ISDIR(s.st_mode))
> -+		    incpush(sitelib, FALSE, FALSE, FALSE);
> ++		    S_incpush_use_sep(aTHX_ sitelib, strlen(sitelib), 0x0);
>   +	    }
>   +	}
>   +    }
> @@ -103,5 +92,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/perl.c perl-5.8.8/perl.c
>   +#endif
>   +
>    #ifdef PERL_OTHERLIBDIRS
> -     incpush(PERL_OTHERLIBDIRS, TRUE, TRUE, TRUE);
> - #endif
> +     S_incpush_use_sep(aTHX_ STR_WITH_LEN(PERL_OTHERLIBDIRS),
> + 		      INCPUSH_ADD_OLD_VERS|INCPUSH_ADD_ARCHONLY_SUB_DIRS
> +--
> +tg: (c823880..) debian/mod_paths (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff
> new file mode 100644
> index 0000000..320a90d
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff
> @@ -0,0 +1,31 @@
> +Subject: Adjust Module::Build manual page extensions for the Debian Perl policy
> +Bug-Debian: http://bugs.debian.org/479460
> +
> +---
> + cpan/Module-Build/lib/Module/Build/Base.pm |    4 ++--
> + 1 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/cpan/Module-Build/lib/Module/Build/Base.pm b/cpan/Module-Build/lib/Module/Build/Base.pm
> +index 5bd8ec7..b4e606a 100644
> +--- a/cpan/Module-Build/lib/Module/Build/Base.pm
> ++++ b/cpan/Module-Build/lib/Module/Build/Base.pm
> +@@ -3071,7 +3071,7 @@ sub manify_bin_pods {
> +   foreach my $file (keys %$files) {
> +     # Pod::Simple based parsers only support one document per instance.
> +     # This is expected to change in a future version (Pod::Simple>  3.03).
> +-    my $parser  = Pod::Man->new( section =>  1 ); # binaries go in section 1
> ++    my $parser  = Pod::Man->new( section =>  '1p' ); # binaries go in section 1p
> +     my $manpage = $self->man1page_name( $file ) . '.' .
> + 	          $self->config( 'man1ext' );
> +     my $outfile = File::Spec->catfile($mandir, $manpage);
> +@@ -3096,7 +3096,7 @@ sub manify_lib_pods {
> +   while (my ($file, $relfile) = each %$files) {
> +     # Pod::Simple based parsers only support one document per instance.
> +     # This is expected to change in a future version (Pod::Simple>  3.03).
> +-    my $parser  = Pod::Man->new( section =>  3 ); # libraries go in section 3
> ++    my $parser  = Pod::Man->new( section =>  '3pm' ); # libraries go in section 3pm
> +     my $manpage = $self->man3page_name( $relfile ) . '.' .
> + 	          $self->config( 'man3ext' );
> +     my $outfile = File::Spec->catfile( $mandir, $manpage);
> +--
> +tg: (c823880..) debian/module_build_man_extensions (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff
> new file mode 100644
> index 0000000..c63c1e8
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff
> @@ -0,0 +1,38 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Make perlivp skip include directories in /usr/local
> +Closes: 510895
> +
> +On Sat, Jan 10, 2009 at 12:37:18AM +1100, Brendan O'Dea wrote:
> +>  On Wed, Jan 7, 2009 at 12:21 AM, Niko Tyni<ntyni@debian.org>  wrote:
> +
> +>  >  We could create the directories in a postinst script, but I'm not sure
> +>  >  I see the point. They will be created automatically when installing
> +>  >  CPAN modules.
> +>
> +>  The directories are intentionally not created, as this way they are
> +>  excluded from the search path at start-up, saving a bunch of wasted
> +>  stats at use/require time in the common case that the user has not
> +>  installed any local packages.  As Niko points out, they will be
> +>  created as required.
> +
> +
> +Signed-off-by: Niko Tyni<ntyni@debian.org>
> +
> +---
> + utils/perlivp.PL |    1 +
> + 1 files changed, 1 insertions(+), 0 deletions(-)
> +
> +diff --git a/utils/perlivp.PL b/utils/perlivp.PL
> +index 9783261..156146f 100644
> +--- a/utils/perlivp.PL
> ++++ b/utils/perlivp.PL
> +@@ -142,6 +142,7 @@ my $INC_total = 0;
> + my $INC_there = 0;
> + foreach (@INC) {
> +     next if $_ eq '.'; # skip -d test here
> ++    next if m|/usr/local|; # not shipped on Debian
> +     if ($^O eq 'MacOS') {
> +         next if $_ eq ':'; # skip -d test here
> +         next if $_ eq 'Dev:Pseudo:'; # why is this in @INC?
> +--
> +tg: (c823880..) debian/perlivp (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff
> new file mode 100644
> index 0000000..4d73717
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff
> @@ -0,0 +1,36 @@
> +Subject: Prune the list of libraries wanted to what we actually need.
> +Bug-Debian: http://bugs.debian.org/128355
> +
> +We want to keep the dependencies on perl-base as small as possible,
> +and some of the original list may be present on buildds (see Bug#128355).
> +
> +
> +---
> + Configure |    5 ++---
> + 1 files changed, 2 insertions(+), 3 deletions(-)
> +
> +diff --git a/Configure b/Configure
> +index 3a8732b..6013c86 100755
> +--- a/Configure
> ++++ b/Configure
> +@@ -1363,8 +1363,7 @@ libswanted_uselargefiles=''
> + : set usesocks on the Configure command line to enable socks.
> + : List of libraries we want.
> + : If anyone needs extra -lxxx, put those in a hint file.
> +-libswanted="sfio socket bind inet nsl nm ndbm gdbm dbm db malloc dl dld ld sun"
> +-libswanted="$libswanted m crypt sec util c cposix posix ucb bsd BSD"
> ++libswanted='gdbm gdbm_compat db dl m c crypt'
> + : We probably want to search /usr/shlib before most other libraries.
> + : This is only used by the lib/ExtUtils/MakeMaker.pm routine extliblist.
> + glibpth=`echo " $glibpth " | sed -e 's! /usr/shlib ! !'`
> +@@ -22179,7 +22178,7 @@ sunos*X4*)
> +     ;;
> + *) case "$usedl" in
> +     $define|true|[yY]*)
> +-	    set X `echo " $libs " | sed -e 's@ -lndbm @ @' -e 's@ -lgdbm @ @' -e 's@ -lgdbm_compat @ @' -e 's@ -ldbm @ @' -e 's@ -ldb @ @'`
> ++	    set X `echo " $libs " | sed -e 's@ -lgdbm @ @' -e 's@ -lgdbm_compat @ @' -e 's@ -ldb @ @'`
> + 	    shift
> + 	    perllibs="$*"
> + 	    ;;
> +--
> +tg: (c823880..) debian/prune_libs (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff b/meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff
> new file mode 100644
> index 0000000..091dec4
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff
> @@ -0,0 +1,53 @@
> +From: Niko Tyni<ntyni@debian.org>
> +Subject: Squelch locale warnings in Debian package maintainer scripts
> +Bug-Debian: http://bugs.debian.org/508764
> +
> +The system locales are rather frequently out of sync with the C library
> +during package upgrades, causing a huge amount of useless Perl locale
> +warnings. Squelch them when running package maintainer scripts, detected
> +by the DPKG_RUNNING_VERSION environment variable.
> +
> +Any real locale problem will show up after the system upgrade too, and
> +the warning will be triggered normally again at that point.
> +
> +---
> + locale.c           |    4 ++++
> + pod/perllocale.pod |    8 ++++++++
> + 2 files changed, 12 insertions(+), 0 deletions(-)
> +
> +diff --git a/locale.c b/locale.c
> +index 16ccce8..2592b3c 100644
> +--- a/locale.c
> ++++ b/locale.c
> +@@ -359,6 +359,10 @@ Perl_init_i18nl10n(pTHX_ int printwarn)
> + 	char *p;
> + 	const bool locwarn = (printwarn>  1 ||
> + 			(printwarn&&
> ++
> ++			 /* Debian specific change - see http://bugs.debian.org/508764 */
> ++			 (!PerlEnv_getenv("DPKG_RUNNING_VERSION"))&&
> ++
> + 			 (!(p = PerlEnv_getenv("PERL_BADLANG")) || atoi(p))));
> +
> + 	if (locwarn) {
> +diff --git a/pod/perllocale.pod b/pod/perllocale.pod
> +index 0dbabe7..60b7bab 100644
> +--- a/pod/perllocale.pod
> ++++ b/pod/perllocale.pod
> +@@ -844,6 +844,14 @@ B<NOTE>: PERL_BADLANG only gives you a way to hide the warning message.
> + The message tells about some problem in your system's locale support,
> + and you should investigate what the problem is.
> +
> ++=item DPKG_RUNNING_VERSION
> ++
> ++On Debian systems, if the DPKG_RUNNING_VERSION environment variable is
> ++set (to any value), the locale failure warnings will be suppressed just
> ++like with a zero PERL_BADLANG setting. This is done to avoid floods
> ++of spurious warnings during system upgrades.
> ++See L<http://bugs.debian.org/508764>.
> ++
> + =back
> +
> + The following environment variables are not specific to Perl: They are
> +--
> +tg: (c823880..) debian/squelch-locale-warnings (depends on: upstream)
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/generate-sh.patch b/meta/recipes-devtools/perl/perl-5.12.2/generate-sh.patch
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/generate-sh.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/generate-sh.patch
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/installperl.patch b/meta/recipes-devtools/perl/perl-5.12.2/installperl.patch
> similarity index 57%
> rename from meta/recipes-devtools/perl/perl-5.8.8/installperl.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/installperl.patch
> index ff52bc3..d20961c 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/installperl.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/installperl.patch
> @@ -1,7 +1,7 @@
> -Index: perl-5.8.8/installperl
> +Index: perl-5.12.2/installperl
>   ===================================================================
> ---- perl-5.8.8.orig/installperl	2007-06-14 12:36:23.000000000 +1000
> -+++ perl-5.8.8/installperl	2007-06-14 12:38:39.000000000 +1000
> +--- perl-5.12.2.orig/installperl
> ++++ perl-5.12.2/installperl
>   @@ -3,8 +3,8 @@
>    BEGIN {
>        require 5.004;
> @@ -10,6 +10,6 @@ Index: perl-5.8.8/installperl
>   -    $ENV{PERL5LIB} = 'lib';
>   +#    @INC = 'lib';
>   +#    $ENV{PERL5LIB} = 'lib';
> - }
>
> - use strict;
> +     # This needs to be at BEGIN time, before any use of Config
> +     require './install_lib.pl';
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/native-nopacklist.patch b/meta/recipes-devtools/perl/perl-5.12.2/native-nopacklist.patch
> similarity index 76%
> rename from meta/recipes-devtools/perl/perl-5.8.8/native-nopacklist.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/native-nopacklist.patch
> index a0ba269..92b02d4 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/native-nopacklist.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/native-nopacklist.patch
> @@ -1,34 +1,31 @@
>   Part of 52_debian_extutils_hacks.patch just to exclude the installation of .packlist files
>
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/lib/ExtUtils/MM_Unix.pm
> ---- perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm	2005-05-21 19:42:56.000000000 +1000
> -+++ perl-5.8.8/lib/ExtUtils/MM_Unix.pm	2006-02-05 17:40:19.000000000 +1100
> -@@ -2054,9 +2054,7 @@
> - 	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site
> +Index: perl-5.12.2/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +===================================================================
> +--- perl-5.12.2.orig/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> ++++ perl-5.12.2/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
> +@@ -2047,8 +2047,6 @@ doc__install : doc_site_install
>
> - pure_perl_install ::
> --	$(NOECHO) $(MOD_INSTALL) \
> + pure_perl_install :: all
> + 	$(NOECHO) $(MOD_INSTALL) \
>   -		read }.$self->catfile('$(PERL_ARCHLIB)','auto','$(FULLEXT)','.packlist').q{ \
>   -		write }.$self->catfile('$(DESTINSTALLARCHLIB)','auto','$(FULLEXT)','.packlist').q{ \
> -+	$(NOECHO) $(MOD_INSTALL) \
>    		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
>    		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
>    		$(INST_BIN) $(DESTINSTALLBIN) \
> -@@ -2081,9 +2079,7 @@
> - 		}.$self->catdir('$(PERL_ARCHLIB)','auto','$(FULLEXT)').q{
> +@@ -2074,8 +2072,6 @@ pure_site_install :: all
>
> - pure_vendor_install ::
> --	$(NOECHO) $(MOD_INSTALL) \
> + pure_vendor_install :: all
> + 	$(NOECHO) $(MOD_INSTALL) \
>   -		read }.$self->catfile('$(VENDORARCHEXP)','auto','$(FULLEXT)','.packlist').q{ \
>   -		write }.$self->catfile('$(DESTINSTALLVENDORARCH)','auto','$(FULLEXT)','.packlist').q{ \
> -+	$(NOECHO) $(MOD_INSTALL) \
>    		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
>    		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
>    		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
> -@@ -2092,37 +2088,19 @@
> +@@ -2084,37 +2080,19 @@ pure_vendor_install :: all
>    		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)
>
> - doc_perl_install ::
> + doc_perl_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
>   -	-$(NOECHO) $(DOC_INSTALL) \
> @@ -39,13 +36,12 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>   -		EXE_FILES "$(EXE_FILES)" \
>   -		>>  }.$self->catfile('$(DESTINSTALLARCHLIB)','perllocal.pod').q{
>
> - doc_site_install ::
> + doc_site_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
> --	-$(NOECHO) $(DOC_INSTALL) \
>   +	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLSITEARCH)/perllocal.pod
>   +	-$(NOECHO) $(MKPATH) $(DESTINSTALLSITEARCH)
> -+	-$(NOECHO) $(DOC_INSTALL) \
> + 	-$(NOECHO) $(DOC_INSTALL) \
>    		"Module" "$(NAME)" \
>    		"installed into" "$(INSTALLSITELIB)" \
>    		LINKTYPE "$(LINKTYPE)" \
> @@ -54,7 +50,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>   -		>>  }.$self->catfile('$(DESTINSTALLARCHLIB)','perllocal.pod').q{
>   +		>>  }.$self->catfile('$(DESTINSTALLSITEARCH)','perllocal.pod').q{
>
> - doc_vendor_install ::
> + doc_vendor_install :: all
>   -	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
>   -	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
>   -	-$(NOECHO) $(DOC_INSTALL) \
> @@ -67,7 +63,7 @@ diff -Naur --exclude=debian perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm perl-5.8.8/l
>
>    };
>
> -@@ -2131,13 +2109,12 @@
> +@@ -2123,13 +2101,12 @@ uninstall :: uninstall_from_$(INSTALLDIR
>    	$(NOECHO) $(NOOP)
>
>    uninstall_from_perldirs ::
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/native-perlinc.patch b/meta/recipes-devtools/perl/perl-5.12.2/native-perlinc.patch
> similarity index 80%
> rename from meta/recipes-devtools/perl/perl-5.8.8/native-perlinc.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/native-perlinc.patch
> index 6dc4b95..bf145ba 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/native-perlinc.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/native-perlinc.patch
> @@ -1,7 +1,7 @@
>   Index: perl-5.8.8/lib/ExtUtils/MM_Unix.pm
>   ===================================================================
> ---- perl-5.8.8.orig/lib/ExtUtils/MM_Unix.pm	2008-10-31 22:01:35.000000000 +0000
> -+++ perl-5.8.8/lib/ExtUtils/MM_Unix.pm	2008-11-08 16:01:12.000000000 +0000
> +--- perl-5.12.2.orig/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm	2008-10-31 22:01:35.000000000 +0000
> ++++ perl-5.12.2/cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm	2008-10-31 22:01:35.000000000 +0000
>   @@ -1597,6 +1597,19 @@
>    	$self->{PERL_LIB}     ||= $Config{privlibexp};
>    	$self->{PERL_ARCHLIB} ||= $Config{archlibexp};
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/native-ssp.patch b/meta/recipes-devtools/perl/perl-5.12.2/native-ssp.patch
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/native-ssp.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/native-ssp.patch
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/perl-configpm-switch.patch b/meta/recipes-devtools/perl/perl-5.12.2/perl-configpm-switch.patch
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/perl-configpm-switch.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/perl-configpm-switch.patch
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/perl-configure.sh b/meta/recipes-devtools/perl/perl-5.12.2/perl-configure.sh
> similarity index 94%
> rename from meta/recipes-devtools/perl/perl-5.8.8/perl-configure.sh
> rename to meta/recipes-devtools/perl/perl-5.12.2/perl-configure.sh
> index 9800394..c29e966 100755
> --- a/meta/recipes-devtools/perl/perl-5.8.8/perl-configure.sh
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/perl-configure.sh
> @@ -1,4 +1,4 @@
> -ls#! /bin/sh
> +#! /bin/sh
>
>   #
>   # Generate the common perl configuration
> @@ -15,7 +15,7 @@ echo sh Configure -des \
>           -Dprefix=/usr \
>           -Dvendorprefix=/usr \
>           -Dsiteprefix=/usr \
> -        -Dotherlibdirs=/usr/lib/perl5/5.8.8 \
> +        -Dotherlibdirs=/usr/lib/perl5/5.12.2 \
>           -Duseshrplib \
>           -Dusethreads \
>           -Duseithreads \
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/perl-dynloader.patch b/meta/recipes-devtools/perl/perl-5.12.2/perl-dynloader.patch
> similarity index 87%
> rename from meta/recipes-devtools/perl/perl-5.8.8/perl-dynloader.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/perl-dynloader.patch
> index e2dc774..061a823 100644
> --- a/meta/recipes-devtools/perl/perl-5.8.8/perl-dynloader.patch
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/perl-dynloader.patch
> @@ -3,8 +3,8 @@ loading to be changed via an environment variable. This is to allow
>   us to load .so's from the host system while building for the target
>   system.
>
> ---- perl-5.8.8/ext/DynaLoader/XSLoader_pm.PL	2007/04/20 09:03:08	1.1
> -+++ perl-5.8.8/ext/DynaLoader/XSLoader_pm.PL	2007/04/20 09:41:28
> +--- perl-5.12.2/dist/XSLoader/XSLoader_pm.PL	2007/04/20 09:03:08	1.1
> ++++ perl-5.12.2/dist/XSLoader/XSLoader_pm.PL	2007/04/20 09:03:08
>   @@ -65,6 +65,15 @@
>    print OUT<<'EOT';
>        my $modpname = join('/',@modparts);
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch b/meta/recipes-devtools/perl/perl-5.12.2/perl-enable-gdbm.patch
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/perl-enable-gdbm.patch
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/perl-moreconfig.patch b/meta/recipes-devtools/perl/perl-5.12.2/perl-moreconfig.patch
> similarity index 100%
> rename from meta/recipes-devtools/perl/perl-5.8.8/perl-moreconfig.patch
> rename to meta/recipes-devtools/perl/perl-5.12.2/perl-moreconfig.patch
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch b/meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch
> deleted file mode 100644
> index f550537..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -Correctly identify arch-specific modules in ext/ where the .pm files
> -are under lib.
> -
> -Ensure that POSIX/SigAction is kept with the rest of the POSIX module
> -under archlib.
> -
> -diff --exclude=debian -Naur perl-5.8.8.orig/installperl perl-5.8.8/installperl
> ---- perl-5.8.8.orig/installperl	2006-01-29 02:35:28.000000000 +1100
> -+++ perl-5.8.8/installperl	2006-05-31 22:54:41.000000000 +1000
> -@@ -156,11 +156,8 @@
> -     if ("$File::Find::dir/$_" =~ m{^ext\b(.*)/([^/]+)\.pm$}) {
> - 	my($path, $modname) = ($1,$2);
> -
> --	# strip trailing component first
> --	$path =~ s{/[^/]*$}{};
> --
> --	# strip optional "/lib";
> --	$path =~ s{/lib\b}{};
> -+	# strip to optional "/lib", or remove trailing component
> -+	$path =~ s{.*/lib\b}{} or $path =~ s{/[^/]*$}{};
> -
> - 	# strip any leading /
> - 	$path =~ s{^/}{};
> -@@ -851,7 +848,7 @@
> -     }
> -
> -     if (-f $_) {
> --	if (/\.(?:al|ix)$/&&  !($dir =~ m[^auto/(.*)$]&&  $archpms{$1})) {
> -+	if (/\.(?:al|ix)$/&&  !($dir =~ m[^auto/(.*)$])) {
> - 	    $installlib = $installprivlib;
> - 	    #We're installing *.al and *.ix files into $installprivlib,
> - 	    #but we have to delete old *.al and *.ix files from the 5.000
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch b/meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch
> deleted file mode 100644
> index 432cd85..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -In a Debian installation, not all directories in @INC need exist (the
> -site directories for example are created on demand).
> -
> -Suggested by Joey Hess<joeyh@debian.org>.
> -
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/Pod/Perldoc.pm perl-5.8.8/lib/Pod/Perldoc.pm
> ---- perl-5.8.8.orig/lib/Pod/Perldoc.pm	2004-12-29 23:15:33.000000000 +1100
> -+++ perl-5.8.8/lib/Pod/Perldoc.pm	2006-02-02 23:38:49.000000000 +1100
> -@@ -1533,6 +1533,7 @@
> -     $self->{'target'} = (splitdir $s)[-1];  # XXX: why not use File::Basename?
> -     for ($i=0; $i<@dirs; $i++) {
> - 	$dir = $dirs[$i];
> -+	next unless -d $dir; # some dirs in @INC are optional
> - 	($dir = VMS::Filespec::unixpath($dir)) =~ s!/\z!! if IS_VMS;
> - 	if (       (! $self->opt_m&&  ( $ret = $self->check_file($dir,"$s.pod")))
> - 		or ( $ret = $self->check_file($dir,"$s.pm"))
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch b/meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch
> deleted file mode 100644
> index b38c70c..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -Set location of CPAN::Config to /etc/perl as /usr may not be writable.
> -
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/CPAN.pm perl-5.8.8/lib/CPAN.pm
> ---- perl-5.8.8.orig/lib/CPAN.pm	2006-02-01 01:11:22.000000000 +1100
> -+++ perl-5.8.8/lib/CPAN.pm	2006-02-02 23:49:26.000000000 +1100
> -@@ -1246,7 +1246,7 @@
> - 	$configpm = $INC{"CPAN/MyConfig.pm"};
> - 	$redo++;
> -     } else {
> --	my($path_to_cpan) = File::Basename::dirname($INC{"CPAN.pm"});
> -+	my($path_to_cpan) = '/etc/perl';
> - 	my($configpmdir) = File::Spec->catdir($path_to_cpan,"CPAN");
> - 	my($configpmtest) = File::Spec->catfile($configpmdir,"Config.pm");
> - 	if (-d $configpmdir or File::Path::mkpath($configpmdir)) {
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch b/meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch
> deleted file mode 100644
> index 7842ce1..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Set location of libnet.cfg to /etc/perl/Net as /usr may not be writable.
> -
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/Net/Config.pm perl-5.8.8/lib/Net/Config.pm
> ---- perl-5.8.8.orig/lib/Net/Config.pm	2002-03-01 01:04:31.000000000 +1100
> -+++ perl-5.8.8/lib/Net/Config.pm	2006-02-03 00:00:55.000000000 +1100
> -@@ -57,9 +57,8 @@
> - }
> - TRY_INTERNET_CONFIG
> -
> --my $file = __FILE__;
> -+my $file = '/etc/perl/Net/libnet.cfg';
> - my $ref;
> --$file =~ s/Config.pm/libnet.cfg/;
> - if ( -f $file ) {
> -     $ref = eval { local $SIG{__DIE__}; do $file };
> -     if (ref($ref) eq 'HASH') {
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch b/meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch
> deleted file mode 100644
> index 682061d..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Some modules which are included in core set INSTALLDIRS =>  'perl'
> -explicitly in Makefile.PL.  This makes sense for the normal @INC
> -ordering, but not ours.  Provide a sensible default.
> -
> -diff -Naur --exclude=debian perl-5.8.8.orig/lib/CPAN/FirstTime.pm perl-5.8.8/lib/CPAN/FirstTime.pm
> ---- perl-5.8.8.orig/lib/CPAN/FirstTime.pm	2006-01-31 08:08:57.000000000 +1100
> -+++ perl-5.8.8/lib/CPAN/FirstTime.pm	2006-02-03 00:05:24.000000000 +1100
> -@@ -358,7 +358,7 @@
> -
> - };
> -
> --    $default = $CPAN::Config->{makepl_arg} || "";
> -+    $default = $CPAN::Config->{makepl_arg} || "INSTALLDIRS=site";
> -     $CPAN::Config->{makepl_arg} =
> - 	prompt("Parameters for the 'perl Makefile.PL' command?
> - Typical frequently used settings:
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch b/meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch
> deleted file mode 100644
> index c207a93..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Tweak enc2xs to handle Debian @INC:  ignore missing directories,
> -follow symlinks (/usr/share/perl/5.8 ->  5.8.4).
> -
> -diff -Naur --exclude=debian perl-5.8.8.orig/ext/Encode/bin/enc2xs perl-5.8.8/ext/Encode/bin/enc2xs
> ---- perl-5.8.8.orig/ext/Encode/bin/enc2xs	2004-09-03 01:53:51.000000000 +1000
> -+++ perl-5.8.8/ext/Encode/bin/enc2xs	2006-02-03 00:21:32.000000000 +1100
> -@@ -909,10 +909,11 @@
> -     eval { require File::Find; };
> -     my (@inc, %e2x_dir);
> -     for my $inc (@INC){
> -+	next unless -d $inc; # skip non-existent directories
> - 	push @inc, $inc unless $inc eq '.'; #skip current dir
> -     }
> -     File::Find::find(
> --	     sub {
> -+	     { wanted =>  sub {
> - 		 my ($dev,$ino,$mode,$nlink,$uid,$gid,$rdev,$size,
> - 		     $atime,$mtime,$ctime,$blksize,$blocks)
> - 		     = lstat($_) or return;
> -@@ -922,7 +923,7 @@
> - 		     $e2x_dir{$File::Find::dir} ||= $mtime;
> - 		 }
> - 		 return;
> --	     }, @inc);
> -+	     }, follow =>  1}, @inc);
> -     warn join("\n", keys %e2x_dir), "\n";
> -     for my $d (sort {$e2x_dir{$a}<=>  $e2x_dir{$b}} keys %e2x_dir){
> - 	$_E2X = $d;
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch b/meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch
> deleted file mode 100644
> index ab9c4b7..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch
> +++ /dev/null
> @@ -1,253 +0,0 @@
> -Index: perl-5.8.8/Makefile.SH
> -===================================================================
> ---- perl-5.8.8.orig/Makefile.SH	2006-01-24 23:49:44.000000000 +1100
> -+++ perl-5.8.8/Makefile.SH	2007-06-14 13:29:37.000000000 +1000
> -@@ -43,12 +43,12 @@
> - true)
> - 	# Prefix all runs of 'miniperl' and 'perl' with
> - 	# $ldlibpth so that ./perl finds *this* shared libperl.
> --	case "$LD_LIBRARY_PATH" in
> --	'')
> --		ldlibpth="LD_LIBRARY_PATH=`pwd`";;
> --	*)
> --		ldlibpth="LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}";;
> --	esac
> -+#	case "$LD_LIBRARY_PATH" in
> -+#	'')
> -+#		ldlibpth="LD_LIBRARY_PATH=`pwd`";;
> -+#	*)
> -+#		ldlibpth="LD_LIBRARY_PATH=`pwd`:${LD_LIBRARY_PATH}";;
> -+#	esac
> -
> - 	pldlflags="$cccdlflags"
> - 	static_target='static_pic'
> -@@ -108,7 +108,8 @@
> - 	        ldlibpth=''
> - 	        ;;
> - 	    *)
> --		eval "ldlibpth=\"$ldlibpthname=`pwd`:\$$ldlibpthname\""
> -+# We compile in the library path in OE from cross-compile, so lets not do this
> -+#		eval "ldlibpth=\"$ldlibpthname=`pwd`:\$$ldlibpthname\""
> - 		;;
> - 	    esac
> - 	    # Strip off any trailing :'s
> -@@ -129,18 +130,7 @@
> - 	    # INSTALL file, under "Building a shared perl library".
> - 	    # If there is no pre-existing $libperl, we don't need
> - 	    # to do anything further.
> --	    if test -f $archlib/CORE/$libperl; then
> --		rm -f preload
> --		cat<<'EOT'>  preload
> --#! /bin/sh
> --lib=$1
> --shift
> --test -r $lib&&  export LD_PRELOAD="$lib $LD_PRELOAD"
> --exec "$@"
> --EOT
> --		chmod 755 preload
> --		ldlibpth="$ldlibpth `pwd`/preload `pwd`/$libperl"
> --	    fi
> -+	    echo linux libraries overwritten by cross-compile patches
> - 	    ;;
> - 	os390)	test -f /bin/env&&  ldlibpth="/bin/env $ldlibpth"
> - 		;;
> -@@ -401,9 +391,19 @@
> - .c.s:
> - 	$(CCCMDSRC) -S $*.c
> -
> --all: $(FIRSTMAKEFILE) miniperl$(EXE_EXT) extra.pods $(private) $(unidatafiles) $(public) $(dynamic_ext) $(nonxs_ext) extras.make
> --	@echo " ";
> --	@echo "	Everything is up to date. Type '$(MAKE) test' to run test suite."
> -+#all: $(FIRSTMAKEFILE) miniperl$(EXE_EXT) extra.pods $(private) $(unidatafiles) $(public) $(dynamic_ext) $(nonxs_ext) extras.make
> -+#	@echo " ";
> -+#	@echo "	Everything is up to date. Type '$(MAKE) test' to run test suite."
> -+
> -+all: $(FIRSTMAKEFILE) miniperl$(EXE_EXT) $(unidatafiles)
> -+
> -+more: extra.pods $(private) $(public)
> -+
> -+more2: $(dynamic_ext)
> -+
> -+more3: $(nonxs_ext)
> -+
> -+more4: extras.make
> -
> - .PHONY: all compile translators utilities
> -
> -@@ -413,10 +413,10 @@
> - 	cd x2p; $(MAKE) compile;
> - 	cd pod; $(MAKE) compile;
> -
> --translators:	miniperl$(EXE_EXT) $(CONFIGPM) FORCE
> -+translators:	$(CONFIGPM) FORCE
> - 	@echo " "; echo "	Making x2p stuff"; cd x2p; $(LDLIBPTH) $(MAKE) all
> -
> --utilities:	miniperl$(EXE_EXT) $(CONFIGPM) $(plextract) lib/lib.pm FORCE
> -+utilities:	$(CONFIGPM) $(plextract) lib/lib.pm FORCE
> - 	@echo " "; echo "	Making utilities"; cd utils; $(LDLIBPTH) $(MAKE) all
> -
> -
> -@@ -550,7 +550,7 @@
> - 	case "$useshrplib" in
> - 	true)
> - 		$spitshell>>Makefile<<'!NO!SUBS!'
> --	$(LD) -o $@ $(SHRPLDFLAGS) perl$(OBJ_EXT) $(obj) $(libs)
> -+	$(LD) -o $@ $(SHRPLDFLAGS) perl$(OBJ_EXT) $(obj) $(libs) -Wl,-soname,libperl.so.5
> - !NO!SUBS!
> - 		case "$osname" in
> - 		aix)
> -@@ -591,7 +591,9 @@
> - 	$(CC) -o miniperl $(CLDFLAGS) \
> - 	    `echo $(obj) | sed 's/ op$(OBJ_EXT) / /'` \
> - 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perl$(OBJ_EXT) $(libs)
> --	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> -+	mv -f miniperl miniperl-target
> -+	ln -s hostperl miniperl
> -+#	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> - !NO!SUBS!
> - 		;;
> - 	next4*)
> -@@ -599,7 +601,9 @@
> - miniperl: $&  miniperlmain$(OBJ_EXT) $(LIBPERL) opmini$(OBJ_EXT)
> - 	$(CC) -o miniperl `echo $(obj) | sed 's/ op$(OBJ_EXT) / /'` \
> - 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) perl$(OBJ_EXT) $(libs)
> --	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> -+	mv -f miniperl miniperl-target
> -+	ln -s hostperl miniperl
> -+#	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> - !NO!SUBS!
> - 		;;
> - 	darwin*)
> -@@ -620,7 +624,9 @@
> - 	-@rm -f miniperl.xok
> - 	$(CC) $(CLDFLAGS) $(NAMESPACEFLAGS) -o miniperl \
> - 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) $(LLIBPERL) $(libs)
> --	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> -+	mv -f miniperl miniperl-target
> -+	ln -s hostperl miniperl
> -+#	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> - !NO!SUBS!
> - 		;;
> - 	*)
> -@@ -629,7 +635,9 @@
> - 	-@rm -f miniperl.xok
> - 	$(LDLIBPTH) $(CC) $(CLDFLAGS) -o miniperl \
> - 	    miniperlmain$(OBJ_EXT) opmini$(OBJ_EXT) $(LLIBPERL) $(libs)
> --	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> -+	mv -f miniperl miniperl-target
> -+	ln -s hostperl miniperl
> -+#	$(LDLIBPTH) ./miniperl -w -Ilib -MExporter -e '<?>' || $(MAKE) minitest
> - !NO!SUBS!
> - 		;;
> - 	esac
> -@@ -766,7 +774,7 @@
> - # We need to autosplit in two steps because VOS can't handle so many args
> - #
> - .PHONY: preplibrary
> --preplibrary: miniperl$(EXE_EXT) $(CONFIGPM) lib/lib.pm $(PREPLIBRARY_LIBPERL)
> -+preplibrary: $(CONFIGPM) lib/lib.pm $(PREPLIBRARY_LIBPERL)
> - 	@sh ./makedir lib/auto
> - 	@echo "	AutoSplitting perl library"
> - 	$(LDLIBPTH) ./miniperl -Ilib -e 'use AutoSplit; \
> -@@ -775,35 +783,35 @@
> - 		autosplit_lib_modules(@ARGV)' lib/*/*.pm
> - 	$(MAKE) lib/re.pm
> -
> --lib/Config.pod: config.sh miniperl$(EXE_EXT) configpm Porting/Glossary
> -+lib/Config.pod: config.sh configpm Porting/Glossary
> - 	$(LDLIBPTH) ./miniperl -Ilib configpm --heavy=lib/Config_heavy.pl lib/Config.pm
> -
> - $(CONFIGPM): lib/Config.pod
> -
> --lib/ExtUtils/Miniperl.pm: miniperlmain.c miniperl$(EXE_EXT) minimod.pl $(CONFIGPM)
> -+lib/ExtUtils/Miniperl.pm: miniperlmain.c minimod.pl $(CONFIGPM)
> - 	$(LDLIBPTH) ./miniperl minimod.pl>  lib/ExtUtils/Miniperl.pm
> -
> - lib/re.pm: ext/re/re.pm
> - 	cp ext/re/re.pm lib/re.pm
> -
> --$(plextract):	miniperl$(EXE_EXT) $(CONFIGPM) x2p/s2p
> -+$(plextract):	$(CONFIGPM) x2p/s2p
> - 	@-rm -f $@
> - 	$(LDLIBPTH) ./miniperl -I`pwd`/lib $@.PL
> -
> --x2p/s2p: miniperl$(EXE_EXT) $(CONFIGPM) x2p/s2p.PL
> -+x2p/s2p: $(CONFIGPM) x2p/s2p.PL
> - 	cd x2p; $(LDLIBPTH) $(MAKE) s2p
> -
> --lib/lib.pm:	miniperl$(EXE_EXT) $(CONFIGPM)
> -+lib/lib.pm:	$(CONFIGPM)
> - 	@-rm -f $@
> - 	$(LDLIBPTH) ./miniperl -Ilib lib/lib_pm.PL
> -
> - unidatafiles $(unidatafiles): uni.data
> -
> --uni.data: miniperl$(EXE_EXT) $(CONFIGPM) lib/unicore/mktables
> -+uni.data: $(CONFIGPM) lib/unicore/mktables
> - 	cd lib/unicore&&  $(LDLIBPTH) ../../miniperl -I../../lib mktables -w
> - 	touch uni.data
> -
> --extra.pods: miniperl$(EXE_EXT)
> -+extra.pods:
> - 	-@test -f extra.pods&&  rm -f `cat extra.pods`
> - 	-@rm -f extra.pods
> - 	-@for x in `grep -l '^=[a-z]' README.* | grep -v README.vms` ; do \
> -@@ -850,18 +858,7 @@
> - INSTALL_DEPENDENCE = all
> -
> - install.perl:	$(INSTALL_DEPENDENCE) installperl
> --	if [ -n "$(COMPILE)" ]; \
> --	then \
> --		cd utils; $(MAKE) compile; \
> --		cd ../x2p; $(MAKE) compile; \
> --		cd ../pod; $(MAKE) compile; \
> --	else :; \
> --	fi
> --	$(LDLIBPTH) ./perl installperl --destdir=$(DESTDIR) $(INSTALLFLAGS) $(STRIPFLAGS)
> --	$(MAKE) extras.install
> --
> --install.man:	all installman
> --	$(LDLIBPTH) ./perl installman --destdir=$(DESTDIR) $(INSTALLFLAGS)
> -+	./hostperl -Ifake_config_library -Ilib -MConfig installperl --destdir=$(DESTDIR) $(INSTALLFLAGS) $(STRIPFLAGS)
> -
> - # XXX Experimental. Hardwired values, but useful for testing.
> - # Eventually Configure could ask for some of these values.
> -@@ -978,16 +975,16 @@
> - #
> - # DynaLoader may be needed for extensions that use Makefile.PL.
> -
> --$(DYNALOADER):	miniperl$(EXE_EXT) preplibrary FORCE
> -+$(DYNALOADER):	preplibrary FORCE
> - 	@$(LDLIBPTH) sh ext/util/make_ext $(STATIC) $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL)
> -
> --d_dummy $(dynamic_ext):	miniperl$(EXE_EXT) preplibrary $(DYNALOADER) FORCE
> -+d_dummy $(dynamic_ext):	preplibrary $(DYNALOADER) FORCE
> - 	@$(LDLIBPTH) sh ext/util/make_ext dynamic $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL)
> -
> --s_dummy $(static_ext):	miniperl$(EXE_EXT) preplibrary $(DYNALOADER) FORCE
> -+s_dummy $(static_ext):	preplibrary $(DYNALOADER) FORCE
> - 	@$(LDLIBPTH) sh ext/util/make_ext $(STATIC) $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL)
> -
> --n_dummy $(nonxs_ext):	miniperl$(EXE_EXT) preplibrary $(DYNALOADER) FORCE
> -+n_dummy $(nonxs_ext):	preplibrary $(DYNALOADER) FORCE
> - 	@$(LDLIBPTH) sh ext/util/make_ext nonxs $@ MAKE=$(MAKE) LIBPERL_A=$(LIBPERL)
> -
> - .PHONY: clean _tidy _mopup _cleaner1 _cleaner2 \
> -@@ -1125,7 +1122,7 @@
> -
> - test_prep_pre: preplibrary utilities $(nonxs_ext)
> -
> --test_prep: test_prep_pre miniperl$(EXE_EXT) $(unidatafiles) perl$(EXE_EXT) $(dynamic_ext) $(TEST_PERL_DLL)
> -+test_prep: test_prep_pre $(unidatafiles) perl$(EXE_EXT) $(dynamic_ext) $(TEST_PERL_DLL)
> - 	PERL=./perl $(MAKE) _test_prep
> -
> - _test_tty:
> -@@ -1238,7 +1235,7 @@
> -
> - # Can't depend on lib/Config.pm because that might be where miniperl
> - # is crashing.
> --minitest: miniperl$(EXE_EXT) lib/re.pm minitest.prep
> -+minitest: lib/re.pm minitest.prep
> - 	- cd t&&  (rm -f perl$(EXE_EXT); $(LNS) ../miniperl$(EXE_EXT) perl$(EXE_EXT)) \
> - 		&&  $(LDLIBPTH) ./perl TEST -minitest base/*.t comp/*.t cmd/*.t run/*.t io/*.t op/*.t uni/*.t</dev/tty
> -
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-32 b/meta/recipes-devtools/perl/perl-5.8.8/config.sh-32
> deleted file mode 100644
> index e22d71d..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-32
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -alignbytes='4'
> -ccflags='-D_REENTRANT -D_GNU_SOURCE -DTHREADS_HAVE_PIDS -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
> -ccflags_uselargefiles='-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
> -yaccflags=''
> -ccsymbols='__GNUC_PATCHLEVEL__=5'
> -cppccsymbols='__GNUC__=3 __GNUC_MINOR__=3'
> -cppccsymbols='__GNUC__=3 __GNUC_MINOR__=3'
> -cppflags='-D_REENTRANT -D_GNU_SOURCE -DTHREADS_HAVE_PIDS -fno-strict-aliasing -pipe -I/usr/local/include'
> -cppsymbols='__ELF__=1 _FILE_OFFSET_BITS=64 __GLIBC__=2 __GLIBC_MINOR__=3 __GNU_LIBRARY__=6 _GNU_SOURCE=1 i386=1 __i386=1 __i386__=1 __i486=1 __i486__=1 _LARGEFILE64_SOURCE=1 _LARGEFILE_SOURCE=1 linux=1 __linux=1 __linux__=1 _POSIX_C_SOURCE=199506L _POSIX_SOURCE=1 _REENTRANT=1 __STDC__=1 unix=1 __unix=1 __unix__=1 __USE_BSD=1 __USE_FILE_OFFSET64=1 __USE_GNU=1 __USE_LARGEFILE=1 __USE_LARGEFILE64=1 __USE_MISC=1 __USE_POSIX=1 __USE_POSIX199309=1 __USE_POSIX199506=1 __USE_POSIX2=1 __USE_REENTRANT=1 __USE_SVID=1 __USE_UNIX98=1 __USE_XOPEN=1 __USE_XOPEN_EXTENDED=1 _XOPEN_SOURCE=600 _XOPEN_SOURCE_EXTENDED=1'
> -d_nv_preserves_uv='define'
> -d_u32align='undef'
> -gccversion='3.3.5 (Debian 1:3.3.5-13)'
> -getspnam_r_proto='0'
> -gidformat='"lu"'
> -gnulibc_version='2.3.2'
> -i32type='long'
> -i64type='long long'
> -ivsize='4'
> -gnulibc_version='2.3.2'
> -libc='/lib/libc-2.3.2.so'
> -libsfiles=' libnsl.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -ignore_versioned_solibs='y'
> -libs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lc'
> -libsdirs=' /usr/lib'
> -libsfiles=' libnsl.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -libspath=' /usr/local/lib /lib /usr/lib'
> -libswanted='sfio socket inet nsl nm ndbm gdbm dbm db malloc dl dld ld sun m crypt sec util pthread c cposix posix ucb BSD'
> -libswanted_uselargefiles=''
> -perllibs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lc'
> -libsfiles=' libnsl.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -longdblsize='12'
> -longlongsize='8'
> -longsize='4'
> -myuname='linux birgitte 2.6.21-rc5 #63 tue mar 27 14:41:54 est 2007 i686 gnulinux '
> -nv_preserves_uv_bits='32'
> -osvers='2.6.21-rc5'
> -ptrsize='4'
> -quadkind='3'
> -quadtype='long long'
> -uquadtype='unsigned long long'
> -sPRIXU64='"LX"'
> -sPRId64='"Ld"'
> -sPRIi64='"Li"'
> -sPRIo64='"Lo"'
> -sPRIu64='"Lu"'
> -sPRIx64='"Lx"'
> -selectminbits='32'
> -sizesize='4'
> -u32type='unsigned long'
> -u64type='unsigned long long'
> -uidformat='"lu"'
> -uquadtype='unsigned long long'
> -use64bitall='undef'
> -use64bitint='undef'
> -uvsize='4'
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-64 b/meta/recipes-devtools/perl/perl-5.8.8/config.sh-64
> deleted file mode 100644
> index 6e58fa7..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/config.sh-64
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -alignbytes='8'
> -ccflags='-D_REENTRANT -D_GNU_SOURCE -DTHREADS_HAVE_PIDS -fno-strict-aliasing -pipe -Wdeclaration-after-statement -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
> -ccflags_uselargefiles='-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
> -yaccflags=''
> -ccsymbols=''
> -cppccsymbols=''
> -cppccsymbols=''
> -cppflags='-D_REENTRANT -D_GNU_SOURCE -DTHREADS_HAVE_PIDS -fno-strict-aliasing -pipe -Wdeclaration-after-statement'
> -cppsymbols='__amd64=1 __amd64__=1 __ELF__=1 _FILE_OFFSET_BITS=64 __GLIBC__=2 __GLIBC_MINOR__=4 __GNUC__=4 __GNUC_MINOR__=1 __GNU_LIBRARY__=6 _GNU_SOURCE=1 _LARGEFILE64_SOURCE=1 _LARGEFILE_SOURCE=1 linux=1 __linux=1 __linux__=1 _LP64=1 __LP64__=1 _POSIX_C_SOURCE=199506L _POSIX_SOURCE=1 _REENTRANT=1 __STDC__=1 unix=1 __unix=1 __unix__=1 __USE_BSD=1 __USE_FILE_OFFSET64=1 __USE_GNU=1 __USE_LARGEFILE=1 __USE_LARGEFILE64=1 __USE_MISC=1 __USE_POSIX=1 __USE_POSIX199309=1 __USE_POSIX199506=1 __USE_POSIX2=1 __USE_REENTRANT=1 __USE_SVID=1 __USE_UNIX98=1 __USE_XOPEN=1 __USE_XOPEN_EXTENDED=1 __x86_64=1 __x86_64__=1 _XOPEN_SOURCE=600 _XOPEN_SOURCE_EXTENDED=1'
> -d_nv_preserves_uv='undef'
> -d_u32align='define'
> -gccversion='4.1.2 20060928 (prerelease) (Ubuntu 4.1.1-13ubuntu5)'
> -getspnam_r_proto='REENTRANT_PROTO_I_CSBWR'
> -gidformat='"u"'
> -gnulibc_version='2.4'
> -i32type='int'
> -i64type='long'
> -ivsize='8'
> -gnulibc_version='2.4'
> -libc='/lib/libc-2.4.so'
> -libsfiles=' libnsl.so libdb.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdb.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -ignore_versioned_solibs='y'
> -libs='-lnsl -ldb -ldl -lm -lcrypt -lutil -lpthread -lc'
> -libsdirs=' /usr/lib'
> -libsfiles=' libnsl.so libdb.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdb.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -libspath=' /usr/local/lib /lib /usr/lib'
> -libswanted='sfio socket inet nsl nm ndbm gdbm dbm db malloc dl dld ld sun m crypt sec util pthread c cposix posix ucb BSD'
> -libswanted_uselargefiles=''
> -perllibs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lc'
> -libsfiles=' libnsl.so libdb.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so'
> -libsfound=' /usr/lib/libnsl.so /usr/lib/libdb.so /usr/lib/libdl.so /usr/lib/libm.so /usr/lib/libcrypt.so /usr/lib/libutil.so /usr/lib/libpthread.so /usr/lib/libc.so'
> -longdblsize='16'
> -longlongsize='8'
> -longsize='8'
> -myuname='linux nynaeve 2.6.20.4 #29 smp thu mar 29 15:35:30 est 2007 x86_64 gnulinux '
> -nv_preserves_uv_bits='53'
> -osvers='2.6.20.4'
> -ptrsize='8'
> -quadkind='2'
> -quadtype='long'
> -uquadtype='unsigned long'
> -sPRIXU64='"lX"'
> -sPRId64='"ld"'
> -sPRIi64='"li"'
> -sPRIo64='"lo"'
> -sPRIu64='"lu"'
> -sPRIx64='"lx"'
> -selectminbits='64'
> -sizesize='8'
> -u32type='unsigned int'
> -u64type='unsigned long'
> -uidformat='"u"'
> -uquadtype='unsigned long'
> -use64bitall='define'
> -use64bitint='define'
> -uvsize='8'
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch b/meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch
> deleted file mode 100644
> index 1f15474..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -Index: perl-5.8.8/makedepend.SH
> -===================================================================
> ---- perl-5.8.8.orig/makedepend.SH	2007-05-24 12:06:52.000000000 +1000
> -+++ perl-5.8.8/makedepend.SH	2007-05-24 12:27:33.000000000 +1000
> -@@ -128,7 +128,7 @@
> -     *.y) filebase=`basename $file .y` ;;
> -     esac
> -     case "$file" in
> --    */*) finc="-I`echo $file | sed 's#/[^/]*$##`" ;;
> -+    */*) finc="-I`echo $file | sed 's#/[^/]*$##'`" ;;
> -     *)   finc= ;;
> -     esac
> -     $echo "Finding dependencies for $filebase$_o."
> diff --git a/meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch b/meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch
> deleted file mode 100644
> index f00fa2c..0000000
> --- a/meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -If you have a /usr/include/gdbm/ndbm.h host on the header then the configure
> -script adds -I/usr/include/gdbm to the ccflags even though gdbm support is
> -disabled. Prevent perl from doing this so we don't get cross compile badness
> -errors while building perl.
> -
> ---- perl-5.8.8/Configure	2007/05/06 23:42:18	1.1
> -+++ perl-5.8.8/Configure	2007/05/06 23:42:48
> -@@ -20033,8 +20033,8 @@
> -     # ndbm.h header in /usr/include/gdbm/ndbm.h.
> -     if $test -f /usr/include/gdbm/ndbm.h; then
> - 	echo '<gdbm/ndbm.h>  found.'
> --        ccflags="$ccflags -I/usr/include/gdbm"
> --        cppflags="$cppflags -I/usr/include/gdbm"
> -+#        ccflags="$ccflags -I/usr/include/gdbm"
> -+#        cppflags="$cppflags -I/usr/include/gdbm"
> -         t_ndbm=$define
> -     fi
> -     ;;
> diff --git a/meta/recipes-devtools/perl/perl-native_5.8.8.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> similarity index 83%
> rename from meta/recipes-devtools/perl/perl-native_5.8.8.bb
> rename to meta/recipes-devtools/perl/perl-native_5.12.2.bb
> index cc946af..3eb0802 100644
> --- a/meta/recipes-devtools/perl/perl-native_5.8.8.bb
> +++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> @@ -2,24 +2,22 @@ DESCRIPTION = "Perl is a popular scripting language."
>   HOMEPAGE = "http://www.perl.org/"
>   SECTION = "libs"
>   LICENSE = "Artistic|GPL"
> +LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
> +		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
>   DEPENDS = "virtual/db-native gdbm-native"
> -PR = "r14"
> +PR = "r0"
>
>   LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>                       file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
>
>   SRC_URI = "http://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
> -           file://perl-5.8.8-gcc-4.2.patch;patch=1 \
>              file://Configure-multilib.patch;patch=1 \
>              file://perl-configpm-switch.patch;patch=1 \
>              file://native-nopacklist.patch;patch=1 \
> -           file://native-no-gdbminc.patch;patch=1 \
> -           file://native-perlinc.patch;patch=1 \
> -           file://makedepend-dash.patch;patch=1 \
> -           file://asm-pageh-fix.patch;patch=1"
> +           file://native-perlinc.patch;patch=1"
>
> -SRC_URI[md5sum] = "b8c118d4360846829beb30b02a6b91a7"
> -SRC_URI[sha256sum] = "e15d499321e003d12ed183601e37ee7ba5f64b278d1de30149ce01bd4a3f234d"
> +SRC_URI[md5sum] = "af2df531d46b77fdf0d97eecb03eddb2"
> +SRC_URI[sha256sum] = "cf888340021d5a2d1238bbd9b8b55aaf420a848d46e4d317cb8567f86ceb1022"
>
>   S = "${WORKDIR}/perl-${PV}"
>
> @@ -68,13 +66,15 @@ do_install () {
>   	# We need a hostperl link for building perl
>   	ln -sf perl${PV} ${D}${bindir}/hostperl
>
> +        ln -sf ${D}${libdir}/perl ${D}${libdir}/perl5
> +
>   	install -d ${D}${libdir}/perl/${PV}/CORE \
>   	           ${D}${datadir}/perl/${PV}/ExtUtils
>
>   	# Save native config
>   	install config.sh ${D}${libdir}/perl
>   	install lib/Config.pm ${D}${libdir}/perl/${PV}/
> -	install lib/ExtUtils/typemap ${D}${datadir}/perl/${PV}/ExtUtils/
> +	install lib/ExtUtils/typemap ${D}${libdir}/perl/${PV}/ExtUtils/
>
>   	# perl shared library headers
>   	for i in av.h embed.h gv.h keywords.h op.h perlio.h pp.h regexp.h \
> @@ -83,7 +83,7 @@ do_install () {
>   	         hv.h malloc_ctl.h pad.h perlsdio.h proto.h scope.h utf8.h \
>   	         cop.h fakesdio.h INTERN.h mg.h patchlevel.h perlsfio.h \
>   	         reentr.h sv.h utfebcdic.h cv.h fakethr.h intrpvar.h \
> -	         nostdio.h perlapi.h perlvars.h reentr.inc thrdvar.h util.h \
> +	         nostdio.h perlapi.h perlvars.h util.h \
>   	         dosish.h form.h iperlsys.h opcode.h perl.h perly.h regcomp.h \
>   	         thread.h warnings.h; do
>   		install $i ${D}${libdir}/perl/${PV}/CORE
> diff --git a/meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc b/meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc
> new file mode 100644
> index 0000000..309bd17
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc
> @@ -0,0 +1,210 @@
> +# To create/update the perl-rdepends_${PV}.inc use this piece of ugly script (modified for your arch/paths etc):
> +
> +#[nitin@buildbox packages-split]$ pwd
> +#/home/nitin/build/build3/tmp/work/i586-poky-linux/perl-5.8.8-r21/packages-split
> +#/home/nitin/poky.git/build/tmp/work/x86_64-poky-linux/perl-5.12.2-r0/packages-split
> +
> +#egrep -r "use|require" perl-module-* | grep ";" | egrep "\.pm:require | \.pm:use" | sed "s-/.*\.pm: *- += -g" | sed "s/[\"\']//g" | sed "s/;.*/\"/g" | sed "s/require */\"perl-module-/g" | sed "s/CPANPLUS::.*/cpanplus/g" | sed "s/CPAN::.*/cpan/g" | tr [:upper:] [:lower:] | sed "s/::/-/g" | grep -v perl-module-5 | sed "s/ [^+\"].*//g" | grep -v "\\$" | sed "s/_/-/g" | sed "s/\.pl\"$/\"/" | grep -v "\-vms\-" | sort -u>  /tmp/1
> +#find . -type f | sed "s-\./--" | sed "s-/.*--" | sort -u>  /tmp/2
> +#cat /tmp/1 | cut -f3 -d" " | sed "s/[\"\']//g" | sort -u>  /tmp/3
> +## these dependancies do not exist
> +#diff -u /tmp/2 /tmp/3 | grep ^+perl-module
> +
> +
> +# Some additional dependencies that the above doesn't manage to figure out
> +RDEPENDS_perl-module-math-bigint += "perl-module-math-bigint-calc "
> +RDEPENDS_perl-module-math-bigint-calc += "perl-module-integer "
> +
> +# Depends list
> +# copy contents of /tmp/1 in this file
> +RDEPENDS_perl-module-archive-tar += "perl-module-exporter"
> +RDEPENDS_perl-module-archive-tar-file += "perl-module-archive-tar"
> +RDEPENDS_perl-module-attributes += "perl-module-xsloader"
> +RDEPENDS_perl-module-b += "perl-module-exporter"
> +RDEPENDS_perl-module-b-debug += "perl-module-b"
> +RDEPENDS_perl-module-bignum += "perl-module-bigint"
> +RDEPENDS_perl-module-bigrat += "perl-module-bigint"
> +RDEPENDS_perl-module-bigrat += "perl-module-exporter"
> +RDEPENDS_perl-module-carp += "perl-module-exporter"
> +RDEPENDS_perl-module-cgi-util += "perl-module-exporter"
> +RDEPENDS_perl-module-class-struct += "perl-module-exporter"
> +RDEPENDS_perl-module-compress-raw-bzip2 += "perl-module-exporter"
> +RDEPENDS_perl-module-compress-raw-zlib += "perl-module-exporter"
> +RDEPENDS_perl-module-compress-zlib += "perl-module-exporter"
> +RDEPENDS_perl-module-config-extensions += "perl-module-exporter"
> +RDEPENDS_perl-module-cpanplus += "perl-module-base"
> +RDEPENDS_perl-module-cpanplus += "perl-module-exporter"
> +RDEPENDS_perl-module-cpanplus += "perl-module-tie-hash"
> +RDEPENDS_perl-module-data-dumper += "perl-module-exporter"
> +RDEPENDS_perl-module-data-dumper += "perl-module-overload"
> +RDEPENDS_perl-module-devel-peek += "perl-module-exporter"
> +RDEPENDS_perl-module-devel-selfstubber += "perl-module-selfloader"
> +RDEPENDS_perl-module-digest-md5 += "perl-module-exporter"
> +RDEPENDS_perl-module-digest-sha += "perl-module-dynaloader"
> +RDEPENDS_perl-module-digest-sha += "perl-module-exporter"
> +RDEPENDS_perl-module-dynaloader += "perl-module-autoloader"
> +RDEPENDS_perl-module-encode += "perl-module-encode-config"
> +RDEPENDS_perl-module-encode += "perl-module-exporter"
> +RDEPENDS_perl-module-encode-cjkconstants += "perl-module-exporter"
> +RDEPENDS_perl-module-encode-encoder += "perl-module-exporter"
> +RDEPENDS_perl-module-encode-encoding += "perl-module-encode"
> +RDEPENDS_perl-module-encode-unicode += "perl-module-encode"
> +RDEPENDS_perl-module-english += "perl-module-exporter"
> +RDEPENDS_perl-module-exporter-heavy += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-command += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-command-mm += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-constant-proxysubs += "perl-module-extutils-constant-xs"
> +RDEPENDS_perl-module-extutils-constant-xs += "perl-module-extutils-constant-base"
> +RDEPENDS_perl-module-extutils-embed += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-embed += "perl-module-filehandle"
> +RDEPENDS_perl-module-extutils-liblist += "perl-module-extutils-liblist-kid"
> +RDEPENDS_perl-module-extutils-makemaker += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-makemaker += "perl-module-extutils-mm"
> +RDEPENDS_perl-module-extutils-makemaker += "perl-module-extutils-my"
> +RDEPENDS_perl-module-extutils-manifest += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-miniperl += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-mkbootstrap += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-mm += "perl-module-extutils-liblist"
> +RDEPENDS_perl-module-extutils-mm += "perl-module-extutils-makemaker"
> +RDEPENDS_perl-module-extutils-mm-aix += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-beos += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-beos += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-extutils-mm-win32"
> +RDEPENDS_perl-module-extutils-mm-dos += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-dos += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-extutils-mm-win32"
> +RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-qnx += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-unix += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-uwin += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-vms += "perl-module-exporter"
> +RDEPENDS_perl-module-extutils-mm-vms += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-vms += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-vos += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-extutils-mm-any"
> +RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-extutils-mm-unix"
> +RDEPENDS_perl-module-extutils-mm-win95 += "perl-module-extutils-mm-win32"
> +RDEPENDS_perl-module-extutils-my += "perl-module-extutils-mm"
> +RDEPENDS_perl-module-extutils-parsexs += "perl-module-exporter"
> +RDEPENDS_perl-module-fcntl += "perl-module-exporter"
> +RDEPENDS_perl-module-file-basename += "perl-module-exporter"
> +RDEPENDS_perl-module-file-compare += "perl-module-exporter"
> +RDEPENDS_perl-module-file-copy += "perl-module-exporter"
> +RDEPENDS_perl-module-file-find += "perl-module-cwd"
> +RDEPENDS_perl-module-file-find += "perl-module-exporter"
> +RDEPENDS_perl-module-file-find += "perl-module-file-basename"
> +RDEPENDS_perl-module-file-find += "perl-module-file-spec"
> +RDEPENDS_perl-module-file-spec-cygwin += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-spec-epoc += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-spec-functions += "perl-module-exporter"
> +RDEPENDS_perl-module-file-spec-mac += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-spec-os2 += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-spec-vms += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-spec-win32 += "perl-module-file-spec-unix"
> +RDEPENDS_perl-module-file-temp += "perl-module-symbol"
> +RDEPENDS_perl-module-filehandle += "perl-module-io-file"
> +RDEPENDS_perl-module-filter-util-call += "perl-module-dynaloader"
> +RDEPENDS_perl-module-filter-util-call += "perl-module-exporter"
> +RDEPENDS_perl-module-findbin += "perl-module-exporter"
> +RDEPENDS_perl-module-getopt-std += "perl-module-exporter"
> +RDEPENDS_perl-module-hash-util += "perl-module-dynaloader"
> +RDEPENDS_perl-module-hash-util += "perl-module-exporter"
> +RDEPENDS_perl-module-hash-util-fieldhash += "perl-module-exporter"
> +RDEPENDS_perl-module-i18n-collate += "perl-module-exporter"
> +RDEPENDS_perl-module-i18n-langinfo += "perl-module-dynaloader"
> +RDEPENDS_perl-module-i18n-langinfo += "perl-module-exporter"
> +RDEPENDS_perl-module-i18n-langtags += "perl-module-exporter"
> +RDEPENDS_perl-module-inc-latest += "perl-module-inc-latest-private"
> +RDEPENDS_perl-module-io-compress-base-common += "perl-module-exporter"
> +RDEPENDS_perl-module-io-compress-bzip2 += "perl-module-exporter "
> +RDEPENDS_perl-module-io-compress-deflate += "perl-module-exporter "
> +RDEPENDS_perl-module-io-compress-gzip += "perl-module-exporter "
> +RDEPENDS_perl-module-io-compress-gzip-constants += "perl-module-exporter"
> +RDEPENDS_perl-module-io-compress-rawdeflate += "perl-module-exporter "
> +RDEPENDS_perl-module-io-compress-zip += "perl-module-exporter "
> +RDEPENDS_perl-module-io-compress-zip-constants += "perl-module-exporter"
> +RDEPENDS_perl-module-io-compress-zlib-constants += "perl-module-exporter"
> +RDEPENDS_perl-module-io-file += "perl-module-exporter"
> +RDEPENDS_perl-module-io-handle += "perl-module-exporter"
> +RDEPENDS_perl-module-io-seekable += "perl-module-exporter"
> +RDEPENDS_perl-module-io-select += "perl-module-exporter"
> +RDEPENDS_perl-module-io-socket += "perl-module-io-socket-inet"
> +RDEPENDS_perl-module-io-socket += "perl-module-io-socket-unix"
> +RDEPENDS_perl-module-io-uncompress-anyinflate += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-anyuncompress += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-bunzip2 += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-gunzip += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-inflate += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-rawinflate += "perl-module-exporter "
> +RDEPENDS_perl-module-io-uncompress-unzip += "perl-module-exporter "
> +RDEPENDS_perl-module-ipc-cmd += "perl-module-carp"
> +RDEPENDS_perl-module-ipc-open2 += "perl-module-exporter"
> +RDEPENDS_perl-module-ipc-open2 += "perl-module-ipc-open3"
> +RDEPENDS_perl-module-ipc-open3 += "perl-module-exporter"
> +RDEPENDS_perl-module-ipc-sysv += "perl-module-exporter"
> +RDEPENDS_perl-module-list-util += "perl-module-exporter"
> +RDEPENDS_perl-module-list-util-pp += "perl-module-exporter"
> +RDEPENDS_perl-module-locale-constants += "perl-module-exporter"
> +RDEPENDS_perl-module-locale-country += "perl-module-exporter"
> +RDEPENDS_perl-module-locale-currency += "perl-module-exporter"
> +RDEPENDS_perl-module-locale-language += "perl-module-exporter"
> +RDEPENDS_perl-module-locale-script += "perl-module-exporter"
> +RDEPENDS_perl-module-math-bigfloat += "perl-module-exporter"
> +RDEPENDS_perl-module-math-complex += "perl-module-exporter"
> +RDEPENDS_perl-module-math-trig += "perl-module-exporter"
> +RDEPENDS_perl-module-mime-base64 += "perl-module-exporter"
> +RDEPENDS_perl-module-mime-base64 += "perl-module-xsloader"
> +RDEPENDS_perl-module-mime-quotedprint += "perl-module-exporter"
> +RDEPENDS_perl-module-mro += "perl-module-xsloader"
> +RDEPENDS_perl-module-net-cmd += "perl-module-exporter"
> +RDEPENDS_perl-module-net-config += "perl-module-exporter"
> +RDEPENDS_perl-module-net-domain += "perl-module-exporter"
> +RDEPENDS_perl-module-net-ftp-a += "perl-module-net-ftp-dataconn"
> +RDEPENDS_perl-module-net-ftp-e += "perl-module-net-ftp-i"
> +RDEPENDS_perl-module-net-ftp-i += "perl-module-net-ftp-dataconn"
> +RDEPENDS_perl-module-net-ftp-l += "perl-module-net-ftp-i"
> +RDEPENDS_perl-module-net-ping += "perl-module-exporter"
> +RDEPENDS_perl-module-net-time += "perl-module-exporter"
> +RDEPENDS_perl-module-object-accessor += "perl-module-overload"
> +RDEPENDS_perl-module-pod-escapes += "perl-module-exporter"
> +RDEPENDS_perl-module-pod-functions += "perl-module-exporter"
> +RDEPENDS_perl-module-pod-html += "perl-module-exporter"
> +RDEPENDS_perl-module-pod-latex += "perl-module-pod-parseutils"
> +RDEPENDS_perl-module-pod-simple-transcodesmart += "perl-module-encode"
> +RDEPENDS_perl-module-pod-usage += "perl-module-pod-select"
> +RDEPENDS_perl-module-posix += "perl-module-exporter"
> +RDEPENDS_perl-module-safe += "perl-module-utf8"
> +RDEPENDS_perl-module-scalar-util += "perl-module-exporter"
> +RDEPENDS_perl-module-scalar-util += "perl-module-list-util"
> +RDEPENDS_perl-module-scalar-util-pp += "perl-module-exporter"
> +RDEPENDS_perl-module-sdbm-file += "perl-module-tie-hash"
> +RDEPENDS_perl-module-search-dict += "perl-module-exporter"
> +RDEPENDS_perl-module-socket += "perl-module-exporter"
> +RDEPENDS_perl-module-storable += "perl-module-carp"
> +RDEPENDS_perl-module-storable += "perl-module-dynaloader"
> +RDEPENDS_perl-module-storable += "perl-module-exporter"
> +RDEPENDS_perl-module-symbol += "perl-module-exporter"
> +RDEPENDS_perl-module-sys-hostname += "perl-module-autoloader"
> +RDEPENDS_perl-module-sys-hostname += "perl-module-exporter"
> +RDEPENDS_perl-module-term-complete += "perl-module-exporter"
> +RDEPENDS_perl-module-test += "perl-module-exporter"
> +RDEPENDS_perl-module-test-builder-module += "perl-module-exporter"
> +RDEPENDS_perl-module-test-builder-tester-color += "perl-module-test-builder-tester"
> +RDEPENDS_perl-module-text-abbrev += "perl-module-exporter"
> +RDEPENDS_perl-module-text-tabs += "perl-module-exporter"
> +RDEPENDS_perl-module-text-wrap += "perl-module-exporter"
> +RDEPENDS_perl-module-thread += "perl-module-exporter"
> +RDEPENDS_perl-module-threads += "perl-module-config"
> +RDEPENDS_perl-module-threads += "perl-module-xsloader"
> +RDEPENDS_perl-module-time-hires += "perl-module-dynaloader"
> +RDEPENDS_perl-module-time-hires += "perl-module-exporter"
> +RDEPENDS_perl-module-time-local += "perl-module-exporter"
> +RDEPENDS_perl-module-time-piece += "perl-module-dynaloader"
> +RDEPENDS_perl-module-time-piece += "perl-module-exporter"
> +RDEPENDS_perl-module-unicode-normalize += "perl-module-dynaloader"
> +RDEPENDS_perl-module-unicode-normalize += "perl-module-exporter"
> +RDEPENDS_perl-module-unicode-ucd += "perl-module-exporter"
> +RDEPENDS_perl-module-universal += "perl-module-exporter"
> +RDEPENDS_perl-module-warnings-register += "perl-module-warnings"
> diff --git a/meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc b/meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
> deleted file mode 100644
> index 1ce5ad0..0000000
> --- a/meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
> +++ /dev/null
> @@ -1,1145 +0,0 @@
> -# To create/update the perl-rdepends_${PV}.inc use this piece of ugly script (modified for your arch/paths etc):
> -# daka@DaKa2:/home/slug/slugos/tmp/work/perl-5.8.7-r14/install$ egrep -r "use|require" * | grep ";$" | egrep ".pm:use |.pm:require " | grep -v v5.6.0 | grep -v 5.00 | grep -v \$module | sed -e "s, \+, ,g" | cut -f1,2 -d" " | sed -e "s,;, ,g" | sed -e "s,(), ,g" | sed -e "s,::,-,g" | sort | uniq | tr [:upper:] [:lower:] | sed -e "s,/[^ ]\+ , += \"perl-module-,g" | sed -e "s, \?$, \",g" | sed -e "s,_,-,g" | sed -e "s,^,RDEPENDS_,g" | sed -e "s,armeb-linux,\$\{TARGET_ARCH\}-\$\{TARGET_OS\},g" | egrep -v "perl-module-5|perl-module-tk|perl-module-mac-internetconfig|perl-module-ndbm-file|perl-module-html-treebuilder|perl-module-lwp-simple|perl-module-vms-filespec|perl-module-fcgi|perl-module-vms-stdio|perl-module-mac-buildtools">  /home/slug/openembedded/packages/perl/rdepends.tmp
> -
> -# Some additional dependencies that the above doesn't manage to figure out
> -RDEPENDS_perl-module-math-bigint += "perl-module-math-bigint-calc "
> -RDEPENDS_perl-module-math-bigint-calc += "perl-module-integer "
> -
> -# Depends list
> -RDEPENDS_perl-misc += "perl-module-exporter "
> -RDEPENDS_perl-misc += "perl-module-strict "
> -RDEPENDS_perl-misc += "perl-module-warnings "
> -RDEPENDS_perl-module-attribute-handlers-demo-demo += "perl-module-attribute-handlers "
> -RDEPENDS_perl-module-attribute-handlers-demo-descriptions += "perl-module-attribute-handlers "
> -RDEPENDS_perl-module-attribute-handlers-demo-myclass += "perl-module-base "
> -RDEPENDS_perl-module-attribute-handlers += "perl-module-carp "
> -RDEPENDS_perl-module-attribute-handlers += "perl-module-warnings "
> -RDEPENDS_perl-module-attributes += "perl-module-strict "
> -RDEPENDS_perl-module-attrs += "perl-module-xsloader "
> -RDEPENDS_perl-module-autoloader += "perl-module-strict "
> -RDEPENDS_perl-module-autosplit += "perl-module-carp "
> -RDEPENDS_perl-module-autosplit += "perl-module-config "
> -RDEPENDS_perl-module-autosplit += "perl-module-exporter "
> -RDEPENDS_perl-module-autosplit += "perl-module-file-basename "
> -RDEPENDS_perl-module-autosplit += "perl-module-file-path "
> -RDEPENDS_perl-module-autosplit += "perl-module-file-spec-functions "
> -RDEPENDS_perl-module-autosplit += "perl-module-strict "
> -RDEPENDS_perl-module-base += "perl-module-strict "
> -RDEPENDS_perl-module-base += "perl-module-vars "
> -RDEPENDS_perl-module-b-asmdata += "perl-module-exporter "
> -RDEPENDS_perl-module-b-assembler += "perl-module-b "
> -RDEPENDS_perl-module-b-assembler += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-assembler += "perl-module-config "
> -RDEPENDS_perl-module-b-assembler += "perl-module-exporter "
> -RDEPENDS_perl-module-b-assembler += "perl-module-strict "
> -RDEPENDS_perl-module-b-bblock += "perl-module-b-concise "
> -RDEPENDS_perl-module-b-bblock += "perl-module-exporter "
> -RDEPENDS_perl-module-b-bblock += "perl-module-strict "
> -RDEPENDS_perl-module-b-bytecode += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-bytecode += "perl-module-b-assembler "
> -RDEPENDS_perl-module-b-bytecode += "perl-module-config "
> -RDEPENDS_perl-module-b-bytecode += "perl-module-strict "
> -RDEPENDS_perl-module-b-cc += "perl-module-b-bblock "
> -RDEPENDS_perl-module-b-cc += "perl-module-b-stackobj "
> -RDEPENDS_perl-module-b-cc += "perl-module-config "
> -RDEPENDS_perl-module-b-cc += "perl-module-strict "
> -RDEPENDS_perl-module-b-c += "perl-module-b "
> -RDEPENDS_perl-module-b-c += "perl-module-base "
> -RDEPENDS_perl-module-b-c += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-c += "perl-module-carp "
> -RDEPENDS_perl-module-b-c += "perl-module-config "
> -RDEPENDS_perl-module-b-c += "perl-module-exporter "
> -RDEPENDS_perl-module-b-c += "perl-module-filehandle "
> -RDEPENDS_perl-module-b-c += "perl-module-strict "
> -RDEPENDS_perl-module-b-debug += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-debug += "perl-module-strict "
> -RDEPENDS_perl-module-b-deparse += "perl-module-bytes "
> -RDEPENDS_perl-module-b-deparse += "perl-module-carp "
> -RDEPENDS_perl-module-b-deparse += "perl-module-integer "
> -RDEPENDS_perl-module-b-deparse += "perl-module-re "
> -RDEPENDS_perl-module-b-deparse += "perl-module-strict "
> -RDEPENDS_perl-module-b-deparse += "perl-module-utf8 "
> -RDEPENDS_perl-module-b-deparse += "perl-module-warnings "
> -RDEPENDS_perl-module-b-deparse += "perl-module-warnings "
> -RDEPENDS_perl-module-b-deparse += "perl-module-vars "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-b "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-carp "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-config "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-exporter "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-filehandle "
> -RDEPENDS_perl-module-b-disassembler += "perl-module-strict "
> -RDEPENDS_perl-module-benchmark += "perl-module-carp "
> -RDEPENDS_perl-module-benchmark += "perl-module-exporter "
> -RDEPENDS_perl-module-benchmark += "perl-module-strict "
> -RDEPENDS_perl-module-bigint += "perl-module-exporter "
> -RDEPENDS_perl-module-bigint += "perl-module-overload "
> -RDEPENDS_perl-module-bigint += "perl-module-strict "
> -RDEPENDS_perl-module-bignum += "perl-module-exporter "
> -RDEPENDS_perl-module-bignum += "perl-module-strict "
> -RDEPENDS_perl-module-bigrat += "perl-module-exporter "
> -RDEPENDS_perl-module-bigrat += "perl-module-strict "
> -RDEPENDS_perl-module-blib += "perl-module-cwd "
> -RDEPENDS_perl-module-blib += "perl-module-file-spec "
> -RDEPENDS_perl-module-blib += "perl-module-vars "
> -RDEPENDS_perl-module-b-lint += "perl-module-strict "
> -RDEPENDS_perl-module-b-showlex += "perl-module-b "
> -RDEPENDS_perl-module-b-showlex += "perl-module-b-concise "
> -RDEPENDS_perl-module-b-showlex += "perl-module-b-terse "
> -RDEPENDS_perl-module-b-showlex += "perl-module-strict "
> -RDEPENDS_perl-module-b-stackobj += "perl-module-b "
> -RDEPENDS_perl-module-b-stackobj += "perl-module-carp "
> -RDEPENDS_perl-module-b-stackobj += "perl-module-exporter "
> -RDEPENDS_perl-module-b-stackobj += "perl-module-strict "
> -RDEPENDS_perl-module-b-terse += "perl-module-b "
> -RDEPENDS_perl-module-b-terse += "perl-module-b-asmdata "
> -RDEPENDS_perl-module-b-terse += "perl-module-b-concise "
> -RDEPENDS_perl-module-b-terse += "perl-module-carp "
> -RDEPENDS_perl-module-b-terse += "perl-module-strict "
> -RDEPENDS_perl-module-b += "perl-module-exporter "
> -RDEPENDS_perl-module-b += "perl-module-strict "
> -RDEPENDS_perl-module-b += "perl-module-xsloader "
> -RDEPENDS_perl-module-b-xref += "perl-module-config "
> -RDEPENDS_perl-module-b-xref += "perl-module-strict "
> -RDEPENDS_perl-module-byteloader += "perl-module-xsloader "
> -RDEPENDS_perl-module-carp-heavy += "perl-module-carp "
> -RDEPENDS_perl-module-carp += "perl-module-exporter "
> -RDEPENDS_perl-module-cgi-apache += "perl-module-cgi "
> -RDEPENDS_perl-module-cgi-carp += "perl-module-exporter "
> -RDEPENDS_perl-module-cgi-carp += "perl-module-file-spec "
> -RDEPENDS_perl-module-cgi-cookie += "perl-module-cgi-util "
> -RDEPENDS_perl-module-cgi-fast += "perl-module-cgi "
> -RDEPENDS_perl-module-cgi-fast += "perl-module-vars "
> -RDEPENDS_perl-module-cgi-pretty += "perl-module-cgi "
> -RDEPENDS_perl-module-cgi-pretty += "perl-module-strict "
> -RDEPENDS_perl-module-cgi-push += "perl-module-cgi "
> -RDEPENDS_perl-module-cgi-push += "perl-module-cgi-util "
> -RDEPENDS_perl-module-cgi-switch += "perl-module-cgi "
> -RDEPENDS_perl-module-cgi += "perl-module-carp "
> -RDEPENDS_perl-module-cgi += "perl-module-cgi-util "
> -RDEPENDS_perl-module-cgi += "perl-module-constant "
> -RDEPENDS_perl-module-cgi-util += "perl-module-exporter "
> -RDEPENDS_perl-module-cgi-util += "perl-module-strict "
> -RDEPENDS_perl-module-cgi-util += "perl-module-vars "
> -RDEPENDS_perl-module-charnames += "perl-module-carp "
> -RDEPENDS_perl-module-charnames += "perl-module-file-spec "
> -RDEPENDS_perl-module-charnames += "perl-module-strict "
> -RDEPENDS_perl-module-charnames += "perl-module-warnings "
> -RDEPENDS_perl-module-class-isa += "perl-module-strict "
> -RDEPENDS_perl-module-class-isa += "perl-module-vars "
> -RDEPENDS_perl-module-class-struct += "perl-module-exporter "
> -RDEPENDS_perl-module-class-struct += "perl-module-carp "
> -RDEPENDS_perl-module-class-struct += "perl-module-strict "
> -RDEPENDS_perl-module-class-struct += "perl-module-warnings-register "
> -RDEPENDS_perl-module-config += "perl-module-strict "
> -RDEPENDS_perl-module-constant += "perl-module-strict "
> -RDEPENDS_perl-module-constant += "perl-module-warnings-register "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-file-basename "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-filehandle "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-file-path "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-file-spec "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-strict "
> -RDEPENDS_perl-module-cpan-firsttime += "perl-module-vars "
> -RDEPENDS_perl-module-cpan-nox += "perl-module-base "
> -RDEPENDS_perl-module-cpan-nox += "perl-module-cpan "
> -RDEPENDS_perl-module-cpan-nox += "perl-module-strict "
> -RDEPENDS_perl-module-cpan-nox += "perl-module-vars "
> -RDEPENDS_perl-module-cpan += "perl-module-carp "
> -RDEPENDS_perl-module-cpan += "perl-module-config "
> -RDEPENDS_perl-module-cpan += "perl-module-cwd "
> -RDEPENDS_perl-module-cpan += "perl-module-dirhandle "
> -RDEPENDS_perl-module-cpan += "perl-module-exporter "
> -RDEPENDS_perl-module-cpan += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-cpan += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-cpan += "perl-module-file-basename "
> -RDEPENDS_perl-module-cpan += "perl-module-file-copy "
> -RDEPENDS_perl-module-cpan += "perl-module-file-find "
> -RDEPENDS_perl-module-cpan += "perl-module-filehandle "
> -RDEPENDS_perl-module-cpan += "perl-module-file-path "
> -RDEPENDS_perl-module-cpan += "perl-module-file-spec "
> -RDEPENDS_perl-module-cpan += "perl-module-overload "
> -RDEPENDS_perl-module-cpan += "perl-module-safe "
> -RDEPENDS_perl-module-cpan += "perl-module-strict "
> -RDEPENDS_perl-module-cpan += "perl-module-sys-hostname "
> -RDEPENDS_perl-module-cpan += "perl-module-text-parsewords "
> -RDEPENDS_perl-module-cpan += "perl-module-text-wrap "
> -RDEPENDS_perl-module-cpan += "perl-module-vars "
> -RDEPENDS_perl-module-cwd += "perl-module-exporter "
> -RDEPENDS_perl-module-cwd += "perl-module-strict "
> -RDEPENDS_perl-module-cwd += "perl-module-vars "
> -RDEPENDS_perl-module-data-dumper += "perl-module-exporter "
> -RDEPENDS_perl-module-data-dumper += "perl-module-overload "
> -RDEPENDS_perl-module-data-dumper += "perl-module-carp "
> -RDEPENDS_perl-module-dbm-filter-compress += "perl-module-carp "
> -RDEPENDS_perl-module-dbm-filter-compress += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter-compress += "perl-module-warnings "
> -RDEPENDS_perl-module-dbm-filter-encode += "perl-module-carp "
> -RDEPENDS_perl-module-dbm-filter-encode += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter-encode += "perl-module-warnings "
> -RDEPENDS_perl-module-dbm-filter-int32 += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter-int32 += "perl-module-warnings "
> -RDEPENDS_perl-module-dbm-filter-null += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter-null += "perl-module-warnings "
> -RDEPENDS_perl-module-dbm-filter += "perl-module-carp "
> -RDEPENDS_perl-module-dbm-filter += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter += "perl-module-warnings "
> -RDEPENDS_perl-module-dbm-filter-utf8 += "perl-module-carp "
> -RDEPENDS_perl-module-dbm-filter-utf8 += "perl-module-strict "
> -RDEPENDS_perl-module-dbm-filter-utf8 += "perl-module-warnings "
> -RDEPENDS_perl-module-devel-dprof += "perl-module-xsloader "
> -RDEPENDS_perl-module-devel-peek += "perl-module-exporter "
> -RDEPENDS_perl-module-devel-peek += "perl-module-xsloader "
> -RDEPENDS_perl-module-devel-ppport += "perl-module-dynaloader "
> -RDEPENDS_perl-module-devel-ppport += "perl-module-strict "
> -RDEPENDS_perl-module-devel-ppport += "perl-module-vars "
> -RDEPENDS_perl-module-devel-selfstubber += "perl-module-selfloader "
> -RDEPENDS_perl-module-devel-selfstubber += "perl-module-file-spec "
> -RDEPENDS_perl-module-diagnostics += "perl-module-carp "
> -RDEPENDS_perl-module-diagnostics += "perl-module-config "
> -RDEPENDS_perl-module-diagnostics += "perl-module-strict "
> -RDEPENDS_perl-module-digest-base += "perl-module-strict "
> -RDEPENDS_perl-module-digest-base += "perl-module-vars "
> -RDEPENDS_perl-module-digest-file += "perl-module-carp "
> -RDEPENDS_perl-module-digest-file += "perl-module-digest "
> -RDEPENDS_perl-module-digest-file += "perl-module-exporter "
> -RDEPENDS_perl-module-digest-file += "perl-module-strict "
> -RDEPENDS_perl-module-digest-file += "perl-module-vars "
> -RDEPENDS_perl-module-digest-md5 += "perl-module-dynaloader "
> -RDEPENDS_perl-module-digest-md5 += "perl-module-exporter "
> -RDEPENDS_perl-module-digest-md5 += "perl-module-strict "
> -RDEPENDS_perl-module-digest-md5 += "perl-module-vars "
> -RDEPENDS_perl-module-digest += "perl-module-strict "
> -RDEPENDS_perl-module-digest += "perl-module-vars "
> -RDEPENDS_perl-module-dirhandle += "perl-module-carp "
> -RDEPENDS_perl-module-dirhandle += "perl-module-symbol "
> -RDEPENDS_perl-module-dumpvalue += "perl-module-strict "
> -RDEPENDS_perl-module-dynaloader += "perl-module-autoloader "
> -RDEPENDS_perl-module-dynaloader += "perl-module-config "
> -RDEPENDS_perl-module-dynaloader += "perl-module-vars "
> -RDEPENDS_perl-module-encode-alias += "perl-module-base "
> -RDEPENDS_perl-module-encode-alias += "perl-module-encode "
> -RDEPENDS_perl-module-encode-alias += "perl-module-strict "
> -RDEPENDS_perl-module-encode-byte += "perl-module-encode "
> -RDEPENDS_perl-module-encode-byte += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-cjkconstants += "perl-module-exporter "
> -RDEPENDS_perl-module-encode-cjkconstants += "perl-module-carp "
> -RDEPENDS_perl-module-encode-cjkconstants += "perl-module-strict "
> -RDEPENDS_perl-module-encode-cn-hz += "perl-module-base "
> -RDEPENDS_perl-module-encode-cn-hz += "perl-module-encode "
> -RDEPENDS_perl-module-encode-cn-hz += "perl-module-strict "
> -RDEPENDS_perl-module-encode-cn-hz += "perl-module-vars "
> -RDEPENDS_perl-module-encode-cn += "perl-module-encode "
> -RDEPENDS_perl-module-encode-cn += "perl-module-encode-cn-hz "
> -RDEPENDS_perl-module-encode-cn += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-config += "perl-module-strict "
> -RDEPENDS_perl-module-encode-ebcdic += "perl-module-encode "
> -RDEPENDS_perl-module-encode-ebcdic += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-encoder += "perl-module-exporter "
> -RDEPENDS_perl-module-encode-encoder += "perl-module-carp "
> -RDEPENDS_perl-module-encode-encoder += "perl-module-encode "
> -RDEPENDS_perl-module-encode-encoder += "perl-module-strict "
> -RDEPENDS_perl-module-encode-encoder += "perl-module-warnings "
> -RDEPENDS_perl-module-encode-encoding += "perl-module-encode "
> -RDEPENDS_perl-module-encode-encoding += "perl-module-strict "
> -RDEPENDS_perl-module-encode-guess += "perl-module-base "
> -RDEPENDS_perl-module-encode-guess += "perl-module-encode "
> -RDEPENDS_perl-module-encode-guess += "perl-module-strict "
> -RDEPENDS_perl-module-encode-jp-h2z += "perl-module-encode-cjkconstants "
> -RDEPENDS_perl-module-encode-jp-h2z += "perl-module-strict "
> -RDEPENDS_perl-module-encode-jp-jis7 += "perl-module-base "
> -RDEPENDS_perl-module-encode-jp-jis7 += "perl-module-encode "
> -RDEPENDS_perl-module-encode-jp-jis7 += "perl-module-encode-cjkconstants "
> -RDEPENDS_perl-module-encode-jp-jis7 += "perl-module-strict "
> -RDEPENDS_perl-module-encode-jp += "perl-module-encode "
> -RDEPENDS_perl-module-encode-jp += "perl-module-encode-jp-jis7 "
> -RDEPENDS_perl-module-encode-jp += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-kr-2022-kr += "perl-module-base "
> -RDEPENDS_perl-module-encode-kr-2022-kr += "perl-module-encode "
> -RDEPENDS_perl-module-encode-kr-2022-kr += "perl-module-encode-cjkconstants "
> -RDEPENDS_perl-module-encode-kr-2022-kr += "perl-module-strict "
> -RDEPENDS_perl-module-encode-kr += "perl-module-encode "
> -RDEPENDS_perl-module-encode-kr += "perl-module-encode-kr-2022-kr "
> -RDEPENDS_perl-module-encode-kr += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-base "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-carp "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-constant "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-encode "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-mime-base64 "
> -RDEPENDS_perl-module-encode-mime-header += "perl-module-strict "
> -RDEPENDS_perl-module-encode-symbol += "perl-module-encode "
> -RDEPENDS_perl-module-encode-symbol += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-tw += "perl-module-encode "
> -RDEPENDS_perl-module-encode-tw += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-unicode += "perl-module-encode "
> -RDEPENDS_perl-module-encode-unicode += "perl-module-base "
> -RDEPENDS_perl-module-encode-unicode += "perl-module-strict "
> -RDEPENDS_perl-module-encode-unicode += "perl-module-warnings "
> -RDEPENDS_perl-module-encode-unicode += "perl-module-xsloader "
> -RDEPENDS_perl-module-encode-unicode-utf7 += "perl-module-base "
> -RDEPENDS_perl-module-encode-unicode-utf7 += "perl-module-encode "
> -RDEPENDS_perl-module-encode-unicode-utf7 += "perl-module-mime-base64 "
> -RDEPENDS_perl-module-encode-unicode-utf7 += "perl-module-strict "
> -RDEPENDS_perl-module-encode += "perl-module-encode-config "
> -RDEPENDS_perl-module-encode += "perl-module-exporter "
> -RDEPENDS_perl-module-encode += "perl-module-base "
> -RDEPENDS_perl-module-encode += "perl-module-encode-alias "
> -RDEPENDS_perl-module-encode += "perl-module-strict "
> -RDEPENDS_perl-module-encode += "perl-module-xsloader "
> -RDEPENDS_perl-module-encoding += "perl-module-encode "
> -RDEPENDS_perl-module-encoding += "perl-module-strict "
> -RDEPENDS_perl-module-english += "perl-module-exporter "
> -RDEPENDS_perl-module-env += "perl-module-config "
> -RDEPENDS_perl-module-env += "perl-module-tie-array "
> -RDEPENDS_perl-module-errno += "perl-module-config "
> -RDEPENDS_perl-module-errno += "perl-module-exporter "
> -RDEPENDS_perl-module-errno += "perl-module-strict "
> -RDEPENDS_perl-module-exporter-heavy += "perl-module-exporter "
> -RDEPENDS_perl-module-exporter-heavy += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-command-mm += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-command-mm += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-command-mm += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-command += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-command += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-command += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-command += "perl-module-file-compare "
> -RDEPENDS_perl-module-extutils-command += "perl-module-file-copy "
> -RDEPENDS_perl-module-extutils-command += "perl-module-file-path "
> -RDEPENDS_perl-module-extutils-command += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-command += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-constant-base += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-constant-base += "perl-module-extutils-constant-utils "
> -RDEPENDS_perl-module-extutils-constant-base += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-constant-base += "perl-module-text-wrap "
> -RDEPENDS_perl-module-extutils-constant-base += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-extutils-constant-utils "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-extutils-constant-xs "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-constant += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-constant-utils += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-constant-utils += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-constant-utils += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-extutils-constant-base "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-extutils-constant "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-extutils-constant-utils "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-constant-xs += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-filehandle "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-config "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-getopt-std "
> -RDEPENDS_perl-module-extutils-embed += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-config "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-extutils-packlist "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-file-find "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-installed += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-install += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-install += "perl-module-config "
> -RDEPENDS_perl-module-extutils-install += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-install += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-install += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-config "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-cwd "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-liblist-kid += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-liblist += "perl-module-extutils-liblist-kid "
> -RDEPENDS_perl-module-extutils-liblist += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-liblist += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-makemaker-bytes += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-makemaker += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-makemaker += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-makemaker += "perl-module-config "
> -RDEPENDS_perl-module-extutils-makemaker += "perl-module-file-path "
> -RDEPENDS_perl-module-extutils-makemaker += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-makemaker-vmsish += "perl-module-vmsish "
> -RDEPENDS_perl-module-extutils-makemaker-vmsish += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-config "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-file-copy "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-file-find "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-manifest += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-miniperl += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mkbootstrap += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mkbootstrap += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mksymlists += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-mksymlists += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mksymlists += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mksymlists += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mksymlists += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-any += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-any += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-mm-any += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-any += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-beos += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-beos += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-beos += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-beos += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-mm-beos += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-cygwin += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-dos += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-dos += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-dos += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-dos += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-cwd "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-mm-macos += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-extutils-mm-win32 "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-nw5 += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-os2 += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-dirhandle "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-mm-unix += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm += "perl-module-extutils-liblist "
> -RDEPENDS_perl-module-extutils-mm += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-uwin += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-uwin += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-uwin += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-win32 += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-win95 += "perl-module-extutils-mm-win32 "
> -RDEPENDS_perl-module-extutils-mm-win95 += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-win95 += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-exporter "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-extutils-mm-any "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-extutils-mm-unix "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-config "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-extutils-makemaker "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-file-basename "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-mm-vms += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-my += "perl-module-extutils-mm "
> -RDEPENDS_perl-module-extutils-my += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-my += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-packlist += "perl-module-carp "
> -RDEPENDS_perl-module-extutils-packlist += "perl-module-strict "
> -RDEPENDS_perl-module-extutils-packlist += "perl-module-vars "
> -RDEPENDS_perl-module-extutils-testlib += "perl-module-cwd "
> -RDEPENDS_perl-module-extutils-testlib += "perl-module-file-spec "
> -RDEPENDS_perl-module-extutils-testlib += "perl-module-lib "
> -RDEPENDS_perl-module-fatal += "perl-module-carp "
> -RDEPENDS_perl-module-fatal += "perl-module-strict "
> -RDEPENDS_perl-module-fcntl += "perl-module-exporter "
> -RDEPENDS_perl-module-fcntl += "perl-module-xsloader "
> -RDEPENDS_perl-module-fields += "perl-module-strict "
> -RDEPENDS_perl-module-fields += "perl-module-vars "
> -RDEPENDS_perl-module-file-basename += "perl-module-exporter "
> -RDEPENDS_perl-module-file-basename += "perl-module-warnings "
> -RDEPENDS_perl-module-filecache += "perl-module-base "
> -RDEPENDS_perl-module-filecache += "perl-module-carp "
> -RDEPENDS_perl-module-filecache += "perl-module-config "
> -RDEPENDS_perl-module-filecache += "perl-module-strict "
> -RDEPENDS_perl-module-filecache += "perl-module-vars "
> -RDEPENDS_perl-module-file-checktree += "perl-module-cwd "
> -RDEPENDS_perl-module-file-checktree += "perl-module-exporter "
> -RDEPENDS_perl-module-file-checktree += "perl-module-file-spec "
> -RDEPENDS_perl-module-file-checktree += "perl-module-strict "
> -RDEPENDS_perl-module-file-checktree += "perl-module-warnings "
> -RDEPENDS_perl-module-file-compare += "perl-module-exporter "
> -RDEPENDS_perl-module-file-compare += "perl-module-carp "
> -RDEPENDS_perl-module-file-compare += "perl-module-strict "
> -RDEPENDS_perl-module-file-compare += "perl-module-warnings "
> -RDEPENDS_perl-module-file-copy += "perl-module-exporter "
> -RDEPENDS_perl-module-file-copy += "perl-module-carp "
> -RDEPENDS_perl-module-file-copy += "perl-module-config "
> -RDEPENDS_perl-module-file-copy += "perl-module-file-spec "
> -RDEPENDS_perl-module-file-copy += "perl-module-strict "
> -RDEPENDS_perl-module-file-copy += "perl-module-warnings "
> -RDEPENDS_perl-module-file-dosglob += "perl-module-strict "
> -RDEPENDS_perl-module-file-dosglob += "perl-module-warnings "
> -RDEPENDS_perl-module-file-find += "perl-module-cwd "
> -RDEPENDS_perl-module-file-find += "perl-module-exporter "
> -RDEPENDS_perl-module-file-find += "perl-module-file-basename "
> -RDEPENDS_perl-module-file-find += "perl-module-file-spec "
> -RDEPENDS_perl-module-file-find += "perl-module-strict "
> -RDEPENDS_perl-module-file-find += "perl-module-warnings "
> -RDEPENDS_perl-module-file-find += "perl-module-warnings-register "
> -RDEPENDS_perl-module-file-glob += "perl-module-strict "
> -RDEPENDS_perl-module-file-glob += "perl-module-xsloader "
> -RDEPENDS_perl-module-filehandle += "perl-module-io-file "
> -RDEPENDS_perl-module-filehandle += "perl-module-strict "
> -RDEPENDS_perl-module-file-path += "perl-module-carp "
> -RDEPENDS_perl-module-file-path += "perl-module-exporter "
> -RDEPENDS_perl-module-file-path += "perl-module-file-basename "
> -RDEPENDS_perl-module-file-path += "perl-module-strict "
> -RDEPENDS_perl-module-file-path += "perl-module-warnings "
> -RDEPENDS_perl-module-file-spec-cygwin += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-cygwin += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-cygwin += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-epoc += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-epoc += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-epoc += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-functions += "perl-module-exporter "
> -RDEPENDS_perl-module-file-spec-functions += "perl-module-file-spec "
> -RDEPENDS_perl-module-file-spec-functions += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-functions += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-mac += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-mac += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-mac += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-os2 += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-os2 += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-os2 += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-unix += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-unix += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-win32 += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-win32 += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-win32 += "perl-module-vars "
> -RDEPENDS_perl-module-file-spec-vms += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-file-spec-vms += "perl-module-file-basename "
> -RDEPENDS_perl-module-file-spec-vms += "perl-module-strict "
> -RDEPENDS_perl-module-file-spec-vms += "perl-module-vars "
> -RDEPENDS_perl-module-file-stat += "perl-module-class-struct "
> -RDEPENDS_perl-module-file-stat += "perl-module-strict "
> -RDEPENDS_perl-module-file-stat += "perl-module-warnings "
> -RDEPENDS_perl-module-file-stat += "perl-module-vars "
> -RDEPENDS_perl-module-file-temp += "perl-module-base "
> -RDEPENDS_perl-module-file-temp += "perl-module-carp "
> -RDEPENDS_perl-module-file-temp += "perl-module-constant "
> -RDEPENDS_perl-module-file-temp += "perl-module-errno "
> -RDEPENDS_perl-module-file-temp += "perl-module-fcntl "
> -RDEPENDS_perl-module-file-temp += "perl-module-file-path "
> -RDEPENDS_perl-module-file-temp += "perl-module-file-spec "
> -RDEPENDS_perl-module-file-temp += "perl-module-overload "
> -RDEPENDS_perl-module-file-temp += "perl-module-strict "
> -RDEPENDS_perl-module-file-temp += "perl-module-vars "
> -RDEPENDS_perl-module-filter-simple += "perl-module-carp "
> -RDEPENDS_perl-module-filter-simple += "perl-module-filter-util-call "
> -RDEPENDS_perl-module-filter-simple += "perl-module-text-balanced "
> -RDEPENDS_perl-module-filter-simple += "perl-module-vars "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-dynaloader "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-exporter "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-carp "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-strict "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-warnings "
> -RDEPENDS_perl-module-filter-util-call += "perl-module-vars "
> -RDEPENDS_perl-module-findbin += "perl-module-exporter "
> -RDEPENDS_perl-module-findbin += "perl-module-carp "
> -RDEPENDS_perl-module-findbin += "perl-module-config "
> -RDEPENDS_perl-module-findbin += "perl-module-cwd "
> -RDEPENDS_perl-module-findbin += "perl-module-file-basename "
> -RDEPENDS_perl-module-findbin += "perl-module-file-spec "
> -RDEPENDS_perl-module-getopt-long += "perl-module-constant "
> -RDEPENDS_perl-module-getopt-long += "perl-module-exporter "
> -RDEPENDS_perl-module-getopt-long += "perl-module-strict "
> -RDEPENDS_perl-module-getopt-long += "perl-module-vars "
> -RDEPENDS_perl-module-getopt-std += "perl-module-exporter "
> -RDEPENDS_perl-module-hash-util += "perl-module-exporter "
> -RDEPENDS_perl-module-hash-util += "perl-module-carp "
> -RDEPENDS_perl-module-hash-util += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-collate += "perl-module-exporter "
> -RDEPENDS_perl-module-i18n-collate += "perl-module-posix "
> -RDEPENDS_perl-module-i18n-collate += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-collate += "perl-module-warnings-register "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-dynaloader "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-exporter "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-autoloader "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-carp "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-langinfo += "perl-module-warnings "
> -RDEPENDS_perl-module-i18n-langtags-detect += "perl-module-i18n-langtags "
> -RDEPENDS_perl-module-i18n-langtags-detect += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-langtags-list += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-langtags-list += "perl-module-vars "
> -RDEPENDS_perl-module-i18n-langtags += "perl-module-exporter "
> -RDEPENDS_perl-module-i18n-langtags += "perl-module-strict "
> -RDEPENDS_perl-module-i18n-langtags += "perl-module-vars "
> -RDEPENDS_perl-module-io-dir += "perl-module-carp "
> -RDEPENDS_perl-module-io-dir += "perl-module-exporter "
> -RDEPENDS_perl-module-io-dir += "perl-module-file-spec "
> -RDEPENDS_perl-module-io-dir += "perl-module-file-stat "
> -RDEPENDS_perl-module-io-dir += "perl-module-io-file "
> -RDEPENDS_perl-module-io-dir += "perl-module-strict "
> -RDEPENDS_perl-module-io-dir += "perl-module-symbol "
> -RDEPENDS_perl-module-io-dir += "perl-module-tie-hash "
> -RDEPENDS_perl-module-io-file += "perl-module-exporter "
> -RDEPENDS_perl-module-io-file += "perl-module-carp "
> -RDEPENDS_perl-module-io-file += "perl-module-file-spec "
> -RDEPENDS_perl-module-io-file += "perl-module-io-seekable "
> -RDEPENDS_perl-module-io-file += "perl-module-selectsaver "
> -RDEPENDS_perl-module-io-file += "perl-module-strict "
> -RDEPENDS_perl-module-io-file += "perl-module-symbol "
> -RDEPENDS_perl-module-io-handle += "perl-module-exporter "
> -RDEPENDS_perl-module-io-handle += "perl-module-carp "
> -RDEPENDS_perl-module-io-handle += "perl-module-selectsaver "
> -RDEPENDS_perl-module-io-handle += "perl-module-strict "
> -RDEPENDS_perl-module-io-handle += "perl-module-symbol "
> -RDEPENDS_perl-module-io-pipe += "perl-module-carp "
> -RDEPENDS_perl-module-io-pipe += "perl-module-io-handle "
> -RDEPENDS_perl-module-io-pipe += "perl-module-strict "
> -RDEPENDS_perl-module-io-pipe += "perl-module-symbol "
> -RDEPENDS_perl-module-io-poll += "perl-module-exporter "
> -RDEPENDS_perl-module-io-poll += "perl-module-io-handle "
> -RDEPENDS_perl-module-io-poll += "perl-module-strict "
> -RDEPENDS_perl-module-io-seekable += "perl-module-exporter "
> -RDEPENDS_perl-module-io-seekable += "perl-module-carp "
> -RDEPENDS_perl-module-io-seekable += "perl-module-fcntl "
> -RDEPENDS_perl-module-io-seekable += "perl-module-io-handle "
> -RDEPENDS_perl-module-io-seekable += "perl-module-strict "
> -RDEPENDS_perl-module-io-select += "perl-module-exporter "
> -RDEPENDS_perl-module-io-select += "perl-module-strict "
> -RDEPENDS_perl-module-io-select += "perl-module-warnings-register "
> -RDEPENDS_perl-module-io-select += "perl-module-vars "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-carp "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-errno "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-exporter "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-io-socket "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-socket "
> -RDEPENDS_perl-module-io-socket-inet += "perl-module-strict "
> -RDEPENDS_perl-module-io-socket-unix += "perl-module-carp "
> -RDEPENDS_perl-module-io-socket-unix += "perl-module-io-socket "
> -RDEPENDS_perl-module-io-socket-unix += "perl-module-socket "
> -RDEPENDS_perl-module-io-socket-unix += "perl-module-strict "
> -RDEPENDS_perl-module-io-socket += "perl-module-io-socket-inet "
> -RDEPENDS_perl-module-io-socket += "perl-module-io-socket-unix "
> -RDEPENDS_perl-module-io-socket += "perl-module-carp "
> -RDEPENDS_perl-module-io-socket += "perl-module-errno "
> -RDEPENDS_perl-module-io-socket += "perl-module-exporter "
> -RDEPENDS_perl-module-io-socket += "perl-module-io-handle "
> -RDEPENDS_perl-module-io-socket += "perl-module-socket "
> -RDEPENDS_perl-module-io-socket += "perl-module-strict "
> -RDEPENDS_perl-module-io += "perl-module-carp "
> -RDEPENDS_perl-module-io += "perl-module-strict "
> -RDEPENDS_perl-module-io += "perl-module-warnings "
> -RDEPENDS_perl-module-io += "perl-module-xsloader "
> -RDEPENDS_perl-module-ipc-msg += "perl-module-carp "
> -RDEPENDS_perl-module-ipc-msg += "perl-module-ipc-sysv "
> -RDEPENDS_perl-module-ipc-msg += "perl-module-strict "
> -RDEPENDS_perl-module-ipc-msg += "perl-module-vars "
> -RDEPENDS_perl-module-ipc-open2 += "perl-module-exporter "
> -RDEPENDS_perl-module-ipc-open2 += "perl-module-ipc-open3 "
> -RDEPENDS_perl-module-ipc-open2 += "perl-module-strict "
> -RDEPENDS_perl-module-ipc-open3 += "perl-module-exporter "
> -RDEPENDS_perl-module-ipc-open3 += "perl-module-carp "
> -RDEPENDS_perl-module-ipc-open3 += "perl-module-strict "
> -RDEPENDS_perl-module-ipc-open3 += "perl-module-symbol "
> -RDEPENDS_perl-module-ipc-semaphore += "perl-module-carp "
> -RDEPENDS_perl-module-ipc-semaphore += "perl-module-strict "
> -RDEPENDS_perl-module-ipc-semaphore += "perl-module-vars "
> -RDEPENDS_perl-module-ipc-sysv += "perl-module-exporter "
> -RDEPENDS_perl-module-ipc-sysv += "perl-module-carp "
> -RDEPENDS_perl-module-ipc-sysv += "perl-module-config "
> -RDEPENDS_perl-module-ipc-sysv += "perl-module-strict "
> -RDEPENDS_perl-module-ipc-sysv += "perl-module-vars "
> -RDEPENDS_perl-module-lib += "perl-module-config "
> -RDEPENDS_perl-module-lib += "perl-module-strict "
> -RDEPENDS_perl-module-list-util += "perl-module-exporter "
> -RDEPENDS_perl-module-list-util += "perl-module-vars "
> -RDEPENDS_perl-module-locale-constants += "perl-module-exporter "
> -RDEPENDS_perl-module-locale-constants += "perl-module-constant "
> -RDEPENDS_perl-module-locale-constants += "perl-module-strict "
> -RDEPENDS_perl-module-locale-constants += "perl-module-vars "
> -RDEPENDS_perl-module-locale-country += "perl-module-exporter "
> -RDEPENDS_perl-module-locale-country += "perl-module-carp "
> -RDEPENDS_perl-module-locale-country += "perl-module-locale-constants "
> -RDEPENDS_perl-module-locale-country += "perl-module-strict "
> -RDEPENDS_perl-module-locale-country += "perl-module-vars "
> -RDEPENDS_perl-module-locale-currency += "perl-module-exporter "
> -RDEPENDS_perl-module-locale-currency += "perl-module-strict "
> -RDEPENDS_perl-module-locale-currency += "perl-module-vars "
> -RDEPENDS_perl-module-locale-language += "perl-module-exporter "
> -RDEPENDS_perl-module-locale-language += "perl-module-strict "
> -RDEPENDS_perl-module-locale-language += "perl-module-vars "
> -RDEPENDS_perl-module-locale-maketext-gutsloader += "perl-module-strict "
> -RDEPENDS_perl-module-locale-maketext-guts += "perl-module-strict "
> -RDEPENDS_perl-module-locale-maketext-guts += "perl-module-utf8 "
> -RDEPENDS_perl-module-locale-maketext-guts += "perl-module-vars "
> -RDEPENDS_perl-module-locale-maketext += "perl-module-carp "
> -RDEPENDS_perl-module-locale-maketext += "perl-module-i18n-langtags "
> -RDEPENDS_perl-module-locale-maketext += "perl-module-locale-maketext-gutsloader "
> -RDEPENDS_perl-module-locale-maketext += "perl-module-strict "
> -RDEPENDS_perl-module-locale-script += "perl-module-exporter "
> -RDEPENDS_perl-module-locale-script += "perl-module-carp "
> -RDEPENDS_perl-module-locale-script += "perl-module-locale-constants "
> -RDEPENDS_perl-module-locale-script += "perl-module-strict "
> -RDEPENDS_perl-module-locale-script += "perl-module-vars "
> -RDEPENDS_perl-module-math-bigfloat-trace += "perl-module-exporter "
> -RDEPENDS_perl-module-math-bigfloat-trace += "perl-module-math-bigfloat "
> -RDEPENDS_perl-module-math-bigfloat-trace += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigfloat += "perl-module-exporter "
> -RDEPENDS_perl-module-math-bigfloat += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigint-calcemu += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigint-calcemu += "perl-module-vars "
> -RDEPENDS_perl-module-math-bigint-calc += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigint-calc += "perl-module-vars "
> -RDEPENDS_perl-module-math-bigint-trace += "perl-module-exporter "
> -RDEPENDS_perl-module-math-bigint-trace += "perl-module-math-bigint "
> -RDEPENDS_perl-module-math-bigint-trace += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigint += "perl-module-strict "
> -RDEPENDS_perl-module-math-bigrat += "perl-module-math-bigfloat "
> -RDEPENDS_perl-module-math-bigrat += "perl-module-strict "
> -RDEPENDS_perl-module-math-complex += "perl-module-exporter "
> -RDEPENDS_perl-module-math-complex += "perl-module-strict "
> -RDEPENDS_perl-module-math-trig += "perl-module-exporter "
> -RDEPENDS_perl-module-math-trig += "perl-module-math-complex "
> -RDEPENDS_perl-module-math-trig += "perl-module-strict "
> -RDEPENDS_perl-module-memoize-anydbm-file += "perl-module-vars "
> -RDEPENDS_perl-module-memoize-expirefile += "perl-module-carp "
> -RDEPENDS_perl-module-memoize-expire += "perl-module-carp "
> -RDEPENDS_perl-module-memoize-sdbm-file += "perl-module-sdbm-file "
> -RDEPENDS_perl-module-memoize-storable += "perl-module-storable "
> -RDEPENDS_perl-module-memoize += "perl-module-carp "
> -RDEPENDS_perl-module-memoize += "perl-module-exporter "
> -RDEPENDS_perl-module-memoize += "perl-module-strict "
> -RDEPENDS_perl-module-memoize += "perl-module-vars "
> -RDEPENDS_perl-module-mime-base64 += "perl-module-dynaloader "
> -RDEPENDS_perl-module-mime-base64 += "perl-module-exporter "
> -RDEPENDS_perl-module-mime-base64 += "perl-module-strict "
> -RDEPENDS_perl-module-mime-base64 += "perl-module-vars "
> -RDEPENDS_perl-module-mime-quotedprint += "perl-module-exporter "
> -RDEPENDS_perl-module-mime-quotedprint += "perl-module-strict "
> -RDEPENDS_perl-module-mime-quotedprint += "perl-module-vars "
> -RDEPENDS_perl-module-net-cmd += "perl-module-exporter "
> -RDEPENDS_perl-module-net-cmd += "perl-module-carp "
> -RDEPENDS_perl-module-net-cmd += "perl-module-strict "
> -RDEPENDS_perl-module-net-cmd += "perl-module-symbol "
> -RDEPENDS_perl-module-net-cmd += "perl-module-vars "
> -RDEPENDS_perl-module-net-config += "perl-module-exporter "
> -RDEPENDS_perl-module-net-config += "perl-module-socket "
> -RDEPENDS_perl-module-net-config += "perl-module-strict "
> -RDEPENDS_perl-module-net-config += "perl-module-vars "
> -RDEPENDS_perl-module-net-domain += "perl-module-exporter "
> -RDEPENDS_perl-module-net-domain += "perl-module-carp "
> -RDEPENDS_perl-module-net-domain += "perl-module-net-config "
> -RDEPENDS_perl-module-net-domain += "perl-module-strict "
> -RDEPENDS_perl-module-net-domain += "perl-module-vars "
> -RDEPENDS_perl-module-net-ftp-a += "perl-module-net-ftp-dataconn "
> -RDEPENDS_perl-module-net-ftp-a += "perl-module-carp "
> -RDEPENDS_perl-module-net-ftp-a += "perl-module-strict "
> -RDEPENDS_perl-module-net-ftp-a += "perl-module-vars "
> -RDEPENDS_perl-module-net-ftp-dataconn += "perl-module-carp "
> -RDEPENDS_perl-module-net-ftp-dataconn += "perl-module-errno "
> -RDEPENDS_perl-module-net-ftp-dataconn += "perl-module-net-cmd "
> -RDEPENDS_perl-module-net-ftp-dataconn += "perl-module-vars "
> -RDEPENDS_perl-module-net-ftp-e += "perl-module-net-ftp-i "
> -RDEPENDS_perl-module-net-ftp-i += "perl-module-net-ftp-dataconn "
> -RDEPENDS_perl-module-net-ftp-i += "perl-module-carp "
> -RDEPENDS_perl-module-net-ftp-i += "perl-module-vars "
> -RDEPENDS_perl-module-net-ftp-l += "perl-module-net-ftp-i "
> -RDEPENDS_perl-module-net-ftp += "perl-module-carp "
> -RDEPENDS_perl-module-net-ftp += "perl-module-fcntl "
> -RDEPENDS_perl-module-net-ftp += "perl-module-io-socket "
> -RDEPENDS_perl-module-net-ftp += "perl-module-net-cmd "
> -RDEPENDS_perl-module-net-ftp += "perl-module-net-config "
> -RDEPENDS_perl-module-net-ftp += "perl-module-socket "
> -RDEPENDS_perl-module-net-ftp += "perl-module-strict "
> -RDEPENDS_perl-module-net-ftp += "perl-module-time-local "
> -RDEPENDS_perl-module-net-ftp += "perl-module-vars "
> -RDEPENDS_perl-module-net-hostent += "perl-module-class-struct "
> -RDEPENDS_perl-module-net-hostent += "perl-module-strict "
> -RDEPENDS_perl-module-net-hostent += "perl-module-vars "
> -RDEPENDS_perl-module-net-netent += "perl-module-class-struct "
> -RDEPENDS_perl-module-net-netent += "perl-module-strict "
> -RDEPENDS_perl-module-net-netent += "perl-module-vars "
> -RDEPENDS_perl-module-net-netrc += "perl-module-carp "
> -RDEPENDS_perl-module-net-netrc += "perl-module-filehandle "
> -RDEPENDS_perl-module-net-netrc += "perl-module-strict "
> -RDEPENDS_perl-module-net-netrc += "perl-module-vars "
> -RDEPENDS_perl-module-net-nntp += "perl-module-carp "
> -RDEPENDS_perl-module-net-nntp += "perl-module-io-socket "
> -RDEPENDS_perl-module-net-nntp += "perl-module-net-cmd "
> -RDEPENDS_perl-module-net-nntp += "perl-module-net-config "
> -RDEPENDS_perl-module-net-nntp += "perl-module-strict "
> -RDEPENDS_perl-module-net-nntp += "perl-module-time-local "
> -RDEPENDS_perl-module-net-nntp += "perl-module-vars "
> -RDEPENDS_perl-module-net-ping += "perl-module-exporter "
> -RDEPENDS_perl-module-net-ping += "perl-module-carp "
> -RDEPENDS_perl-module-net-ping += "perl-module-constant "
> -RDEPENDS_perl-module-net-ping += "perl-module-fcntl "
> -RDEPENDS_perl-module-net-ping += "perl-module-filehandle "
> -RDEPENDS_perl-module-net-ping += "perl-module-posix "
> -RDEPENDS_perl-module-net-ping += "perl-module-strict "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-carp "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-io-socket "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-net-cmd "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-net-config "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-strict "
> -RDEPENDS_perl-module-net-pop3 += "perl-module-vars "
> -RDEPENDS_perl-module-net-protoent += "perl-module-class-struct "
> -RDEPENDS_perl-module-net-protoent += "perl-module-strict "
> -RDEPENDS_perl-module-net-protoent += "perl-module-vars "
> -RDEPENDS_perl-module-net-servent += "perl-module-class-struct "
> -RDEPENDS_perl-module-net-servent += "perl-module-strict "
> -RDEPENDS_perl-module-net-servent += "perl-module-vars "
> -RDEPENDS_perl-module-net-smtp += "perl-module-carp "
> -RDEPENDS_perl-module-net-smtp += "perl-module-io-socket "
> -RDEPENDS_perl-module-net-smtp += "perl-module-net-cmd "
> -RDEPENDS_perl-module-net-smtp += "perl-module-net-config "
> -RDEPENDS_perl-module-net-smtp += "perl-module-socket "
> -RDEPENDS_perl-module-net-smtp += "perl-module-strict "
> -RDEPENDS_perl-module-net-smtp += "perl-module-vars "
> -RDEPENDS_perl-module-net-time += "perl-module-exporter "
> -RDEPENDS_perl-module-net-time += "perl-module-carp "
> -RDEPENDS_perl-module-net-time += "perl-module-io-select "
> -RDEPENDS_perl-module-net-time += "perl-module-io-socket "
> -RDEPENDS_perl-module-net-time += "perl-module-net-config "
> -RDEPENDS_perl-module-net-time += "perl-module-strict "
> -RDEPENDS_perl-module-net-time += "perl-module-vars "
> -RDEPENDS_perl-module-next += "perl-module-carp "
> -RDEPENDS_perl-module-next += "perl-module-strict "
> -RDEPENDS_perl-module-opcode += "perl-module-carp "
> -RDEPENDS_perl-module-opcode += "perl-module-exporter "
> -RDEPENDS_perl-module-opcode += "perl-module-strict "
> -RDEPENDS_perl-module-opcode += "perl-module-subs "
> -RDEPENDS_perl-module-opcode += "perl-module-xsloader "
> -RDEPENDS_perl-module-open += "perl-module-carp "
> -RDEPENDS_perl-module-open += "perl-module-warnings "
> -RDEPENDS_perl-module-ops += "perl-module-opcode "
> -RDEPENDS_perl-module-o += "perl-module-b "
> -RDEPENDS_perl-module-o += "perl-module-carp "
> -RDEPENDS_perl-module-overload += "perl-module-warnings-register "
> -RDEPENDS_perl-module-perlio-encoding += "perl-module-strict "
> -RDEPENDS_perl-module-perlio-encoding += "perl-module-xsloader "
> -RDEPENDS_perl-module-perlio-scalar += "perl-module-xsloader "
> -RDEPENDS_perl-module-perlio-via-quotedprint += "perl-module-strict "
> -RDEPENDS_perl-module-perlio-via += "perl-module-xsloader "
> -RDEPENDS_perl-module-pod-checker += "perl-module-carp "
> -RDEPENDS_perl-module-pod-checker += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-checker += "perl-module-pod-parser "
> -RDEPENDS_perl-module-pod-checker += "perl-module-strict "
> -RDEPENDS_perl-module-pod-checker += "perl-module-vars "
> -RDEPENDS_perl-module-pod-find += "perl-module-carp "
> -RDEPENDS_perl-module-pod-find += "perl-module-cwd "
> -RDEPENDS_perl-module-pod-find += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-find += "perl-module-file-find "
> -RDEPENDS_perl-module-pod-find += "perl-module-file-spec "
> -RDEPENDS_perl-module-pod-find += "perl-module-strict "
> -RDEPENDS_perl-module-pod-find += "perl-module-vars "
> -RDEPENDS_perl-module-pod-functions += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-functions += "perl-module-strict "
> -RDEPENDS_perl-module-pod-html += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-html += "perl-module-carp "
> -RDEPENDS_perl-module-pod-html += "perl-module-config "
> -RDEPENDS_perl-module-pod-html += "perl-module-cwd "
> -RDEPENDS_perl-module-pod-html += "perl-module-file-spec "
> -RDEPENDS_perl-module-pod-html += "perl-module-file-spec-unix "
> -RDEPENDS_perl-module-pod-html += "perl-module-getopt-long "
> -RDEPENDS_perl-module-pod-html += "perl-module-strict "
> -RDEPENDS_perl-module-pod-html += "perl-module-vars "
> -RDEPENDS_perl-module-pod-inputobjects += "perl-module-strict "
> -RDEPENDS_perl-module-pod-inputobjects += "perl-module-vars "
> -RDEPENDS_perl-module-pod-latex += "perl-module-pod-parseutils "
> -RDEPENDS_perl-module-pod-latex += "perl-module-base "
> -RDEPENDS_perl-module-pod-latex += "perl-module-carp "
> -RDEPENDS_perl-module-pod-latex += "perl-module-strict "
> -RDEPENDS_perl-module-pod-latex += "perl-module-vars "
> -RDEPENDS_perl-module-pod-man += "perl-module-carp "
> -RDEPENDS_perl-module-pod-man += "perl-module-pod-parselink "
> -RDEPENDS_perl-module-pod-man += "perl-module-pod-parser "
> -RDEPENDS_perl-module-pod-man += "perl-module-strict "
> -RDEPENDS_perl-module-pod-man += "perl-module-subs "
> -RDEPENDS_perl-module-pod-man += "perl-module-vars "
> -RDEPENDS_perl-module-pod-parselink += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-parselink += "perl-module-strict "
> -RDEPENDS_perl-module-pod-parselink += "perl-module-vars "
> -RDEPENDS_perl-module-pod-parser += "perl-module-carp "
> -RDEPENDS_perl-module-pod-parser += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-parser += "perl-module-pod-inputobjects "
> -RDEPENDS_perl-module-pod-parser += "perl-module-strict "
> -RDEPENDS_perl-module-pod-parser += "perl-module-vars "
> -RDEPENDS_perl-module-pod-parseutils += "perl-module-carp "
> -RDEPENDS_perl-module-pod-parseutils += "perl-module-vars "
> -RDEPENDS_perl-module-pod-perldoc-baseto += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-baseto += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-getoptsoo += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-tochecker += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-tochecker += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-tochecker += "perl-module-vars "
> -RDEPENDS_perl-module-pod-perldoc-toman += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-toman += "perl-module-file-spec-functions "
> -RDEPENDS_perl-module-pod-perldoc-toman += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-toman += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-tonroff += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-tonroff += "perl-module-pod-man "
> -RDEPENDS_perl-module-pod-perldoc-tonroff += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-tonroff += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-topod += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-topod += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-topod += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-tortf += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-tortf += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-tortf += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-tortf += "perl-module-vars "
> -RDEPENDS_perl-module-pod-perldoc-totext += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-totext += "perl-module-pod-text "
> -RDEPENDS_perl-module-pod-perldoc-totext += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-totext += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-totk += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-totk += "perl-module-file-spec-functions "
> -RDEPENDS_perl-module-pod-perldoc-totk += "perl-module-pod-perldoc "
> -RDEPENDS_perl-module-pod-perldoc-totk += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-totk += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-toxml += "perl-module-base "
> -RDEPENDS_perl-module-pod-perldoc-toxml += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc-toxml += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-perldoc-toxml += "perl-module-vars "
> -RDEPENDS_perl-module-pod-perldoc += "perl-module-config "
> -RDEPENDS_perl-module-pod-perldoc += "perl-module-file-spec-functions "
> -RDEPENDS_perl-module-pod-perldoc += "perl-module-strict "
> -RDEPENDS_perl-module-pod-perldoc += "perl-module-warnings "
> -RDEPENDS_perl-module-pod-plainer += "perl-module-pod-parser "
> -RDEPENDS_perl-module-pod-plainer += "perl-module-strict "
> -RDEPENDS_perl-module-pod-plaintext += "perl-module-carp "
> -RDEPENDS_perl-module-pod-plaintext += "perl-module-pod-select "
> -RDEPENDS_perl-module-pod-plaintext += "perl-module-strict "
> -RDEPENDS_perl-module-pod-plaintext += "perl-module-vars "
> -RDEPENDS_perl-module-pod-select += "perl-module-carp "
> -RDEPENDS_perl-module-pod-select += "perl-module-pod-parser "
> -RDEPENDS_perl-module-pod-select += "perl-module-strict "
> -RDEPENDS_perl-module-pod-select += "perl-module-vars "
> -RDEPENDS_perl-module-pod-text-color += "perl-module-pod-text "
> -RDEPENDS_perl-module-pod-text-color += "perl-module-strict "
> -RDEPENDS_perl-module-pod-text-color += "perl-module-term-ansicolor "
> -RDEPENDS_perl-module-pod-text-color += "perl-module-vars "
> -RDEPENDS_perl-module-pod-text-overstrike += "perl-module-pod-text "
> -RDEPENDS_perl-module-pod-text-overstrike += "perl-module-strict "
> -RDEPENDS_perl-module-pod-text-overstrike += "perl-module-vars "
> -RDEPENDS_perl-module-pod-text-termcap += "perl-module-pod-text "
> -RDEPENDS_perl-module-pod-text-termcap += "perl-module-posix "
> -RDEPENDS_perl-module-pod-text-termcap += "perl-module-strict "
> -RDEPENDS_perl-module-pod-text-termcap += "perl-module-term-cap "
> -RDEPENDS_perl-module-pod-text-termcap += "perl-module-vars "
> -RDEPENDS_perl-module-pod-text += "perl-module-carp "
> -RDEPENDS_perl-module-pod-text += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-text += "perl-module-pod-parselink "
> -RDEPENDS_perl-module-pod-text += "perl-module-pod-select "
> -RDEPENDS_perl-module-pod-text += "perl-module-strict "
> -RDEPENDS_perl-module-pod-text += "perl-module-vars "
> -RDEPENDS_perl-module-pod-usage += "perl-module-carp "
> -RDEPENDS_perl-module-pod-usage += "perl-module-config "
> -RDEPENDS_perl-module-pod-usage += "perl-module-exporter "
> -RDEPENDS_perl-module-pod-usage += "perl-module-file-spec "
> -RDEPENDS_perl-module-pod-usage += "perl-module-strict "
> -RDEPENDS_perl-module-pod-usage += "perl-module-vars "
> -RDEPENDS_perl-module-posix += "perl-module-exporter "
> -RDEPENDS_perl-module-posix += "perl-module-autoloader "
> -RDEPENDS_perl-module-posix += "perl-module-autoloader "
> -RDEPENDS_perl-module-posix += "perl-module-xsloader "
> -RDEPENDS_perl-module-safe += "perl-module-carp "
> -RDEPENDS_perl-module-safe += "perl-module-carp-heavy "
> -RDEPENDS_perl-module-safe += "perl-module-strict "
> -RDEPENDS_perl-module-scalar-util += "perl-module-exporter "
> -RDEPENDS_perl-module-sdbm-file += "perl-module-tie-hash "
> -RDEPENDS_perl-module-sdbm-file += "perl-module-strict "
> -RDEPENDS_perl-module-sdbm-file += "perl-module-warnings "
> -RDEPENDS_perl-module-sdbm-file += "perl-module-xsloader "
> -RDEPENDS_perl-module-search-dict += "perl-module-exporter "
> -RDEPENDS_perl-module-search-dict += "perl-module-strict "
> -RDEPENDS_perl-module-selectsaver += "perl-module-carp "
> -RDEPENDS_perl-module-selectsaver += "perl-module-symbol "
> -RDEPENDS_perl-module-selfloader += "perl-module-exporter "
> -RDEPENDS_perl-module-shell += "perl-module-file-spec-functions "
> -RDEPENDS_perl-module-shell += "perl-module-strict "
> -RDEPENDS_perl-module-shell += "perl-module-warnings "
> -RDEPENDS_perl-module-sigtrap += "perl-module-carp "
> -RDEPENDS_perl-module-socket += "perl-module-exporter "
> -RDEPENDS_perl-module-socket += "perl-module-carp "
> -RDEPENDS_perl-module-socket += "perl-module-warnings-register "
> -RDEPENDS_perl-module-socket += "perl-module-xsloader "
> -RDEPENDS_perl-module-sort += "perl-module-strict "
> -RDEPENDS_perl-module-storable += "perl-module-carp "
> -RDEPENDS_perl-module-storable += "perl-module-dynaloader "
> -RDEPENDS_perl-module-storable += "perl-module-exporter "
> -RDEPENDS_perl-module-storable += "perl-module-autoloader "
> -RDEPENDS_perl-module-storable += "perl-module-vars "
> -RDEPENDS_perl-module-switch += "perl-module-carp "
> -RDEPENDS_perl-module-switch += "perl-module-filter-util-call "
> -RDEPENDS_perl-module-switch += "perl-module-strict "
> -RDEPENDS_perl-module-switch += "perl-module-text-balanced "
> -RDEPENDS_perl-module-switch += "perl-module-vars "
> -RDEPENDS_perl-module-symbol += "perl-module-exporter "
> -RDEPENDS_perl-module-sys-hostname += "perl-module-autoloader "
> -RDEPENDS_perl-module-sys-hostname += "perl-module-exporter "
> -RDEPENDS_perl-module-sys-hostname += "perl-module-carp "
> -RDEPENDS_perl-module-sys-hostname += "perl-module-strict "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-dynaloader "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-exporter "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-carp "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-socket "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-strict "
> -RDEPENDS_perl-module-sys-syslog += "perl-module-sys-hostname "
> -RDEPENDS_perl-module-term-ansicolor += "perl-module-exporter "
> -RDEPENDS_perl-module-term-ansicolor += "perl-module-strict "
> -RDEPENDS_perl-module-term-cap += "perl-module-strict "
> -RDEPENDS_perl-module-term-cap += "perl-module-vars "
> -RDEPENDS_perl-module-term-complete += "perl-module-exporter "
> -RDEPENDS_perl-module-term-complete += "perl-module-strict "
> -RDEPENDS_perl-module-term-readline += "perl-module-strict "
> -RDEPENDS_perl-module-test-builder += "perl-module-strict "
> -RDEPENDS_perl-module-test-builder += "perl-module-vars "
> -RDEPENDS_perl-module-test-harness-assert += "perl-module-exporter "
> -RDEPENDS_perl-module-test-harness-assert += "perl-module-strict "
> -RDEPENDS_perl-module-test-harness-assert += "perl-module-vars "
> -RDEPENDS_perl-module-test-harness-iterator += "perl-module-strict "
> -RDEPENDS_perl-module-test-harness-iterator += "perl-module-vars "
> -RDEPENDS_perl-module-test-harness-point += "perl-module-strict "
> -RDEPENDS_perl-module-test-harness-point += "perl-module-vars "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-config "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-strict "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-test-harness-assert "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-test-harness-iterator "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-test-harness-point "
> -RDEPENDS_perl-module-test-harness-straps += "perl-module-vars "
> -RDEPENDS_perl-module-test-harness += "perl-module-benchmark "
> -RDEPENDS_perl-module-test-harness += "perl-module-config "
> -RDEPENDS_perl-module-test-harness += "perl-module-exporter "
> -RDEPENDS_perl-module-test-harness += "perl-module-strict "
> -RDEPENDS_perl-module-test-harness += "perl-module-test-harness-assert "
> -RDEPENDS_perl-module-test-harness += "perl-module-test-harness-straps "
> -RDEPENDS_perl-module-test-more += "perl-module-exporter "
> -RDEPENDS_perl-module-test-more += "perl-module-strict "
> -RDEPENDS_perl-module-test-more += "perl-module-test-builder "
> -RDEPENDS_perl-module-test-more += "perl-module-vars "
> -RDEPENDS_perl-module-test-simple += "perl-module-strict "
> -RDEPENDS_perl-module-test-simple += "perl-module-test-builder "
> -RDEPENDS_perl-module-test-simple += "perl-module-vars "
> -RDEPENDS_perl-module-test += "perl-module-exporter "
> -RDEPENDS_perl-module-test += "perl-module-carp "
> -RDEPENDS_perl-module-test += "perl-module-strict "
> -RDEPENDS_perl-module-text-abbrev += "perl-module-exporter "
> -RDEPENDS_perl-module-text-balanced += "perl-module-exporter "
> -RDEPENDS_perl-module-text-balanced += "perl-module-overload "
> -RDEPENDS_perl-module-text-balanced += "perl-module-selfloader "
> -RDEPENDS_perl-module-text-balanced += "perl-module-strict "
> -RDEPENDS_perl-module-text-balanced += "perl-module-vars "
> -RDEPENDS_perl-module-text-parsewords += "perl-module-exporter "
> -RDEPENDS_perl-module-text-parsewords += "perl-module-vars "
> -RDEPENDS_perl-module-text-soundex += "perl-module-exporter "
> -RDEPENDS_perl-module-text-tabs += "perl-module-exporter "
> -RDEPENDS_perl-module-text-tabs += "perl-module-strict "
> -RDEPENDS_perl-module-text-tabs += "perl-module-vars "
> -RDEPENDS_perl-module-text-wrap += "perl-module-exporter "
> -RDEPENDS_perl-module-text-wrap += "perl-module-strict "
> -RDEPENDS_perl-module-text-wrap += "perl-module-text-tabs "
> -RDEPENDS_perl-module-thread-queue += "perl-module-strict "
> -RDEPENDS_perl-module-thread-queue += "perl-module-threads-shared "
> -RDEPENDS_perl-module-thread-semaphore += "perl-module-threads-shared "
> -RDEPENDS_perl-module-threads-shared += "perl-module-strict "
> -RDEPENDS_perl-module-threads-shared += "perl-module-warnings "
> -RDEPENDS_perl-module-threads += "perl-module-dynaloader "
> -RDEPENDS_perl-module-threads += "perl-module-exporter "
> -RDEPENDS_perl-module-threads += "perl-module-config "
> -RDEPENDS_perl-module-threads += "perl-module-strict "
> -RDEPENDS_perl-module-threads += "perl-module-warnings "
> -RDEPENDS_perl-module-thread += "perl-module-exporter "
> -RDEPENDS_perl-module-thread += "perl-module-strict "
> -RDEPENDS_perl-module-thread += "perl-module-xsloader "
> -RDEPENDS_perl-module-tie-array += "perl-module-carp "
> -RDEPENDS_perl-module-tie-array += "perl-module-strict "
> -RDEPENDS_perl-module-tie-array += "perl-module-vars "
> -RDEPENDS_perl-module-tie-file += "perl-module-carp "
> -RDEPENDS_perl-module-tie-file += "perl-module-fcntl "
> -RDEPENDS_perl-module-tie-file += "perl-module-posix "
> -RDEPENDS_perl-module-tie-file += "perl-module-strict "
> -RDEPENDS_perl-module-tie-handle += "perl-module-carp "
> -RDEPENDS_perl-module-tie-handle += "perl-module-warnings-register "
> -RDEPENDS_perl-module-tie-hash += "perl-module-carp "
> -RDEPENDS_perl-module-tie-hash += "perl-module-warnings-register "
> -RDEPENDS_perl-module-tie-memoize += "perl-module-strict "
> -RDEPENDS_perl-module-tie-memoize += "perl-module-tie-hash "
> -RDEPENDS_perl-module-tie-refhash += "perl-module-strict "
> -RDEPENDS_perl-module-tie-refhash += "perl-module-tie-hash "
> -RDEPENDS_perl-module-tie-refhash += "perl-module-vars "
> -RDEPENDS_perl-module-tie-scalar += "perl-module-carp "
> -RDEPENDS_perl-module-tie-scalar += "perl-module-warnings-register "
> -RDEPENDS_perl-module-tie-substrhash += "perl-module-carp "
> -RDEPENDS_perl-module-time-gmtime += "perl-module-strict "
> -RDEPENDS_perl-module-time-gmtime += "perl-module-time-tm "
> -RDEPENDS_perl-module-time-gmtime += "perl-module-vars "
> -RDEPENDS_perl-module-time-hires += "perl-module-dynaloader "
> -RDEPENDS_perl-module-time-hires += "perl-module-exporter "
> -RDEPENDS_perl-module-time-hires += "perl-module-strict "
> -RDEPENDS_perl-module-time-hires += "perl-module-vars "
> -RDEPENDS_perl-module-time-localtime += "perl-module-strict "
> -RDEPENDS_perl-module-time-localtime += "perl-module-time-tm "
> -RDEPENDS_perl-module-time-localtime += "perl-module-vars "
> -RDEPENDS_perl-module-time-local += "perl-module-exporter "
> -RDEPENDS_perl-module-time-local += "perl-module-carp "
> -RDEPENDS_perl-module-time-local += "perl-module-config "
> -RDEPENDS_perl-module-time-local += "perl-module-integer "
> -RDEPENDS_perl-module-time-local += "perl-module-strict "
> -RDEPENDS_perl-module-time-local += "perl-module-vars "
> -RDEPENDS_perl-module-time-tm += "perl-module-class-struct "
> -RDEPENDS_perl-module-time-tm += "perl-module-strict "
> -RDEPENDS_perl-module-unicode-collate += "perl-module-carp "
> -RDEPENDS_perl-module-unicode-collate += "perl-module-constant "
> -RDEPENDS_perl-module-unicode-collate += "perl-module-file-spec "
> -RDEPENDS_perl-module-unicode-collate += "perl-module-strict "
> -RDEPENDS_perl-module-unicode-collate += "perl-module-warnings "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-dynaloader "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-exporter "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-carp "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-constant "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-strict "
> -RDEPENDS_perl-module-unicode-normalize += "perl-module-warnings "
> -RDEPENDS_perl-module-unicode-ucd += "perl-module-exporter "
> -RDEPENDS_perl-module-unicode-ucd += "perl-module-carp "
> -RDEPENDS_perl-module-unicode-ucd += "perl-module-storable "
> -RDEPENDS_perl-module-unicode-ucd += "perl-module-strict "
> -RDEPENDS_perl-module-unicode-ucd += "perl-module-warnings "
> -RDEPENDS_perl-module-universal += "perl-module-exporter "
> -RDEPENDS_perl-module-user-grent += "perl-module-class-struct "
> -RDEPENDS_perl-module-user-grent += "perl-module-strict "
> -RDEPENDS_perl-module-user-grent += "perl-module-vars "
> -RDEPENDS_perl-module-user-pwent += "perl-module-carp "
> -RDEPENDS_perl-module-user-pwent += "perl-module-class-struct "
> -RDEPENDS_perl-module-user-pwent += "perl-module-config "
> -RDEPENDS_perl-module-user-pwent += "perl-module-strict "
> -RDEPENDS_perl-module-user-pwent += "perl-module-warnings "
> -RDEPENDS_perl-module-user-pwent += "perl-module-vars "
> -RDEPENDS_perl-module-warnings-register += "perl-module-warnings "
> -RDEPENDS_perl-module-warnings += "perl-module-carp "
> -RDEPENDS_perl-module-vars += "perl-module-strict "
> -RDEPENDS_perl-module-vars += "perl-module-warnings-register "
> -RDEPENDS_perl-module-xs-apitest += "perl-module-base "
> -RDEPENDS_perl-module-xs-apitest += "perl-module-carp "
> -RDEPENDS_perl-module-xs-apitest += "perl-module-strict "
> -RDEPENDS_perl-module-xs-apitest += "perl-module-warnings "
> -RDEPENDS_perl-module-xs-typemap += "perl-module-base "
> -RDEPENDS_perl-module-xs-typemap += "perl-module-vars "
> diff --git a/meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc b/meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc
> new file mode 100644
> index 0000000..9a648db
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc
> @@ -0,0 +1 @@
> +RPROVIDES_perl-module-module-build += "libmodule-build-perl"
> diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
> new file mode 100644
> index 0000000..9137b40
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
> @@ -0,0 +1,282 @@
> +DESCRIPTION = "Perl is a popular scripting language."
> +HOMEPAGE = "http://www.perl.org/"
> +SECTION = "devel"
> +LICENSE = "Artistic|GPL"
> +LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
> +		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
> +PRIORITY = "optional"
> +# We need gnugrep (for -I)
> +DEPENDS = "virtual/db perl-native-${PV} grep-native"
> +DEPENDS += "gdbm zlib"
> +PR = "r0"
> +
> +# 5.10.1 has Module::Build built-in
> +PROVIDES += "libmodule-build-perl"
> +
> +# Major part of version
> +#PVM = "5.12"
> +
> +SRC_URI = "ftp://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
> +        file://Makefile.patch;patch=1 \
> +        file://Makefile.SH.patch;patch=1 \
> +        file://installperl.patch;patch=1 \
> +        file://perl-dynloader.patch;patch=1 \
> +        file://perl-moreconfig.patch;patch=1 \
> +        file://letgcc-find-errno.patch;patch=1 \
> +        file://generate-sh.patch;patch=1 \
> +        file://09_fix_installperl.patch;patch=1 \
> +        file://native-perlinc.patch \
> +        file://perl-enable-gdbm.patch \
> +        file://cross-generate_uudmap.patch \
> +        file://debian/arm_thread_stress_timeout.diff \
> +        file://debian/cpan_config_path.diff \
> +        file://debian/cpan_definstalldirs.diff \
> +        file://debian/db_file_ver.diff \
> +        file://debian/doc_info.diff \
> +        file://debian/enc2xs_inc.diff \
> +        file://debian/errno_ver.diff \
> +        file://debian/extutils_hacks.diff \
> +#        file://debian/fakeroot.diff \
> +        file://debian/instmodsh_doc.diff \
> +        file://debian/ld_run_path.diff \
> +        file://debian/libnet_config_path.diff \
> +        file://debian/m68k_thread_stress.diff \
> +        file://debian/mod_paths.diff \
> +        file://debian/module_build_man_extensions.diff \
> +        file://debian/prune_libs.diff \
> +        file://debian/fixes/net_smtp_docs.diff \
> +        file://debian/fixes/processPL.diff \
> +        file://debian/perlivp.diff \
> +        file://debian/disable-zlib-bundling.diff \
> +        file://debian/cpanplus_definstalldirs.diff \
> +        file://debian/cpanplus_config_path.diff \
> +        file://debian/fixes/autodie-flock.diff \
> +        file://debian/devel-ppport-ia64-optim.diff \
> +        file://debian/fixes/cpanplus-without-home.diff \
> +        file://debian/arm_optim.diff \
> +        file://debian/deprecate-with-apt.diff \
> +        file://debian/fixes/hurd-ccflags.diff \
> +        file://debian/squelch-locale-warnings.diff \
> +        file://debian/fixes/lc-numeric-docs.diff \
> +        file://debian/fixes/lc-numeric-sprintf.diff \
> +        file://debian/fixes/concat-stack-corruption.diff \
> +        file://debian/fixes/h2ph-gcc-4.5.diff \
> +        file://config.sh \
> +        file://config.sh-32 \
> +        file://config.sh-32-le \
> +        file://config.sh-32-be \
> +        file://config.sh-64 \
> +        file://config.sh-64-le \
> +        file://config.sh-64-be"
> +
> +SRC_URI[md5sum] = "af2df531d46b77fdf0d97eecb03eddb2"
> +SRC_URI[sha256sum] = "cf888340021d5a2d1238bbd9b8b55aaf420a848d46e4d317cb8567f86ceb1022"
> +
> +inherit siteinfo
> +
> +# Where to find the native perl
> +HOSTPERL = "${STAGING_BINDIR_NATIVE}/perl${PV}"
> +
> +# Where to find .so files - use the -native versions not those from the target build
> +export PERLHOSTLIB = "${STAGING_LIBDIR_NATIVE}/perl/${PV}/"
> +
> +# LDFLAGS for shared libraries
> +export LDDLFLAGS = "${LDFLAGS} -shared"
> +
> +# We're almost Debian, aren't we?
> +CFLAGS += "-DDEBIAN"
> +
> +do_nolargefile() {
> +	sed -i -e "s,\(uselargefiles=\)'define',\1'undef',g" \
> +		-e "s,\(d_readdir64_r=\)'define',\1'undef',g" \
> +		-e "s,\(readdir64_r_proto=\)'\w+',\1'0',g" \
> +		-e "/ccflags_uselargefiles/d" \
> +		-e "s/-Duselargefiles//" \
> +		-e "s/-D_FILE_OFFSET_BITS=64//" \
> +		-e "s/-D_LARGEFILE_SOURCE//" \
> +		${S}/Cross/config.sh-${TARGET_ARCH}-${TARGET_OS}
> +}
> +
> +do_configure() {
> +        # Make hostperl in build directory be the native perl
> +        ln -sf ${HOSTPERL} hostperl
> +
> +        # Do our work in the cross subdir
> +        cd Cross
> +
> +        # Generate configuration
> +        rm -f config.sh-${TARGET_ARCH}-${TARGET_OS}
> +        for i in ${WORKDIR}/config.sh \
> +                 ${WORKDIR}/config.sh-${@siteinfo_get_bits(d)} \
> +                 ${WORKDIR}/config.sh-${@siteinfo_get_bits(d)}-${@siteinfo_get_endianess(d)}; do
> +            cat $i>>  config.sh-${TARGET_ARCH}-${TARGET_OS}
> +        done
> +
> +        # Fixups for uclibc
> +        if [ "${TARGET_OS}" = "linux-uclibc" -o "${TARGET_OS}" = "linux-uclibceabi" ]; then
> +                sed -i -e "s,\(d_crypt_r=\)'define',\1'undef',g" \
> +                       -e "s,\(d_futimes=\)'define',\1'undef',g" \
> +                       -e "s,\(crypt_r_proto=\)'\w+',\1'0',g" \
> +                       -e "s,\(d_getnetbyname_r=\)'define',\1'undef',g" \
> +                       -e "s,\(getnetbyname_r_proto=\)'\w+',\1'0',g" \
> +                       -e "s,\(d_getnetbyaddr_r=\)'define',\1'undef',g" \
> +                       -e "s,\(getnetbyaddr_r_proto=\)'\w+',\1'0',g" \
> +                       -e "s,\(d_getnetent_r=\)'define',\1'undef',g" \
> +                       -e "s,\(getnetent_r_proto=\)'\w+',\1'0',g" \
> +                       -e "s,\(d_sockatmark=\)'define',\1'undef',g" \
> +                       -e "s,\(d_sockatmarkproto=\)'\w+',\1'0',g" \
> +                    config.sh-${TARGET_ARCH}-${TARGET_OS}
> +        fi
> +
> +	${@base_contains('DISTRO_FEATURES', 'largefile', '', 'do_nolargefile', d)}
> +
> +        # Update some paths in the configuration
> +        sed -i -e 's,@DESTDIR@,${prefix},g' \
> +               -e 's,@ARCH@-thread-multi,,g' \
> +               -e 's,@ARCH@,${TARGET_ARCH}-${TARGET_OS},g' \
> +               -e "s%/usr/include%${STAGING_INCDIR}%g" \
> +	       -e 's,/usr/,${exec_prefix}/,g' \
> +	       -e 's,/perl5,/perl,g' \
> +            config.sh-${TARGET_ARCH}-${TARGET_OS}
> +
> +        if test "${MACHINE}" != "native"; then
> +            # These are strewn all over the source tree
> +            for foo in `grep -I -m1 \/usr\/include\/.*\\.h ${WORKDIR}/* -r | cut -f 1 -d ":"` ; do
> +                echo Fixing: $foo
> +                sed -e "s%/usr/include/%${STAGING_INCDIR}/%g" -i $foo
> +            done
> +        fi
> +
> +        rm -f config
> +        echo "ARCH = ${TARGET_ARCH}">  config
> +        echo "OS = ${TARGET_OS}">>  config
> +}
> +
> +do_compile() {
> +        if test "${MACHINE}" != "native"; then
> +            sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' ext/Errno/Errno_pm.PL
> +            sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' cpan/Compress-Raw-Zlib/config.in
> +            sed -i -e 's|/usr/lib|${STAGING_LIBDIR}|g' cpan/Compress-Raw-Zlib/config.in
> +
> +        fi
> +        cd Cross
> +        oe_runmake perl LD="${CCLD}"
> +}
> +
> +do_install() {
> +	oe_runmake install DESTDIR=${D}
> +        # Add perl pointing at current version
> +        ln -sf perl${PV} ${D}${bindir}/perl
> +
> +        ln -sf perl ${D}/${libdir}/perl5
> +
> +        # Remove unwanted file
> +        rm -f ${D}/${libdir}/perl/${PV}/.packlist
> +
> +        # Fix up shared library
> +        mv ${D}/${libdir}/perl/${PV}/CORE/libperl.so ${D}/${libdir}/libperl.so.${PV}
> +        ln -sf libperl.so.${PV} ${D}/${libdir}/libperl.so.5
> +
> +        # target config, used by cpan.bbclass to extract version information
> +        install config.sh ${D}${libdir}/perl
> +
> +        ln -s Config_heavy.pl ${D}${libdir}/perl/${PV}/Config_heavy-target.pl
> +
> +}
> +
> +PACKAGE_PREPROCESS_FUNCS += "perl_package_preprocess"
> +
> +perl_package_preprocess () {
> +        # Fix up installed configuration
> +        if test "${MACHINE}" != "native"; then
> +            sed -i -e "s,${D},,g" \
> +                   -e "s,-isystem${STAGING_INCDIR} ,,g" \
> +                   -e "s,${STAGING_LIBDIR},${libdir},g" \
> +                   -e "s,${STAGING_BINDIR},${bindir},g" \
> +                   -e "s,${STAGING_INCDIR},${includedir},g" \
> +                   -e "s,${STAGING_BINDIR_NATIVE}/,,g" \
> +                ${PKGD}${bindir}/h2xs \
> +                ${PKGD}${bindir}/h2ph \
> +                ${PKGD}${libdir}/perl/${PV}/pod/*.pod \
> +                ${PKGD}${libdir}/perl/${PV}/cacheout.pl \
> +                ${PKGD}${libdir}/perl/${PV}/FileCache.pm \
> +                ${PKGD}${libdir}/perl/config.sh \
> +                ${PKGD}${libdir}/perl/${PV}/Config.pm \
> +                ${PKGD}${libdir}/perl/${PV}/Config_heavy.pl \
> +                ${PKGD}${libdir}/perl/${PV}/CORE/perl.h \
> +                ${PKGD}${libdir}/perl/${PV}/CORE/pp.h
> +        fi
> +}
> +
> +PACKAGES = "perl-dbg perl perl-misc perl-dev perl-pod perl-doc perl-lib \
> +            perl-module-cpan perl-module-cpanplus perl-module-unicore"
> +FILES_${PN} = "${bindir}/perl ${bindir}/perl${PV}"
> +FILES_${PN}-dev = "${libdir}/perl/${PV}/CORE"
> +FILES_${PN}-lib = "${libdir}/libperl.so* \
> +                   ${libdir}/perl5 \
> +                   ${libdir}/perl/config.sh \
> +                   ${libdir}/perl/${PV}/Config_heavy.pl \
> +                   ${libdir}/perl/${PV}/Config_heavy-target.pl"
> +FILES_${PN}-pod = "${libdir}/perl/${PV}/pod \
> +		   ${libdir}/perl/${PV}/*.pod \
> +                   ${libdir}/perl/${PV}/*/*.pod \
> +                   ${libdir}/perl/${PV}/*/*/*.pod "
> +FILES_perl-misc = "${bindir}/*"
> +FILES_${PN}-dbg += "${libdir}/perl/${PV}/auto/*/.debug \
> +                    ${libdir}/perl/${PV}/auto/*/*/.debug \
> +                    ${libdir}/perl/${PV}/auto/*/*/*/.debug \
> +                    ${libdir}/perl/${PV}/CORE/.debug \
> +                    ${libdir}/perl/${PV}/*/.debug \
> +                    ${libdir}/perl/${PV}/*/*/.debug \
> +                    ${libdir}/perl/${PV}/*/*/*/.debug "
> +FILES_${PN}-doc = "${libdir}/perl/${PV}/*/*.txt \
> +                   ${libdir}/perl/${PV}/*/*/*.txt \
> +                   ${libdir}/perl/${PV}/B/assemble \
> +                   ${libdir}/perl/${PV}/B/cc_harness \
> +                   ${libdir}/perl/${PV}/B/disassemble \
> +                   ${libdir}/perl/${PV}/B/makeliblinks \
> +                   ${libdir}/perl/${PV}/CGI/eg \
> +                   ${libdir}/perl/${PV}/CPAN/PAUSE2003.pub \
> +                   ${libdir}/perl/${PV}/CPAN/SIGNATURE \
> +		   ${libdir}/perl/${PV}/CPANPLUS/Shell/Default/Plugins/HOWTO.pod \
> +                   ${libdir}/perl/${PV}/Encode/encode.h \
> +                   ${libdir}/perl/${PV}/ExtUtils/MANIFEST.SKIP \
> +                   ${libdir}/perl/${PV}/ExtUtils/NOTES \
> +                   ${libdir}/perl/${PV}/ExtUtils/PATCHING \
> +                   ${libdir}/perl/${PV}/ExtUtils/typemap \
> +                   ${libdir}/perl/${PV}/ExtUtils/xsubpp \
> +		   ${libdir}/perl/${PV}/ExtUtils/Changes_EU-Install \
> +                   ${libdir}/perl/${PV}/Net/*.eg \
> +                   ${libdir}/perl/${PV}/unicore/mktables \
> +                   ${libdir}/perl/${PV}/unicore/mktables.lst \
> +                   ${libdir}/perl/${PV}/unicore/version "
> +
> +FILES_perl-module-cpan += "${libdir}/perl/${PV}/CPAN \
> +                           ${libdir}/perl/${PV}/CPAN.pm"
> +FILES_perl-module-cpanplus += "${libdir}/perl/${PV}/CPANPLUS \
> +                               ${libdir}/perl/${PV}/CPANPLUS.pm"
> +FILES_perl-module-unicore += "${libdir}/perl/${PV}/unicore"
> +
> +# Create a perl-modules package recommending all the other perl
> +# packages (actually the non modules packages and not created too)
> +ALLOW_EMPTY_perl-modules = "1"
> +PACKAGES_append = " perl-modules "
> +RRECOMMENDS_perl-modules = "${@bb.data.getVar('PACKAGES', d, 1).replace('perl-modules ', '').replace('perl-dbg ', '').replace('perl-misc ', '').replace('perl-dev ', '').replace('perl-pod ', '').replace('perl-doc ', '')}"
> +
> +python populate_packages_prepend () {
> +        libdir = bb.data.expand('${libdir}/perl/${PV}', d)
> +        do_split_packages(d, libdir, 'auto/(Encode/.[^/]*)/.*', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True, prepend=False)
> +        do_split_packages(d, libdir, 'auto/([^/]*)/.*', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True, prepend=False)
> +        do_split_packages(d, libdir, 'Module/([^\/]*).*', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True, prepend=False)
> +        do_split_packages(d, libdir, '(^(?!(CPAN\/|CPANPLUS\/|Module\/|unicore\/|auto\/)[^\/]).*)\.(pm|pl|e2x)', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True, prepend=False)
> +}
> +
> +PACKAGES_DYNAMIC = "perl-module-*"
> +
> +RPROVIDES_perl-lib = "perl-lib"
> +
> +require perl-rdepends_${PV}.inc
> +require perl-rprovides.inc
> +require perl-rprovides_${PV}.inc
> +
> +PARALLEL_MAKE = ""
> diff --git a/meta/recipes-devtools/perl/perl_5.8.8.bb b/meta/recipes-devtools/perl/perl_5.8.8.bb
> deleted file mode 100644
> index 8e2f0c0..0000000
> --- a/meta/recipes-devtools/perl/perl_5.8.8.bb
> +++ /dev/null
> @@ -1,228 +0,0 @@
> -SUMMARY = "Perl (Pathologically Eclectic Rubbish Lister)"
> -DESCRIPTION = "Perl is a high-level, general-purpose, interpreted, dynamic programming language.  It was \
> -originally written as a general-purpose scripting language to make report processing easier.  This makes perl \
> -especially good at handling text."
> -HOMEPAGE = "http://www.perl.org/"
> -SECTION = "devel"
> -LICENSE = "Artistic|GPL"
> -LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
> -		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
> -PRIORITY = "optional"
> -# We need gnugrep (for -I)
> -DEPENDS = "virtual/db perl-native grep-native"
> -DEPENDS += "gdbm"
> -PR = "r21"
> -
> -# Major part of version
> -PVM = "5.8"
> -
> -SRC_URI = "ftp://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
> -        file://Makefile.patch;patch=1 \
> -        file://Makefile.SH.patch;patch=1 \
> -        file://makedepend-dash.patch;patch=1 \
> -        file://installperl.patch;patch=1 \
> -        file://perl-dynloader.patch;patch=1 \
> -        file://perl-moreconfig.patch;patch=1 \
> -        file://letgcc-find-errno.patch;patch=1 \
> -        file://generate-sh.patch;patch=1 \
> -        file://perl-5.8.8-gcc-4.2.patch;patch=1 \
> -        file://09_fix_installperl.patch;patch=1 \
> -        file://52_debian_extutils_hacks.patch;patch=1 \
> -        file://53_debian_mod_paths.patch;patch=1 \
> -        file://54_debian_perldoc-r.patch;patch=1 \
> -        file://58_debian_cpan_config_path.patch;patch=1 \
> -        file://60_debian_libnet_config_path.patch;patch=1 \
> -        file://62_debian_cpan_definstalldirs.patch;patch=1 \
> -        file://64_debian_enc2xs_inc.patch;patch=1 \
> -        file://asm-pageh-fix.patch;patch=1 \
> -        file://native-perlinc.patch;patch=1 \
> -	file://perl-enable-gdbm.patch;patch=1 \
> -        file://config.sh \
> -        file://config.sh-32 \
> -        file://config.sh-32-le \
> -        file://config.sh-32-be \
> -        file://config.sh-64 \
> -        file://config.sh-64-le \
> -        file://config.sh-64-be"
> -
> -SRC_URI[md5sum] = "b8c118d4360846829beb30b02a6b91a7"
> -SRC_URI[sha256sum] = "e15d499321e003d12ed183601e37ee7ba5f64b278d1de30149ce01bd4a3f234d"
> -
> -inherit siteinfo
> -
> -# Where to find the native perl
> -HOSTPERL = "${STAGING_BINDIR_NATIVE}/perl${PV}"
> -
> -# Where to find .so files - use the -native versions not those from the target build
> -export PERLHOSTLIB = "${STAGING_LIBDIR_NATIVE}/perl/${PV}/"
> -
> -do_configure() {
> -        # Make hostperl in build directory be the native perl
> -        ln -s ${HOSTPERL} hostperl
> -
> -        # Do our work in the cross subdir
> -        cd Cross
> -
> -        # Generate configuration
> -        rm -f config.sh-${TARGET_ARCH}-${TARGET_OS}
> -        for i in ${WORKDIR}/config.sh \
> -                 ${WORKDIR}/config.sh-${@siteinfo_get_bits(d)} \
> -                 ${WORKDIR}/config.sh-${@siteinfo_get_bits(d)}-${@siteinfo_get_endianess(d)}; do
> -            cat $i>>  config.sh-${TARGET_ARCH}-${TARGET_OS}
> -        done
> -
> -        # Fixups for uclibc
> -        if [ "${TARGET_OS}" = "linux-uclibc" -o "${TARGET_OS}" = "linux-uclibcgnueabi" ]; then
> -                sed -i -e "s,\(d_crypt_r=\)'define',\1'undef',g" \
> -                       -e "s,\(crypt_r_proto=\)'\w+',\1'0',g" \
> -                       -e "s,\(d_getnetbyname_r=\)'define',\1'undef',g" \
> -                       -e "s,\(getnetbyname_r_proto=\)'\w+',\1'0',g" \
> -                       -e "s,\(d_getnetbyaddr_r=\)'define',\1'undef',g" \
> -                       -e "s,\(getnetbyaddr_r_proto=\)'\w+',\1'0',g" \
> -                       -e "s,\(d_getnetent_r=\)'define',\1'undef',g" \
> -                       -e "s,\(getnetent_r_proto=\)'\w+',\1'0',g" \
> -                       -e "s,\(d_sockatmark=\)'define',\1'undef',g" \
> -                       -e "s,\(d_sockatmarkproto=\)'\w+',\1'0',g" \
> -                    config.sh-${TARGET_ARCH}-${TARGET_OS}
> -        fi
> -
> -        # Update some paths in the configuration
> -        sed -i -e 's,@LIBDIR@,${libdir},g' \
> -               -e 's,@BINDIR@,${bindir},g' \
> -               -e 's,@MANDIR@,${mandir},g' \
> -               -e 's,@PREFIX@,${prefix},g' \
> -               -e 's,@DATADIR@,${datadir},g' \
> -               -e 's,@ARCH@,${TARGET_ARCH}-${TARGET_OS},g' \
> -               -e "s%/usr/include/%${STAGING_INCDIR}/%g" \
> -	       -e 's,/usr/,${exec_prefix}/,g' \
> -            config.sh-${TARGET_ARCH}-${TARGET_OS}
> -
> -
> -         # These are strewn all over the source tree
> -        for foo in `grep -I -m1 \/usr\/include\/.*\\.h ${WORKDIR}/* -r | cut -f 1 -d ":"` ; do
> -            echo Fixing: $foo
> -            sed -e "s%/usr/include/%${STAGING_INCDIR}/%g" -i $foo
> -        done
> -
> -        rm -f config
> -        echo "ARCH = ${TARGET_ARCH}">  config
> -        echo "OS = ${TARGET_OS}">>  config
> -}
> -
> -do_compile() {
> -        if test "${MACHINE}" != "native"; then
> -            sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' ext/Errno/Errno_pm.PL
> -        fi
> -        cd Cross
> -        oe_runmake perl LD="${TARGET_SYS}-gcc"
> -}
> -
> -do_install() {
> -	oe_runmake 'DESTDIR=${D}' install
> -
> -        # Add perl pointing at current version
> -        ln -sf perl${PV} ${D}${bindir}/perl
> -
> -        # Fix up versioned directories
> -        mv ${D}/${libdir}/perl/${PVM} ${D}/${libdir}/perl/${PV}
> -        mv ${D}/${datadir}/perl/${PVM} ${D}/${datadir}/perl/${PV}
> -        ln -sf ${PV} ${D}/${libdir}/perl/${PVM}
> -        ln -sf ${PV} ${D}/${datadir}/perl/${PVM}
> -
> -        # Remove unwanted file
> -        rm -f ${D}/${libdir}/perl/${PV}/.packlist
> -
> -        # Fix up shared library
> -        mv -f ${D}/${libdir}/perl/${PV}/CORE/libperl.so ${D}/${libdir}/libperl.so.${PV}
> -        ln -sf libperl.so.${PV} ${D}/${libdir}/libperl.so.5
> -
> -        # target config, used by cpan.bbclass to extract version information
> -        install config.sh ${D}${libdir}/perl/
> -
> -        install -d ${D}${datadir}/perl/${PV}/ExtUtils
> -	install lib/ExtUtils/typemap ${D}${datadir}/perl/${PV}/ExtUtils/
> -	
> -	ln -s Config_heavy.pl ${D}${libdir}/perl/${PV}/Config_heavy-target.pl
> -}
> -
> -PACKAGE_PREPROCESS_FUNCS += "perl_package_preprocess"
> -
> -perl_package_preprocess () {
> -        # Fix up installed configuration
> -        sed -i -e "s,${D},,g" \
> -                   -e "s,-isystem${STAGING_INCDIR} ,,g" \
> -                   -e "s,${STAGING_LIBDIR},${libdir},g" \
> -                   -e "s,${STAGING_BINDIR},${bindir},g" \
> -                   -e "s,${STAGING_INCDIR},${includedir},g" \
> -                   -e "s,${STAGING_BINDIR_NATIVE}/,,g" \
> -                ${PKGD}${bindir}/h2xs \
> -                ${PKGD}${bindir}/h2ph \
> -                ${PKGD}${datadir}/perl/${PV}/pod/*.pod \
> -                ${PKGD}${datadir}/perl/${PV}/cacheout.pl \
> -                ${PKGD}${datadir}/perl/${PV}/FileCache.pm \
> -                ${PKGD}${libdir}/perl/config.sh \
> -                ${PKGD}${libdir}/perl/${PV}/Config.pm \
> -                ${PKGD}${libdir}/perl/${PV}/Config_heavy.pl \
> -                ${PKGD}${libdir}/perl/${PV}/CORE/perl.h \
> -                ${PKGD}${libdir}/perl/${PV}/CORE/pp.h
> -}
> -
> -PACKAGES = "perl-dbg perl perl-misc perl-lib perl-dev perl-pod perl-doc"
> -FILES_${PN} = "${bindir}/perl ${bindir}/perl${PV}"
> -FILES_${PN}-lib = "${libdir}/libperl.so* ${libdir}/perl/${PVM} ${datadir}/perl/${PVM}"
> -FILES_${PN}-dev = "${libdir}/perl/${PV}/CORE"
> -FILES_${PN}-pod = "${datadir}/perl/${PV}/pod \
> -                   ${datadir}/perl/${PV}/*/*.pod \
> -                   ${datadir}/perl/${PV}/*/*/*.pod \
> -                   ${libdir}/perl/${PV}/*.pod"
> -FILES_perl-misc = "${bindir}/*"
> -FILES_${PN}-dbg += "${libdir}/perl/${PV}/auto/*/.debug \
> -                    ${libdir}/perl/${PV}/auto/*/*/.debug \
> -                    ${libdir}/perl/${PV}/auto/*/*/*/.debug \
> -                    ${datadir}/perl/${PV}/auto/*/.debug \
> -                    ${datadir}/perl/${PV}/auto/*/*/.debug \
> -                    ${datadir}/perl/${PV}/auto/*/*/*/.debug \
> -                    ${libdir}/perl/${PV}/CORE/.debug"
> -FILES_${PN}-doc = "${datadir}/perl/${PV}/*/*.txt \
> -                   ${datadir}/perl/${PV}/*/*/*.txt \
> -                   ${datadir}/perl/${PV}/Net/*.eg \
> -                   ${datadir}/perl/${PV}/CGI/eg \
> -                   ${datadir}/perl/${PV}/ExtUtils/PATCHING \
> -                   ${datadir}/perl/${PV}/ExtUtils/NOTES \
> -                   ${datadir}/perl/${PV}/ExtUtils/typemap \
> -                   ${datadir}/perl/${PV}/ExtUtils/MANIFEST.SKIP \
> -                   ${datadir}/perl/${PV}/CPAN/SIGNATURE \
> -                   ${datadir}/perl/${PV}/CPAN/PAUSE2003.pub \
> -                   ${datadir}/perl/${PV}/B/assemble \
> -                   ${datadir}/perl/${PV}/B/makeliblinks \
> -                   ${datadir}/perl/${PV}/B/disassemble \
> -                   ${datadir}/perl/${PV}/B/cc_harness \
> -                   ${datadir}/perl/${PV}/ExtUtils/xsubpp \
> -                   ${datadir}/perl/${PV}/Encode/encode.h \
> -                   ${datadir}/perl/${PV}/unicore/mktables \
> -                   ${datadir}/perl/${PV}/unicore/mktables.lst \
> -                   ${datadir}/perl/${PV}/unicore/version"
> -
> -RPROVIDES_perl-lib = "perl-lib"
> -
> -# Create a perl-modules package recommending all the other perl
> -# packages (actually the non modules packages and not created too)
> -ALLOW_EMPTY_perl-modules = "1"
> -PACKAGES_append = " perl-modules "
> -RRECOMMENDS_perl-modules = "${@bb.data.getVar('PACKAGES', d, 1).replace('perl-modules ', '').replace('perl-dbg ', '').replace('perl-misc ', '').replace('perl-dev ', '').replace('perl-pod ', '').replace('perl-doc ', '')}"
> -
> -python populate_packages_prepend () {
> -        libdir = bb.data.expand('${libdir}/perl/${PV}', d)
> -        do_split_packages(d, libdir, 'auto/(.*)(?!\.debug)/', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True)
> -        do_split_packages(d, libdir, '(.*)\.(pm|pl|e2x)', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True)
> -        datadir = bb.data.expand('${datadir}/perl/${PV}', d)
> -        do_split_packages(d, datadir, 'auto/(.*)(?!\.debug)/', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True)
> -        do_split_packages(d, datadir, '(.*)\.(pm|pl|e2x)', 'perl-module-%s', 'perl module %s', recursive=True, allow_dirs=False, match_path=True)
> -}
> -
> -PACKAGES_DYNAMIC = "perl-module-*"
> -
> -require perl-rdepends_${PV}.inc
> -require perl-rprovides.inc
> -
> -PARALLEL_MAKE = ""


