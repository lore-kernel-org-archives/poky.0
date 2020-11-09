Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.4394.1604880076298999004
 for <poky@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 16:01:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kernel.org header.s=default header.b=BhAz/cVz;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.237] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 61FE6206E3
	for <poky@lists.yoctoproject.org>; Mon,  9 Nov 2020 00:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604880075;
	bh=oFuHJpDFO8cv58ShbneOQjSUwAJvVIZY96L0bnq4i5c=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=BhAz/cVzl7DmygjVdCSOvKbH81FqP9YC0L0/8fJjLAhSCOUTuPnIpJXmy9CxmwOMk
	 3mEMGDFlw70gmUsurcJd5HPNl6scxH6lI7zm/qwPZTCMcKH1m4G6QSQRx6+DubcURA
	 twUB22aHE+26L8zEgg3CSApN6oVCRpAz6g4PlR5I=
Subject: Re: [poky] [PATCH] poky-tiny: use size optimization, section removal and lto
To: poky@lists.yoctoproject.org
References: <20201106170336.5216-1-okaya@kernel.org>
 <559e9e34-6e21-a66e-ce69-a72cc2f64935@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <c9590d13-7be3-ea6b-1766-f322f0e35982@kernel.org>
Date: Sun, 8 Nov 2020 19:01:13 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <559e9e34-6e21-a66e-ce69-a72cc2f64935@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/6/2020 1:13 PM, Khem Raj wrote:
>>
>> diff --git a/meta-poky/conf/distro/poky-tiny.conf
>> b/meta-poky/conf/distro/poky-tiny.conf
>> index c6d4b88f83d..eb463403fd1 100644
>> --- a/meta-poky/conf/distro/poky-tiny.conf
>> +++ b/meta-poky/conf/distro/poky-tiny.conf
>> @@ -122,3 +122,35 @@ PNBLACKLIST[core-image-weston] =3D "not buildable
>> with poky-tiny"
>> =C2=A0 =C2=A0 # Disable python usage in opkg-utils since it won't buil=
d with
>> tiny config
>> =C2=A0 PACKAGECONFIG_remove_pn-opkg-utils =3D "python"
>> +
>> +# set default for all targets
>> +CFLAGS_append_class-target +=3D "-ffunction-sections -fdata-sections"
>> +LDFLAGS_append_class-target +=3D "-Wl,--gc-sections -flto"
>=20
> This should perhaps be added to FULL_OPTIMIZATION, although for lto I
> was thinking that we should have a seprate include file like lto.inc
> and call out the exceptions there. So it can be used in non poky-tiny
> builds too. something like
>=20
> https://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dyoe/=
mut&id=3Db96dea04d451312e9e14d839215e3fef784c2c5d
>=20

I see that you are taking care of LTO already. There is also another
patch for -Os.

Would you be willing to follow up for "-ffunction-sections
-fdata-sections" too?

I just wanted to upstream what we are using internally.
