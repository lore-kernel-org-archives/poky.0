Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.42])
 by mx.groups.io with SMTP id smtpd.web12.7000.1593769199694519842
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 02:40:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kolabnow.com header.s=dkim20160331 header.b=3zlKGA/i;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.42, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTP id 92994672;
	Fri,  3 Jul 2020 11:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	message-id:references:in-reply-to:subject:subject:from:from:date
	:date:content-transfer-encoding:content-type:content-type
	:mime-version:received:received:received; s=dkim20160331; t=
	1593769195; x=1595583596; bh=pQXcSNUF/FdVh65xZZrfwfvFrJv5epPE6s1
	XNILJPS0=; b=3zlKGA/iM1pJ77X9XA1BYdMSEISa7sReepQXNpTWcSCJAJoVAvF
	LyhANJu9FdB3f4oFSM8VkNQC+ehjeOvcxvvJdjo3JLae05uOqNsKNB/zuE/4Kr7B
	nFOc7Z50K21NoD3vbUNeCdfppDZrv74Yx7mX6Sr6+c9eIb52N8rWACQmN5OCtqvg
	NBoTG4rUSpbjNiMC8rYAzckH/5czobnaE2XH4hVucbLovBXKlr/iyGuEhBAkc2Tm
	gIpyXYpkjMgYRRyV4j9yXlG+eQLpbXnYn/vaGTcsPySOExviMQpdpAySM+gylc0x
	hJIbhP7rhNMfLWoSvlf4NeC2NKX1ffO2NaNOAoIgOUPThXsogozYIw0rNAq9Yh2l
	JPT5yyo3FWVydt4KQfMauATvQD9k3MaRxRR2YachMKuV2F3HkP7W6n7Ss6ijC+iE
	KmvucbpCjkxI5+pDeiNpnzXeQuWnI1vfiWeRGZhEO/nnO65ZQ6Gt0IE/Mwz0XafU
	Hrmjsat5AW5sEddSicekOFbW5LT5rlJQquJKztCa5kDR/sFrU0Guq2FZmcZG5KNk
	p6eg9SzwVeCkxEfJjAdCFVox+ZEL8TP9kp4tVynJla9qfbDBemWCRoLXhE36NKvw
	4bapyq91C8m/jPeb3zfcJ388UyrhAhx2KbaV2hc+uwUZ3pe3O8TZzqJA=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out002.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LOAZJuK1fWpx; Fri,  3 Jul 2020 11:39:55 +0200 (CEST)
Received: from int-mx002.mykolab.com (unknown [10.9.13.2])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTPS id B9559404;
	Fri,  3 Jul 2020 11:39:55 +0200 (CEST)
