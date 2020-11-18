Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.223.1605735454250184368
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 13:37:34 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kernel.org header.s=default header.b=ySf3RGhW;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 28C5E20715;
	Wed, 18 Nov 2020 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605735453;
	bh=fKpWa1glEzvo2U2+OV9/avG39RHYzWXYxnmaVW1+dtg=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=ySf3RGhWJArSQllBceeAcvzUo9GETjAz/ItbOjxscgCdSDJk6YjLsQnpTXGI5gGp8
	 P/8duJG4fOC/EmfT6CdhNPG/y58oxej/rMA+WogQtJPVPovrbz9ut7kRcb3AWCCZcz
	 7TJknQfj03xD0GCvmbD+U/+pf8AFFGeMKh0+CYJs=
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
References: <20201117024555.7716-1-okaya@kernel.org>
 <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
 <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org>
 <CAMKF1sqy-Q+mjN=oUZxDhG5DrN-DaOzjgY3VYeXc2DPozPbMNA@mail.gmail.com>
 <3f480e3c-6a75-fb90-f5e5-530e84fb85b3@kernel.org>
 <CA+chaQf+2Dri=bKHN=atz1KWym_TZdojYPqZLgBSQUHgrzN2-A@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <1495aa6e-981c-70f2-5ada-fdca6da99cdc@kernel.org>
Date: Wed, 18 Nov 2020 16:37:31 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <CA+chaQf+2Dri=bKHN=atz1KWym_TZdojYPqZLgBSQUHgrzN2-A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/18/2020 11:50 AM, Martin Jansa wrote:
> The detection should work fine as long as you select the right DEFAULTT=
UNE
>=20
> thumb is used only when ARM_INSTRUCTION_SET is set to thumb=C2=A0AND th=
umb
> appears in TUNE_FEATURES (which are defined by selected DEFAULTTUNE).
>=20
> I've stopped building for armv4t (om-gta0* MACHINEs dropped in
> https://github.com/shr-distribution/meta-smartphone/commit/647d43223ed6=
ace5d68b1e36d34978da472634e7
> <https://github.com/shr-distribution/meta-smartphone/commit/647d43223ed=
6ace5d68b1e36d34978da472634e7>)
> and armv5te (tune-xscare.inc used by e.g. spitz MACHINE from
> meta-handheld) more than 3 years ago, I don't know how much the support
> for thumb1 degraded since then.

Thanks for sharing. I'm building core-image-minimal at this moment and
am not having any issues. There were some issues in the SDK world that
I need to debug.
