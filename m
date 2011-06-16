Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F19654C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 07:52:53 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yic24 with SMTP id 24so1175111yic.35
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 05:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Ou/sCN2u+D6m7gU57OPxLz0541SDCVnb1IRwQ7Q4SEk=;
	b=EgQjukwPoxe5uze4A/0KD98OVXoiJId4bUg9lhdytoDUNkAQsnLV/hGFReT5x+NkiJ
	jECmgnxbDVXrRIy8dIWfgFr1CC5zG6YULFpLb2dI8QAUdV0Nv2S5JQ51JyalW23FI1Uk
	4wLFWYo4c2fU0ZSo3Qn/6yybMGJ+HDhsH8dBc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=uEZ9qqH1O2yfpNnqSfvnb4Ha6YoTplHQ70tZc5g+WcakyiNZMQgK0ULZcgkeeCZ39f
	LnXlwHJYwjab7n20cLj3A2BfgesfHFEzHU2Ff+CNQSp68Jb+PucJt0DGjAadlp2xBh2m
	j4G7olh3I01GxOW1N3YKXspx0HbXNVRzaIP9g=
MIME-Version: 1.0
Received: by 10.91.164.22 with SMTP id r22mr1107500ago.30.1308228773207; Thu,
	16 Jun 2011 05:52:53 -0700 (PDT)
Received: by 10.90.80.13 with HTTP; Thu, 16 Jun 2011 05:52:52 -0700 (PDT)
In-Reply-To: <DD75A5DE-D7A8-435E-A20B-1F676F80DCA8@dominion.thruhere.net>
References: <1308216069-25022-1-git-send-email-dongxiao.xu@intel.com>
	<DD75A5DE-D7A8-435E-A20B-1F676F80DCA8@dominion.thruhere.net>
Date: Thu, 16 Jun 2011 08:52:52 -0400
Message-ID: <BANLkTik-Dd6QeN4kdtjenxbg40=7T2C_7A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm and cdc-wdm modules
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
X-List-Received-Date: Thu, 16 Jun 2011 12:52:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 16, 2011 at 5:48 AM, Koen Kooi <koen@dominion.thruhere.net> wro=
te:
>
> Op 16 jun 2011, om 11:21 heeft Dongxiao Xu het volgende geschreven:
>
>> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
>
> Is USB broken in that kernel that it doesn't load the correct driver when=
 plugging in the dongle?

Should be working fine, or at least it works fine for the targets that I
have near me.

Dongxiao: are you seeing anything in the kernel logs when the devices
are plugged in ? As part of the commit message, it would be useful to
list the reasons why a change is being made, it'll allow us to suggest
alternatives, or debug .. or do nothing.

Cheers,

Bruce

>
>>
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>> .../linux/linux-yocto_2.6.37.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A03 +++
>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbap=
pend b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>> index b767109..5f8b8ca 100644
>> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>> +++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>> @@ -4,3 +4,6 @@ KMACHINE_fishriver =A0=3D "yocto/standard/fishriver"
>>
>> SRCREV_machine_pn-linux-yocto_fishriver ?=3D "697d84759be192403a8a87ab26=
9196c67a0c2c88"
>> SRCREV_meta_pn-linux-yocto_fishriver ?=3D "f1dc3722d45cdcc92c84ebfecf4ce=
616d2efed26"
>> +
>> +module_autoload_cdc-acm =3D "cdc-acm"
>> +module_autoload_cdc-wdm =3D "cdc-wdm"
>> --
>> 1.7.0.4
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

