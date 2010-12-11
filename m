Return-Path: <raj.khem@gmail.com>
Received: from mail-iw0-f174.google.com (mail-iw0-f174.google.com
	[209.85.214.174])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A1A74C80050
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 04:47:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn9 with SMTP id 9so7279322iwn.33
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 02:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:date:from:to:cc:subject
	:message-id:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=n6iQjV5XJT8AahI0QxESYLmH4NO8+td7IuCb2jA0RTo=;
	b=bZAD01g53jEJWDHdnt33J5oFifLXiqAXQWDUQEzZPxzGPdn2KWOfy1tOo4VfSOZSKM
	x09FHF35U55vO4FalyPcZ0MVAARD8JB8zsfhQ1xnQGads0yVO9CJN9W2KO+JYa5Ts7UL
	etsmGcbn1Tsb0td03+5Bfd7ShARa9cdg+lB0w=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	b=ZUMvOirx7dZTJcgb7pbpE93pURiZr9iDwhXhJHPQrcT7Rv65c8S6AQcKJcZklb9iex
	TTdM/fnzZIBx94gX5W0z5u17Kqqeq2A6tZyqzwXlBJOicsckzat43TafwTIWQlrlcxyy
	NOsfkViwFx/XkyUA4CfVmvrVMZUItXFRRT+2s=
Received: by 10.42.218.6 with SMTP id ho6mr1335461icb.12.1292064432784;
	Sat, 11 Dec 2010 02:47:12 -0800 (PST)
Received: from gmail.com (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id 8sm3652613iba.4.2010.12.11.02.47.11
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 11 Dec 2010 02:47:11 -0800 (PST)
Date: Sat, 11 Dec 2010 02:47:11 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Message-ID: <20101211104711.GB10409@gmail.com>
References: <20101205125755.1B42C351@gemini.denx.de>
MIME-Version: 1.0
In-Reply-To: <20101205125755.1B42C351@gemini.denx.de>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Sat, 11 Dec 2010 10:47:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (05/12/10 13:57), Wolfgang Denk wrote:
> Trying to build on a Fedora 14 box, elfutis fails with this error:
>=20
> ...
> | make[2]: Entering directory `/opt/poky/build-laverne-4.0-kilauea/tmp/wo=
rk/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148/src'
> ...
> | ccache gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra -fgnu89=
-inline -Wformat=3D2   -isystem/opt/poky/build-laverne-4.0-kilauea/tmp/sysr=
oots/x86_64-linux/usr/include -O2 -Wl,-rpath-link,../libelf:../libdw -L/opt=
/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpat=
h-link,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/li=
b -Wl,-rpath,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/=
usr/lib -Wl,-O1 -o objdump objdump.o ../libasm/libasm.so ../libebl/libebl.a=
 ../libelf/libelf.so ../lib/libeu.a  -ldl
> | ./ld: unrecognized option '--no-add-needed'
> | Try `ld --help' or `ld --usage' for more information.
> | collect2: ld returned 64 exit status
> | make[2]: *** [addr2line] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | ./ld: unrecognized option '--no-add-needed'
> | Try `ld --help' or `ld --usage' for more information.
> | collect2: ld returned 64 exit status
> | make[2]: *** [elfcmp] Error 1
> | ./ld: unrecognized option '--no-add-needed'
> | Try `ld --help' or `ld --usage' for more information.
> | collect2: ld returned 64 exit status
>=20
> In Fedora 14, the following command gets generated:
>=20
> /usr/libexec/gcc/x86_64-redhat-linux/4.5.1/collect2 --build-id --no-add-n=
eeded --eh-frame-hdr -m elf_x86_64 --hash-style=3Dgnu -dynamic-linker /lib6=
4/ld-linux-x86-64.so.2 -o objdump /usr/lib/gcc/x86_64-redhat-linux/4.5.1/..=
/../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../l=
ib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtbegin.o -L/opt/poky/b=
uild-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -L/usr/lib/gcc/x=
86_64-redhat-linux/4.5.1 -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../=
=2E./lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat=
-linux/4.5.1/../../.. --add-needed -rpath-link ../libelf:../libdw -rpath-li=
nk /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib -r=
path /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-linux/usr/lib =
-O1 objdump.o ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so ..=
/lib/libeu.a -ldl -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-n=
eeded -lgcc_s --no-as
>  -needed /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtend.o /usr/lib/gcc/x86=
_64-redhat-linux/4.5.1/../../../../lib64/crtn.o
> ./ld: unrecognized option '--no-add-needed'
> Try `ld --help' or `ld --usage' for more information.
> collect2: ld returned 64 exit status
>=20
> Unfortunately the "ld" command in elfutils-0.148 does not understand
> the '--no-add-needed'; I've tried to find any existing fixes for
> this, but what I found just added a "-Xlinker --add-needed" to the
> command line, which does not help here since ./ld understands neither
> '--no-add-needed' nor '--add-needed'.
>=20
> Any ideas?

I think we really dont need the tools part only libelf is needed so one way
is to not build everything but just do targetted make targets and avoid
building tools as its happening=20

secondly you could try to add --program-prefix=3D"elfutils-" or somesuch
then the linker from elfutils will be called elfutils-ld but I dont know if
it will work because renaming happens during the install phase you have to =
try it out.

-Khem

>=20
> Best regards,
>=20
> Wolfgang Denk
>=20
> --=20
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> The use of anthropomorphic terminology when  dealing  with  computing
> systems is a symptom of professional immaturity.   -- Edsger Dijkstra
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

