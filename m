Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.26895.1605717059140233655
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 08:30:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kernel.org header.s=default header.b=k7eFg/Wj;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4B34024818;
	Wed, 18 Nov 2020 16:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605717058;
	bh=cepw6ZQK6+yVegRULIwuTE4Vdthwf7bPQdzNLGdcbmQ=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=k7eFg/Wjg6U0YJEVIOkyj6wZfHe6JrHWUXHPSFspsymnofof3ebW6+7nHPMyMVBzf
	 oNam0rTuzYMyI0ITnT/3jDTGRJU46j1Ui+3XTwk+2uFNxiOQ2HeFSycWvLNwDob/A/
	 F0ONHTgonoHy63PQpURLhthmsRQ3MON6IfvgnxEY=
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <20201117024555.7716-1-okaya@kernel.org>
 <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
 <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org>
 <CAMKF1sqy-Q+mjN=oUZxDhG5DrN-DaOzjgY3VYeXc2DPozPbMNA@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <3f480e3c-6a75-fb90-f5e5-530e84fb85b3@kernel.org>
Date: Wed, 18 Nov 2020 11:30:56 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqy-Q+mjN=oUZxDhG5DrN-DaOzjgY3VYeXc2DPozPbMNA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/17/2020 5:50 PM, Khem Raj wrote:
>     Why was the same decision not made for armv5 and armv6?
>=20
>=20
> Right lot of older arm implementation may or may not have thumb ISA so
> there was no reliable way of choosing it and secondly it=E2=80=99s a bi=
t less
> tested ISA especially when it came to thumb1 for long Martin ran
> qemuarm/v5 build using thumb ISA and he would find weird corner cases
> and build failures
>=20
> I think this makes sense for poky-tiny but we do not test it as much an=
d
> it might give a bad experience unless we test this combo regularly=C2=A0

I think I need to bring the support detection logic here to find out
if platform in use supports thumb mode.

I'll do some more builds to ensure everything builds correctly with
thumb mode. I think I found one more recipe that doesn't play nice.

Setting it default for tiny profile makes sense so that it also gets
regularly exercised.
