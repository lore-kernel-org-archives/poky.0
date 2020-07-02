Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.41])
 by mx.groups.io with SMTP id smtpd.web10.2537.1593680577114528618
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 02:02:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=MbAlJSwq;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.41, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTP id 22C76404C4;
	Thu,  2 Jul 2020 11:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	message-id:references:in-reply-to:subject:subject:from:from:date
	:date:content-transfer-encoding:content-type:content-type
	:mime-version:received:received:received; s=dkim20160331; t=
	1593680573; x=1595494974; bh=5XTfo6vaRyLYF55B4p+43JHawYHl8RRncXz
	RpBNxnDI=; b=MbAlJSwqN1e9BiVsxVOihamfiKAhXX8n4YdAnTHR8x8qE5sreCo
	IBevd5rwgcN9mGvEGBYHIbSNS/G6bO0gSxmJJ7riNO3nz+aP/FaeiHP8Uw3804Pz
	J0pvvJxN5STZAeHlQ0sxji8OSeQF1gsw7UpJmltAXlgMxqTMd9oyYfXiVRNDkWsX
	lwFCmrcLYMUrjXHFqXdHl/u6PMS4xQN82F+gp9MORhUVlhlnQwdA45Ssn9LQeuw9
	ODaS8+0DZkH2NIf8Lho2xobB22cLVeeha5sZZ8MrqsvWIOi0Y/ihGnvpdlWaM4vV
	jM6+9Mlae6ij/lwtxJUevXEL4pHw2n/8h99DLBpx7srUt++9PplDl4TlsJJDeGY0
	DlCdYZPOzx+sg8bfFNTG0gUB0aOPnLtlYh8bQ5w1Hvu14NwDy+vbrV2KFAohFLIq
	/MNzZYfCmR98jJJ07GQUL5WQRiz6SC7+FAowqM4TiA2D6WYiHr45VvtQ4Nnzm8bG
	p7AG3cJXdTvjzKwe9ZcuYt/DCKVcIGMpE5m9Vz6pNxOR0Y+AByikWA5pWYq/cXvs
	EnuoU+muYMDct4Si3ludY8zBabpp8CfuJT9usGL/Mt5NQ8vZHdY0WAAv5EO+x/4E
	q1kd/nYUTRddG+908soJ14jW/DOcsCH4k6qqT0+Bl77IXUc8XNInwmTc=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out003.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXcZMI76uwvK; Thu,  2 Jul 2020 11:02:53 +0200 (CEST)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTPS id 780A8403F5;
	Thu,  2 Jul 2020 11:02:53 +0200 (CEST)
Received: from int-subm001.mykolab.com (unknown [10.9.37.1])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id 1405AA86;
	Thu,  2 Jul 2020 11:02:53 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 02 Jul 2020 11:02:51 +0200
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: Paul Barker <pbarker@konsulko.com>
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Subject: Re: [poky] [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
In-Reply-To: <CAM9ZRVsO6nGXnnM1t6pF9fx2n9RRa1UvPtzH-Jf8uNUVtLLMBQ@mail.gmail.com>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
 <CAM9ZRVsO6nGXnnM1t6pF9fx2n9RRa1UvPtzH-Jf8uNUVtLLMBQ@mail.gmail.com>
Message-ID: <816adf762dfa6c5f0331d23be694dded@kolabnow.com>
X-Sender: hubert.chaumette@kolabnow.com
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Le 01/07/2020 17:03, Paul Barker a =C3=A9crit=C2=A0:
> On Wed, 1 Jul 2020 at 14:55, Hubert CHAUMETTE via
> lists.yoctoproject.org
> <hubert.chaumette=3Dkolabnow.com@lists.yoctoproject.org> wrote:
>>=20
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
>=20
> I recommend we NACK new code using this terminology. Changing
> terminology in existing code is difficult and needs to be done
> carefully. Changing terminology in newly added code should be easy to
> do.
>=20
> This could be called `kernel-moduler-receiver` if I'm understanding
> the code properly.

You are understanding properly. Notifier/receiver is ok, it just
changes the focus from the dependency to the implementation, but I
was not really happy with the naming in the first place.
