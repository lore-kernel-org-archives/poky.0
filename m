Return-Path: <laguest@archeia.com>
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6612E0044A
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 10:26:18 -0700 (PDT)
Received: from [192.168.0.2] (5ac4d3d6.bb.sky.com [90.196.211.214])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id 336658045
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 17:26:16 +0000 (UTC)
Message-ID: <1344533174.4828.29.camel@rogue>
From: "Luke A. Guest" <laguest@archeia.com>
To: poky@yoctoproject.org
Date: Thu, 09 Aug 2012 18:26:14 +0100
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
Subject: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Thu, 09 Aug 2012 17:26:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I was originally trying to build for Gumstix Overo IronStorm board using
the MACHINE ??=3D "overo-storm", this failed
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2924), so I thought
I'd try a build for my Pandaboard ES.

There's no ES specific version yet, but I thought I'd try to build using
MACHINE =3D "pandaboard" - I don't know if the ??=3D or =3D should make a
difference, I was told not. But now this is failing in
gcc-cross-initial-4.6.3+svnr184847-r25:

| for file
in .. /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/float.h /home/laguest/src/other=
s/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/g=
cc/ginclude/iso646.h /home/laguest/src/others/poky/poky-build/tmp/work-shar=
ed/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdarg.h /home/lagu=
est/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc=
-4_6-branch/gcc/ginclude/stdbool.h /home/laguest/src/others/poky/poky-build=
/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdde=
f.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr=
184847-r25/gcc-4_6-branch/gcc/ginclude/varargs.h /home/laguest/src/others/p=
oky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/=
ginclude/stdfix.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/=
gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/config/arm/mmintrin.h /home/lag=
uest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gc=
c-4_6-branch/gcc/config/arm/arm_neon.h; do \
| 	  if [ X$file !=3D X.. ]; then \
| 	    realfile=3D`echo $file | sed -e 's|.*/\([^/]*\)$|\1|'`; \
| 	    echo timestamp > include/$realfile; \
| 	    rm -f include/$realfile; \
| 	    cp $file include; \
| 	    chmod a+r include/$realfile; \
| 	  fi; \
| 	done
| for file in .. ; do \
| 	  if [ X$file !=3D X.. ]; then \
|             mv include/$file include/x_$file; \
|             echo "#include_next <$file>" >include/$file; \
|             cat include/x_$file >>include/$file; \
|             rm -f include/x_$file; \
| 	    chmod a+r include/$file; \
| 	  fi; \
| 	done
| for file in .. ; do \
| 	  if [ X$file !=3D X.. ]; then \
| 	    echo "#include_next <$file>" >>include/$file; \
| 	    chmod a+r include/$file; \
| 	  fi; \
| 	done
| rm -f include/unwind.h
| cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/config/arm/unwind-arm.h
include/unwind.h
| chmod a+r include/unwind.h
| rm -f include/stdint.h
| if [ wrap =3D wrap ]; then \
| 	  rm -f include/stdint-gcc.h; \
|
cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-gcc.h
include/stdint-gcc.h; \
| 	  chmod a+r include/stdint-gcc.h; \
|
cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-wrap.h
include/stdint.h; \
| 	  chmod a+r include/stdint.h; \
| 	elif [ wrap =3D provide ]; then \
|
cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/ginclude/stdint-gcc.h
include/stdint.h; \
| 	  chmod a+r include/stdint.h; \
| 	fi
| set -e; for ml in `cat fixinc_list`; do \
| 	  sysroot_headers_suffix=3D`echo ${ml} | sed -e 's/;.*$//'`; \
| 	  multi_dir=3D`echo ${ml} | sed -e 's/^[^;]*;//'`; \
| 	  fix_dir=3Dinclude-fixed${multi_dir}; \
| 	  if [ -f
`echo /home/laguest/src/others/poky/poky-build/tmp/sysroots/pandaboard
${sysroot_headers_suffix}/usr/include | sed -e :a -e 's,[^/]*/\.\.\/,,'
-e ta`/limits.h ] ; then \
|
cat /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/limitx.h /home/laguest/src/others/poky/p=
oky-build/tmp/work-shared/gcc-4.6.3+svnr184847-r25/gcc-4_6-branch/gcc/glimi=
ts.h /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3+svn=
r184847-r25/gcc-4_6-branch/gcc/limity.h > tmp-xlimits.h; \
| 	  else \
|
cat /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/glimits.h > tmp-xlimits.h; \
| 	  fi; \
|
	  /bin/sh /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6=
.3+svnr184847-r25/gcc-4_6-branch/gcc/../mkinstalldirs ${fix_dir}; \
| 	  chmod a+rx ${fix_dir} || true; \
| 	  rm -f ${fix_dir}/limits.h; \
| 	  mv tmp-xlimits.h ${fix_dir}/limits.h; \
| 	  chmod a+r ${fix_dir}/limits.h; \
| 	done
| rm -f include-fixed/README
| cp /home/laguest/src/others/poky/poky-build/tmp/work-shared/gcc-4.6.3
+svnr184847-r25/gcc-4_6-branch/gcc/../fixincludes/README-fixinc
include-fixed/README
| chmod a+r include-fixed/README
| echo timestamp > stmp-int-hdrs
| make[2]: Leaving directory
`/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-branch/build.x86_=
64-linux.arm-poky-linux-gnueabi/gcc'
| Checking multilib configuration for libgcc...
| Configuring in arm-poky-linux-gnueabi/libgcc
| configure: loading cache ./config.cache
| configure: error: `CC' has changed since the previous run:
| configure:   former value:
`/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-brERROR: Function=
 failed: do_compile (see /home/laguest/src/others/poky/poky-build/tmp/work/=
armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/t=
emp/log.do_compile.24746 for further information)
| anch/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/xgcc
-B/home/laguest/src/others/poky/poky-build/tmp/work/armv7a-vfp-neon-poky-li=
nux-gnueabi/gcc-cross-initial-4.6.3+svnr184847-r25/gcc-4_6-branch/build.x86=
_64-linux.arm-poky-linux-gnueabi/./gcc/ -march=3Darmv7-a -fno-tree-vectoriz=
e     -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a=
8 -isystem/home/laguest/src/others/poky/poky-build/tmp/sysroots/overo-storm=
/usr/include -B/home/laguest/src/others/poky/poky-build/tmp/sysroots/x86_64=
-linux/usr/a
NOTE: package gcc-cross-initial-4.6.3+svnr184847-r25: task do_compile:
Failed
ERROR: Task 1323
(/home/laguest/src/others/poky/poky/meta/recipes-devtools/gcc/gcc-cross-ini=
tial_4.6.bb, do_compile) failed with exit code '1'
Waiting for 1 running tasks to finish:
0: linux-libc-headers-3.2-r1 do_package (pid 6063)
NOTE: package linux-libc-headers-3.2-r1: task do_package: Succeeded
NOTE: Tasks Summary: Attempted 363 tasks of which 351 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/laguest/src/others/poky/poky/meta/recipes-devtools/gcc/gcc-cross-in=
itial_4.6.bb, do_compile
Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit
code.

Can anybody help me get started with this? I've only been able to build
an qemux86 image so far which is not that useful for real boards.

Thanks,
Luke.



