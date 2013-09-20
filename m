Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D1A3E015F1;
	Fri, 20 Sep 2013 03:03:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2013 03:02:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,943,1371106800"; d="scan'208";a="406338589"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.165])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2013 03:02:28 -0700
Date: Fri, 20 Sep 2013 13:02:27 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Li Zhijian <lizhijian@cn.fujitsu.com>
Message-ID: <20130920100227.GC14107@lpalcu-linux>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
	<20130920085039.GB14107@lpalcu-linux>
	<523C1BC9.5070303@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <523C1BC9.5070303@cn.fujitsu.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [yocto] Is this a bug of binutils
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
X-List-Received-Date: Fri, 20 Sep 2013 10:03:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Sep 20, 2013 at 05:56:25PM +0800, Li Zhijian wrote:
> at 2013-9-20 16:50, Laurentiu Palcu wrote:
> >On Fri, Sep 20, 2013 at 11:43:31AM +0300, Laurentiu Palcu wrote:
> >>Hi,
> >>
> >>On Fri, Sep 20, 2013 at 02:45:24PM +0800, Li Zhijian wrote:
> >>>Hi，all
> >>>
> >>>I got a big problem when using the cross-toolchain to compile a simple C program.
> >>>This problem since 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
> >>>which is to upgrade the binutils from 2.22 to 2.23.1
> >Apparently I missed this... Make sure you checkout
> >0333796a6b167dd754806700d7f771dd4a74e4ab (binutils_2.23.1.bb: Correct
> >typo in enable-targets configure option). This might be your problem.
> >
> >Laurentiu
> i am sorry，i don't understand what do you mean
My bad, I copy-pasted the wrong sha1 (the summary was good though).
Here's the correct sha1: a8fa49fbc21d460479ecadeb1996a800cc4e3e07

