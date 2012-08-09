Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAABE013A6
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 10:32:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8B7A3F8122E; Thu,  9 Aug 2012 11:32:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8A5FDF81227;
	Thu,  9 Aug 2012 11:32:12 -0600 (MDT)
Message-ID: <5023F425.1090801@mlbassoc.com>
Date: Thu, 09 Aug 2012 11:32:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1344533174.4828.29.camel@rogue>
In-Reply-To: <1344533174.4828.29.camel@rogue>
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Thu, 09 Aug 2012 17:32:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-09 11:26, Luke A. Guest wrote:
> Hi,
>
> I was originally trying to build for Gumstix Overo IronStorm board using
> the MACHINE ??= "overo-storm", this failed
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=2924), so I thought
> I'd try a build for my Pandaboard ES.
>
> There's no ES specific version yet, but I thought I'd try to build using
> MACHINE = "pandaboard" - I don't know if the ??= or = should make a
> difference, I was told not. But now this is failing in
> gcc-cross-initial-4.6.3+svnr184847-r25:
>
> | for file
> in .. /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/ginclude/float.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/iso646.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdarg.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdbool.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stddef.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/varargs.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdfix.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/config/arm/mmintrin.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/
 gc
>   c/config/arm/arm_neon.h; do \
> | 	  if [ X$file != X.. ]; then \
> | 	    realfile=`echo $file | sed -e 's|.*/\([^/]*\)$|\1|'`; \
> | 	    echo timestamp > include/$realfile; \
> | 	    rm -f include/$realfile; \
> | 	    cp $file include; \
> | 	    chmod a+r include/$realfile; \
> | 	  fi; \
> | 	done
> | for file in .. ; do \
> | 	  if [ X$file != X.. ]; then \
> |             mv include/$file include/x_$file; \
> |             echo "#include_next <$file>" >include/$file; \
> |             cat include/x_$file >>include/$file; \
> |             rm -f include/x_$file; \
> | 	    chmod a+r include/$file; \
> | 	  fi; \
> | 	done
> | for file in .. ; do \
> | 	  if [ X$file != X.. ]; then \
> | 	    echo "#include_next <$file>" >>include/$file; \
> | 	    chmod a+r include/$file; \
> | 	  fi; \
> | 	done
> | rm -f include/unwind.h
> | cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/config/arm/unwind-arm.h
> include/unwind.h
> | chmod a+r include/unwind.h
> | rm -f include/stdint.h
> | if [ wrap = wrap ]; then \
> | 	  rm -f include/stdint-gcc.h; \
> |
> cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-gcc.h
> include/stdint-gcc.h; \
> | 	  chmod a+r include/stdint-gcc.h; \
> |
> cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-wrap.h
> include/stdint.h; \
> | 	  chmod a+r include/stdint.h; \
> | 	elif [ wrap = provide ]; then \
> |
> cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-gcc.h
> include/stdint.h; \
> | 	  chmod a+r include/stdint.h; \
> | 	fi
> | set -e; for ml in `cat fixinc_list`; do \
> | 	  sysroot_headers_suffix=`echo ${ml} | sed -e 's/;.*$//'`; \
> | 	  multi_dir=`echo ${ml} | sed -e 's/^[^;]*;//'`; \
> | 	  fix_dir=include-fixed${multi_dir}; \
> | 	  if [ -f
> `echo /home/laguest/src/others/poky/poky-build/tmp/sysroots/pandaboard
> ${sysroot_headers_suffix}/usr/include | sed -e :a -e 's,[^/]*/\.\.\/,,'
> -e ta`/limits.h ] ; then \
> |
> cat /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/limitx.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/glimits.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/limity.h > tmp-xlimits.h; \
> | 	  else \
> |
> cat /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/glimits.h > tmp-xlimits.h; \
> | 	  fi; \
> |
> 	  /bin/sh /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/../mkinstalldirs ${fix_dir}; \
> | 	  chmod a+rx ${fix_dir} || true; \
> | 	  rm -f ${fix_dir}/limits.h; \
> | 	  mv tmp-xlimits.h ${fix_dir}/limits.h; \
> | 	  chmod a+r ${fix_dir}/limits.h; \
> | 	done
> | rm -f include-fixed/README
> | cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
> +svnr184847-r25/gcc-4_6-branch/gcc/../fixincludes/README-fixinc
> include-fixed/README
> | chmod a+r include-fixed/README
> | echo timestamp > stmp-int-hdrs
> | make[2]: Leaving directory
> `/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-branch/build.x86_64-linux.arm-poky-linux-gnueabi/gcc'
> | Checking multilib configuration for libgcc...
> | Configuring in arm-poky-linux-gnueabi/libgcc
> | configure: loading cache ./config.cache
> | configure: error: `CC' has changed since the previous run:
> | configure:   former value:
> `/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-brERROR: Function failed: do_compile (see /home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/temp/log.do_compile.24746 for further information)
> | anch/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/xgcc
> -B/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-branch/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/ -march=armv7-a -fno-tree-vectorize     -mthumb-interwork -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8 -isystem/home/laguest/src/others/poky/poky-build/tmp/sysroots/overo-storm/usr/include -B/home/laguest/src/others/poky/poky-build/tmp/sysroots/x86_64-linux/usr/a
> NOTE: package gcc-cross-initial-4.6.3+svnr184847-r25: task do_compile:
> Failed
> ERROR: Task 1323
> (/home/laguest/src/others/poky/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.6.bb, do_compile) failed with exit code '1'
> Waiting for 1 running tasks to finish:
> 0: linux-libc-headers-3.2-r1 do_package (pid 6063)
> NOTE: package linux-libc-headers-3.2-r1: task do_package: Succeeded
> NOTE: Tasks Summary: Attempted 363 tasks of which 351 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>    /home/laguest/src/others/poky/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.6.bb, do_compile
> Summary: There were 3 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
>
> Can anybody help me get started with this? I've only been able to build
> an qemux86 image so far which is not that useful for real boards.

Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
it again.  The error you are seeing is related to reusing the same tree
with [somewhat] different target machines.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

