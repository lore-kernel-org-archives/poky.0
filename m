Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0E094C80050
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 06:57:56 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id E2C641C1D9EA
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 13:57:55 +0100 (CET)
X-Auth-Info: /oD18Q/I1ipII8upF/bA22wHmSEPMzCtfbRl4hvoOpg=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 77F171C0037A
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 13:57:55 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 51DC43335217
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 13:57:55 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 1B42C351
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 13:57:55 +0100 (CET)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Sun, 05 Dec 2010 13:57:55 +0100
Message-Id: <20101205125755.1B42C351@gemini.denx.de>
Subject: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Sun, 05 Dec 2010 12:57:57 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Trying to build on a Fedora 14 box, elfutis fails with this error:

...
| make[2]: Entering directory `/opt/poky/build-laverne-4.0-kilauea/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148/src'
...
| ccache gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra -fgnu89-inline -Wformat=2   -isystem/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/include -O2 -Wl,-rpath-link,../libelf:../libdw -L/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1 -o objdump objdump.o ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a  -ldl
| ./ld: unrecognized option '--no-add-needed'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status
| make[2]: *** [addr2line] Error 1
| make[2]: *** Waiting for unfinished jobs....
| ./ld: unrecognized option '--no-add-needed'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status
| make[2]: *** [elfcmp] Error 1
| ./ld: unrecognized option '--no-add-needed'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status

In Fedora 14, the following command gets generated:

/usr/libexec/gcc/x86_64-redhat-linux/4.5.1/collect2 --build-id --no-add-needed --eh-frame-hdr -m elf_x86_64 --hash-style=gnu -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o objdump /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtbegin.o -L/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1 -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../.. --add-needed -rpath-link ../libelf:../libdw -rpath-link /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -rpath /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -O1 objdump.o ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a -ldl -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as
 -needed /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtend.o /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64/crtn.o
./ld: unrecognized option '--no-add-needed'
Try `ld --help' or `ld --usage' for more information.
collect2: ld returned 64 exit status

Unfortunately the "ld" command in elfutils-0.148 does not understand
the '--no-add-needed'; I've tried to find any existing fixes for
this, but what I found just added a "-Xlinker --add-needed" to the
command line, which does not help here since ./ld understands neither
'--no-add-needed' nor '--add-needed'.

Any ideas?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The use of anthropomorphic terminology when  dealing  with  computing
systems is a symptom of professional immaturity.   -- Edsger Dijkstra

