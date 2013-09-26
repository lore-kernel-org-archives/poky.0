Return-Path: <laurentiu.palcu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C82E01637;
	Thu, 26 Sep 2013 00:36:44 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Sep 2013 00:36:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,983,1371106800"; d="scan'208";a="299536574"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.165])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Sep 2013 00:36:42 -0700
Date: Thu, 26 Sep 2013 10:36:41 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Li Zhijian <lizhijian@cn.fujitsu.com>
Message-ID: <20130926073641.GA8711@lpalcu-linux>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
	<20130920085039.GB14107@lpalcu-linux>
	<523C1BC9.5070303@cn.fujitsu.com>
	<20130920100227.GC14107@lpalcu-linux>
	<523C228F.7060700@cn.fujitsu.com>
	<20130920110021.GD14107@lpalcu-linux>
	<5243B0A2.2060001@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <5243B0A2.2060001@cn.fujitsu.com>
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
X-List-Received-Date: Thu, 26 Sep 2013 07:36:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Li Zhijian,

On Thu, Sep 26, 2013 at 11:57:22AM +0800, Li Zhijian wrote:
> Hi，Laurentiu
> 
> I think it could be something wrong with binutils(2.23.1 or later)
> there is different behavior at binutils-2.23.1/ld/ldfile.c（ldfile_open_file_search) from binutils-2.22
> 
> If both --sysroot directory and -L directory include libc.so , ld don't work
> In my case， there are double libc.so(/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux/usr/lib/libc.so and tmp/sysroots/qemux86-64/usr/lib/libc.so)
> 
> ld will link tmp/sysroots/qemux86-64/usr/lib/libc.so（ld always searchs -L directory at first)
> then link /lib/libc.so.6 specified at tmp/sysroots/qemux86-64/usr/lib/libc.so instead of
> append sysroot directory path before /lib/libc.so.6
> 
> here is a sample method reproduce it
> 
> lizj@suika x86-64-yocto-1.3]$ source toolchain-1.3-tcmode-default/environment-setup-x86_64-poky-linux
> [lizj@suika x86-64-yocto-1.3]$ echo $CC
> x86_64-poky-linux-gcc -m64 --sysroot=/yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux
> [lizj@suika x86-64-yocto-1.3]$ $LD --version
> GNU ld (GNU Binutils) 2.23.1.20121113
> [lizj@suika x86-64-yocto-1.3]$ mkdir -p fake_rootfs/usr/lib
> [lizj@suika x86-64-yocto-1.3]$ cp /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-poky-linux/usr/lib/libc.so fake_rootfs/usr/lib/
This libc.so is actually a linker script with the following contents:

/* GNU ld script
   Use the shared library, but some functions are only in
   the static library, so try that secondarily.  */
OUTPUT_FORMAT(elf64-x86-64)
GROUP ( /lib/libc.so.6 /usr/lib/libc_nonshared.a  AS_NEEDED (/lib/ld-linux-x86-64.so.2 ) )

So, the /lib/libc.so.6 and /usr/lib/libc_nonshared.a will be searched until no
undefined references are created. So, it looks like this linker script
overrides the --sysroot behavior. To be honest (even though I'm not an expert in
binutils), I think this is right behavior. I don't know why this works with the
previous binutils...

Thanks,
Laurentiu

> [lizj@suika x86-64-yocto-1.3]$ ls fake_rootfs/usr/lib/
> libc.so
> [lizj@suika x86-64-yocto-1.3]$ $CC -o test test.c -L ./fake_rootfs/usr/lib/
> test.c: In function 'main':
> test.c:3:9: warning: incompatible implicit declaration of built-in function 'printf' [enabled by default]
> /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: skipping incompatible /lib/libc.so.6 when searching for /lib/libc.so.6
> /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: cannot find /lib/libc.so.6
> /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: skipping incompatible /usr/lib/libc_nonshared.a when searching for /usr/lib/libc_nonshared.a
> /yocto/fnst/lizj/build_yocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.7.2/ld: cannot find /usr/lib/libc_nonshared.a
> collect2: error: ld returned 1 exit status
> -------------------------------------------------------------------------
> 
> It seems that ld don‘t  really reasonable to do like that，which binutils-2.22 can handle correctly
> Does poky mind this behavior
> 
> 
> 以上
> 
> -- 
> Best regards.
> Li Zhijian
> 
> 
> 
> at 2013-9-20 19:00, Laurentiu Palcu wrote:
> >Hi,
> >
> >On Fri, Sep 20, 2013 at 06:25:19PM +0800, Li Zhijian wrote:
> >>>>>>>III） compile a simple C program
> >>>>>>># cat test.c
> >>>>>>>int main ()
> >>>>>>>{
> >>>>>>>printf("hello world\n");
> >>>>>>>return 0;
> >>>>>>>}
> >>>>>>># source toolchain-1.3-tcmode-default/environment-setup-x86_64-poky-linux
> >>>>>>># $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
> >OK, it looks like something strange happens in your setup.
> >
> >To debug it, let's add '-Wl,--verbose' at the end of your command and you
> >should be able to see where the linker is looking for libraries. Also,
> >the linker script will be printed.
> >
> >You should see it try your directory first
> >tmp/sysroots/qemux86-64/usr/lib/, and then fall through the default ones
> >with the sysroot prefix added and, at the end, the system ones:
> >/lib:/usr/lib.
> >
> >Thanks,
> >Laurentiu
> >
> >
> 
> 
> 