Laurentiu
> 
> in poky git tree，
> 
> 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 is newer than 0333796a6b167dd754806700d7f771dd4a74e4ab
> 
> this checkout 0333796a6b167dd754806700d7f771dd4a74e4ab ， toolchain work fine
> 
> # git log
> commit 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
> Author: Khem Raj <raj.khem@gmail.com>
> Date:   Wed Aug 8 10:33:41 2012 -0700
> 
>     tcmode-default.inc: Use binutils 2.23.1
> ...skip...
> 
> commit 0333796a6b167dd754806700d7f771dd4a74e4ab
> Author: Khem Raj <raj.khem@gmail.com>
> Date:   Wed Aug 8 07:57:46 2012 -0700
> 
>     oprofile: Include config.h before bfd.h
> 
>     oprofile uses bfd.h from binutils which now in 2.23+ expects config.h
>     so lets include it
> ...skip...
> 
> 
> -- 
> Best regards.
> Li Zhijian
> 
> 
> >>>what I do is as follows, any help or ideas ?
> >>>
> >>>I) Build my cross-toolchain
> >>># git clone http://git.yoctoproject.org/git/poky/.git
> >>># cd poky
> >>># git checkout 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 -b tcmode-default
> >>>...skip some steps...
> >>># bitbake meta-toolchain
> >>>Loading cache: 100% |############################################################################################| ETA: 00:00:00
> >>>Loaded 1122 entries from dependency cache.
> >>>
> >>>Build Configuration:
> >>>BB_VERSION = "1.17.0"
> >>>BUILD_SYS = "x86_64-linux"
> >>>NATIVELSBSTRING = "CentOS-6.3"
> >>>TARGET_SYS = "x86_64-poky-linux"
> >>>MACHINE = "qemux86-64"
> >>>DISTRO = "poky"
> >>>DISTRO_VERSION = "1.3+snapshot-20130912"
> >>>TUNE_FEATURES = "m64"
> >>>TARGET_FPU = ""
> >>>meta
> >>>meta-yocto
> >>>meta-yocto-bsp = "tcmode-default:3ae71c74c71f13a390b21b4c3ead04e51aaa82b8"
> >>>
> >>>..cost a long time..
> >>>all of the build work successfully
> >>>
> >>>II) Install my cross-toolchain
> >>># ./poky-eglibc-x86_64-x86_64-toolchain-1.3+snapshot-20130912.sh
> >>>Enter target directory for SDK (default: /opt/poky/1.3+snapshot): toolchain-1.3-tcmode-default
> >>>
> >>>III） compile a simple C program
> >>># cat test.c
> >>>int main ()
> >>>{
> >>>printf("hello world\n");
> >>>return 0;
> >>>}
> >>># source toolchain-1.3-tcmode-default/environment-setup-x86_64-poky-linux
> >>># $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
> >>Technically, for this simple program, it's enough to do:
> >>
> >>$CC -o test test.c
> >>
> >>The $CC contains the sysroot option and the linker will automatically
> >>prefix /lib and /usr/lib with the target sysroot. So, it should be able
> >>to compile just fine.
> >>
> >>The -L option just adds another search path for libraries which will be
> >>searched before the default ones. So, it shouldn't be a problem.
> >>
> >>Somehow, it looks like it tries to link against the host's libraries.
> >>
> >>Before compiling, do a 'echo $CC' and make sure the --sysroot points to
> >>the correct directory.
> >>
> >>Laurentiu
> >>
> >>>test.c: In function 'main':
> >>>test.c:3:9: warning: incompatible implicit declaration of built-in function 'printf' [enabled by default]
> >>>/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: skipping incompatible /lib/libc.so.6 when searching for /lib/libc.so.6
> >>>/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: cannot find /lib/libc.so.6
> >>>/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: skipping incompatible /usr/lib/libc_nonshared.a when searching for /usr/lib/libc_nonshared.a
> >>>/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: cannot find /usr/lib/libc_nonshared.a
> >>>collect2: error: ld returned 1 exit status
> >>>
> >>>
> >>>#cat toolchain-1.3-tcmode-default/environment-setup-x86_64-poky-linux
> >>>export PATH=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin:/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux:$PATH
> >>>export PKG_CONFIG_SYSROOT_DIR=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux
> >>>export PKG_CONFIG_PATH=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux/usr/lib/pkgconfig
> >>>export CONFIG_SITE=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/site-config-x86_64-poky-linux
> >>>export CC="x86_64-poky-linux-gcc -m64 --sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export CXX="x86_64-poky-linux-g++ -m64 --sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export CPP="x86_64-poky-linux-gcc -E -m64 --sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export AS="x86_64-poky-linux-as "
> >>>export LD="x86_64-poky-linux-ld --sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export GDB=x86_64-poky-linux-gdb
> >>>export STRIP=x86_64-poky-linux-strip
> >>>export RANLIB=x86_64-poky-linux-ranlib
> >>>export OBJCOPY=x86_64-poky-linux-objcopy
> >>>export OBJDUMP=x86_64-poky-linux-objdump
> >>>export AR=x86_64-poky-linux-ar
> >>>export NM=x86_64-poky-linux-nm
> >>>export M4=m4
> >>>export TARGET_PREFIX=x86_64-poky-linux-
> >>>export CONFIGURE_FLAGS="--target=x86_64-poky-linux --host=x86_64-poky-linux --build=x86_64-linux --with-libtool-sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export CFLAGS=" -O2 -pipe -g -feliminate-unused-debug-types"
> >>>export CXXFLAGS=" -O2 -pipe -g -feliminate-unused-debug-types -fpermissive"
> >>>export LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed"
> >>>export CPPFLAGS=""
> >>>export OECORE_NATIVE_SYSROOT="/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux"
> >>>export OECORE_TARGET_SYSROOT="/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux"
> >>>export OECORE_ACLOCAL_OPTS="-I /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/share/aclocal"
> >>>export OECORE_DISTRO_VERSION="1.3+snapshot-20130912"
> >>>export OECORE_SDK_VERSION="1.3+snapshot"
> >>>
> >>>-- 
> >>>Best regards.
> >>>Li Zhijian (8555)
> >>>
> >>>
> >>>_______________________________________________
> >>>yocto mailing list
> >>>yocto@yoctoproject.org
> >>>https://lists.yoctoproject.org/listinfo/yocto
> >>_______________________________________________
> >>poky mailing list
> >>poky@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/poky
> >
> 
> 
> 

