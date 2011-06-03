Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C83FC4C800B0
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 04:17:16 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p539HGdr011892
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 3 Jun 2011 02:17:16 -0700 (PDT)
Received: from [128.224.162.198] (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 3 Jun 2011 02:17:15 -0700
Message-ID: <4DE8A68E.9010205@windriver.com>
Date: Fri, 3 Jun 2011 17:17:02 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
X-Originating-IP: [128.224.162.198]
Subject: build gnutls failed on mpc8315
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
X-List-Received-Date: Fri, 03 Jun 2011 09:17:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

My local repository is 484c4e73245c93a08413cd204513bf5c5698b994, and set 
MACHINE ?= "mpc8315e-rdb".

When build gnutls, it fails. But when I build it for arm, it succeeds.
Do anyone meets that before, thanks!

Error log:
| powerpc-poky-linux-libtool: link: powerpc-poky-linux-ranlib 
.libs/libcmd-p11tool.a
| powerpc-poky-linux-libtool: link: rm -fr .libs/libcmd-p11tool.lax 
.libs/libcmd-p11tool.lax
| /bin/sh ../powerpc-poky-linux-libtool  --tag=CC   --mode=link 
powerpc-poky-linux-gcc -mcpu=603e  -mhard-float 
--sysroot=/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb 
-std=gnu99   -O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1  
-Wl,--as-needed -o psktool psk.o ../lib/libgnutls.la libcmd-psk.la 
../gl/libgnu.la
| 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.6.0/ld: 
warning: library search path "/usr/lib" is unsafe for cross-compilation
| ../lib/.libs/libgnutls.so: undefined reference to `dlsym'
| ../lib/.libs/libgnutls.so: undefined reference to `dlopen'
| ../lib/.libs/libgnutls.so: undefined reference to `dlclose'
| collect2: ld returned 1 exit status
| make[3]: *** [gnutls-serv] Error 1
| make[3]: *** Waiting for unfinished jobs....
| powerpc-poky-linux-libtool: link: ( cd ".libs" && rm -f 
"libcmd-p11tool.la" && ln -s "../libcmd-p11tool.la" "libcmd-p11tool.la" )
| powerpc-poky-linux-libtool: link: powerpc-poky-linux-gcc -mcpu=603e 
-mhard-float 
--sysroot=/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb 
-std=gnu99 -O2 -pipe -g -feliminate-unused-debug-types -Wl,-O1 
-Wl,--as-needed -o .libs/gnutls-cli cli.o common.o p11common.o  
../lib/.libs/libgnutls.so 
-L/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib 
-L=/usr/lib -L/usr/lib ../libextra/.libs/libgnutls-extra.so 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/liblzo2.so 
/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/gnutls-2.12.5/lib/.libs/libgnutls.so 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libtasn1.so 
-lpthread ./.libs/libcmd-cli.a ../gl/.libs/libgnu.a -lrt 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgcrypt.so 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgpg-error.so
| 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.6.0/ld: 
warning: library search path "/usr/lib" is unsafe for cross-compilation
| ../lib/.libs/libgnutls.so: undefined reference to `dlsym'
| ../lib/.libs/libgnutls.so: undefined reference to `dlopen'
| ../lib/.libs/libgnutls.so: undefined reference to `dlclose'
| collect2: ld returned 1 exit status
| make[3]: *** [gnutls-cli] Error 1
| powerpc-poky-linux-libtool: link: powerpc-poky-linux-gcc -mcpu=603e 
-mhard-float 
--sysroot=/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb 
-std=gnu99 -O2 -pipe -g -feliminate-unused-debug-types -Wl,-O1 
-Wl,--as-needed -o .libs/psktool psk.o  ../lib/.libs/libgnutls.so 
-L/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib 
-L=/usr/lib -L/usr/lib 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libtasn1.so 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgcrypt.so 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgpg-error.so 
-lpthread ./.libs/libcmd-psk.a ../gl/.libs/libgnu.a -lrt
| 
/mnt/sda9/poky-tmp-build/build/tmp/sysroots/x86_64-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.6.0/ld: 
warning: library search path "/usr/lib" is unsafe for cross-compilation
| ../lib/.libs/libgnutls.so: undefined reference to `dlsym'
| ../lib/.libs/libgnutls.so: undefined reference to `dlopen'
| ../lib/.libs/libgnutls.so: undefined reference to `dlclose'
| collect2: ld returned 1 exit status
| make[3]: *** [psktool] Error 1
| make[3]: Leaving directory 
`/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/gnutls-2.12.5/src'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory 
`/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/gnutls-2.12.5/src'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory 
`/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/gnutls-2.12.5'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see 
/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/temp/log.do_compile.12294 
for further information)
| ERROR: Function 'do_compile' failed (see 
/mnt/sda9/poky-tmp-build/build/tmp/work/ppc603e-poky-linux/gnutls-2.12.5-r0/temp/log.do_compile.12294 
for further information)
NOTE: package gnutls-2.12.5-r0: task do_compile: Failed
ERROR: Task 7 
(/mnt/sda9/poky-tmp-build/meta/recipes-support/gnutls/gnutls_2.12.5.bb, 
do_compile) failed with exit code '1'

Regards,
Kai

