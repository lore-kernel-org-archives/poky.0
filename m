Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11155.1594886957210753683
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 01:09:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=I0N7ns0m;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B75E2E01E8C; Thu, 16 Jul 2020 01:09:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49A84E01E8A
	for <poky@yoctoproject.org>; Thu, 16 Jul 2020 01:09:14 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id q5so6030871wru.6
        for <poky@yoctoproject.org>; Thu, 16 Jul 2020 01:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=s8Hcf5KTkn8sgbsWbFISJ2GFIlgji/Yv4MsjqmOFzVs=;
        b=I0N7ns0mez7wT43CuRa9LwfHqpDHKl8N+74TI6aXhUU0Q/FpsWHc5iDT1ozVnNE4yB
         NGbar011Kp7edZ1xJrBzsWyPcppqr7Fw1356Do2tzHkoV/KruLR/vATHIkBjD4TyEoSc
         za7mxMSvZKgqG/HX9VoYVyjFCCpwRerboZK/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=s8Hcf5KTkn8sgbsWbFISJ2GFIlgji/Yv4MsjqmOFzVs=;
        b=QXoBA17nC40lYopFEdlEGFmCk2IcSPxH20VLypZnbwys/FM+Cfqnu71f+DaVltF2Tr
         8cobU1d7F0d+pgxMhAZHqkG84rDkWdYXC7Bysja/T00n0wltePpmyYraK4h6dHkhjlAJ
         tc+Ib6GemyV5/tJgd6N+Lt/CnOPz5FUJZ7cCmnvzyaBjIGikCsuOHmoA7gYD2vIcxctM
         TCSrApSVAJjBLBYNRX6Ehyzx1es5nQ8z1b9QWEbiiTkJuP58bHcoFFrIpKxlqoUOAHPA
         DCCKQyk6XGFnWE4hQqqZ8uXJMbNPMkj7LrqoDlGYy8L0UlS6RH8XlRcKqNGaXz5EsbLW
         JnyQ==
X-Gm-Message-State: AOAM531PJxDar49waKrLZ0fuI10hZPCqE8TKlRytxsb5eFQqi+v685Sx
	hpSBH1hjztYF+O6VJKaGeB/eVw==
X-Google-Smtp-Source: ABdhPJz9UwduV0stknkNDAwg4yu9SSKRCe4p7VBq1lN/NIDnE/P6w6uRGNAhdsEz/WyOXrfWPF2oZA==
X-Received: by 2002:adf:8521:: with SMTP id 30mr3701527wrh.238.1594886953832;
        Thu, 16 Jul 2020 01:09:13 -0700 (PDT)
Received: from f.c.4.9.c.e.0.f.2.5.c.9.7.3.d.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (f.c.4.9.c.e.0.f.2.5.c.9.7.3.d.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1d37:9c52:f0ec:94cf])
        by smtp.gmail.com with ESMTPSA id l67sm8246693wml.13.2020.07.16.01.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 01:09:13 -0700 (PDT)
Message-ID: <0c992b288b0940732659c3726ca22aaf8d905baf.camel@linuxfoundation.org>
Subject: Re: [poky] do_image_wic failed with exit code '1', Codepage 850
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Roelof Berg <rberg@berg-solutions.de>, poky@yoctoproject.org
Date: Thu, 16 Jul 2020 09:09:11 +0100
In-Reply-To: <82D0D9E4-D18E-4AB5-BC6F-3EEBB391DD69@berg-solutions.de>
References: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
	 <14e9e6f37e9bc9478772f3d67ebb50642eb83625.camel@linuxfoundation.org>
	 <82D0D9E4-D18E-4AB5-BC6F-3EEBB391DD69@berg-solutions.de>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-07-16 at 09:32 +0200, Roelof Berg wrote:
> Thanks so much.
>=20
> DISTRO_VERSION =3D "2.7.4"
> DISTRO_CODENAME =3D =E2=80=9Ewarrior
>=20
> The same image runs on: Ubuntu 18.1
> Does not run on: opensuse/leap:15.1
>=20
> Docker images, the Ubuntu is compatible, the SUSE not yet.=20

Does docker have /usr/lib/gconv/IBM850.so (or similar)? It think on
suse its from glibc-locale-base or glibc-locale so I'd check that is
installed and the codepage file is present (it comes from glibc).

I can't tell if you're using uninative or not, I think that codepage
should be in the version in 2.7.4 though if you were.

Cheers,

Richard