Received: from int-subm002.mykolab.com (unknown [10.9.37.2])
	by int-mx002.mykolab.com (Postfix) with ESMTPS id 61EFE23DC;
	Fri,  3 Jul 2020 11:39:55 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 11:39:54 +0200
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Subject: Re: [poky] [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
In-Reply-To: <20200701145837.7stpc5ngqg7sn27d@qschulz>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
 <20200701145837.7stpc5ngqg7sn27d@qschulz>
Message-ID: <d9cc84340a14589bff4bfbe8a588a096@kolabnow.com>
X-Sender: hubert.chaumette@kolabnow.com
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

Le 01/07/2020 16:58, Quentin Schulz a =C3=A9crit=C2=A0:
> Hi Hubert,
>=20
> On Wed, Jul 01, 2020 at 03:54:37PM +0200, Hubert CHAUMETTE via
> lists.yoctoproject.org wrote:
>> Registers to the master notifier and displays the string received on=20
>> R/W.
>>=20
>> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
>> ---
>>  .../kernel-module-slave/files/COPYING         | 15 ++++++
>>  .../kernel-module-slave/files/Makefile        | 16 ++++++
>>  .../kernel-module-slave/files/slave.c         | 52=20
>> +++++++++++++++++++
>>  .../kernel-module-slave.bb                    | 17 ++++++
>>  4 files changed, 100 insertions(+)
>>  create mode 100644=20
>> meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>>  create mode 100644=20
>> meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>>  create mode 100644=20
>> meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
>>  create mode 100644=20
>> meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.b=
b
>>=20
>> diff --git=20
>> a/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING=20
>> b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>> new file mode 100644
>> index 0000000000..286d9e8890
>> --- /dev/null
>> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>> @@ -0,0 +1,15 @@
>> +Copyright (C) 2020 Hubert CHAUMETTE
>> +
>> +This program is free software; you can redistribute it and/or modify
>> +it under the terms of the GNU General Public License as published by
>> +the Free Software Foundation; either version 2 of the License, or
>> +(at your option) any later version.
>> +
>> +This program is distributed in the hope that it will be useful,
>> +but WITHOUT ANY WARRANTY; without even the implied warranty of
>> +MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> +GNU General Public License for more details.
>> +
>> +You should have received a copy of the GNU General Public License
>> +along with this program; if not, write to the Free Software
>> +Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301=
=20
>>  USA
>> diff --git=20
>> a/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile=20
>> b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>> new file mode 100644
>> index 0000000000..edf12b7f31
>> --- /dev/null
>> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>> @@ -0,0 +1,16 @@
>> +SRC :=3D $(shell pwd)
>> +
>> +obj-m :=3D slave.o
>> +# $src is a Kbuild variable. Using $SRC doesn't work.
>> +ccflags-y :=3D=20
>> -I$(src)/recipe-sysroot/usr/include/kernel-module-master/
>> +
>=20
> This makes your Makefile (hence kernel-module) bound to Yocto which is
> probably not a real life example (and it is highly suggested to never
> hardcode CFLAGS, CXXFLAGS, LDFLAGS, CC, etc... in
> Makefile/CMakeLists/you name it because it is a source of problems we
> could have avoided in the first place).

I've used something similar on a yocto-only project, so it is actually
a real example, but good point on keeping it independent.

> Better have a TARGET_CFLAGS +=3D=20
> "-I${STAGING_INCDIR}/kernel-module-master"

I didn't manage to make it work.

> Also technically, if your "master" is always installing the header in
> <includedir>/kernel-module-master, maybe it'd actually be better to fix
> the original code and use #include <kernel-module-master/master.h> ?

I use a subdirectory to keep the a kernel header separated from
userspace includes.
Also, removing kernel-module-master/ doesn't work: kernel modules
don't see the userspace inludedir by default.
Using STAGING_KERNEL_DIR allows to skip the CFLAGS dance but doesn't
seem right either (using a third party staging directory seems to
be asking for trouble) and I had issues with it (as discussed with
Bruce Ashfield earlier).
I'd be happy to know what is the correct way to do it.

> Overall, I'm not sure to understand what this has to do with
> kernel modules and if this is really an example worthy to be in
> meta-skeleton?
>=20
> It's basically an example for using DEPENDS and an include file, from
> this recipe, which is at the "wrong" (read not directly in=20
> /usr/include)
> location from another recipe.

As said above, kernel modules don't follow the usual rules and would
benefit IMO from a standardized example.

>> +MODULE_LICENSE("GPL");
>=20
> GPL or GPLv2

According to=20
https://www.kernel.org/doc/html/latest/process/license-rules.html
it doesn't matter.

> Also, do those examples **really** need to be named slave/master? I=20
> mean
> they're just exchanging data whose format has been defined into one
> kernel module.

The naming is to emphasize the dependency relationship, the=20
implementation
is irrelevant. Would you prefer Paul's notifier/receiver?

>> diff --git=20
>> a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave=
.bb=20
>> b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave=
.bb
>> new file mode 100644
>> index 0000000000..280fa815f3
>> --- /dev/null
>> +++=20
>> b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave=
.bb
>> @@ -0,0 +1,17 @@
>> +SUMMARY =3D "External kernel module dependency exemple - slave module=
"
>> +LICENSE =3D "GPLv2"
>> +LIC_FILES_CHKSUM =3D=20
>> "file://COPYING;md5=3D1c5a04927650c42822bb4b1de4641658"
>=20
> Technically, you could use COMMON_LIC_DIR instead of providing a=20
> COPYING
> file.

I didn't know about that, but doesn't it defeat the point of having a
checksum to detect licensing changes?

Regards,

Hubert
