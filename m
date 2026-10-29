Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11871.1793280270555879812
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2026 06:24:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N+ODUIge;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-48b060ec084so1257726f8f.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 06:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1793280269; x=1793885069; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Or91xJYBfe/X6hs/hFfamZUPNCogzr338Ad0PYt9wmk=;
        b=N+ODUIgeSsWeueipP8DlwxKoPsd73jH4QJX0izWEILviiPbbB5uoQJ10FMjvyqlhpE
         nOutBxrQkHol8MEwDL9wHMddpcIeq2nXUVmHIy4D7M5r4JHlzyLA3tYCaHqJ8j8BeGua
         hESjROjyptlBahcBOsKdmDbfrYIVTDrgw0IBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793280269; x=1793885069;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Or91xJYBfe/X6hs/hFfamZUPNCogzr338Ad0PYt9wmk=;
        b=y2xTTVsCQJLHN4Mtd2rXbex+2Ue+f2HDSiKaMG//+DxIbijguvccL2Rk0+n7Drlxim
         NPyslPRNsFSkNxHpAtWkB5tgeNkuqfd/5NXvupzisXyktbDCnMiqb1doUDXAySEqTuGN
         t6ICFexEvmnzcUxWY6orGA6urVCGfnP0R2ZrACz+Asyq2VVeRdccvdUxWvTEIhOlOF3s
         Kdsyj8M3cyx4VbRHa+SGoTqf3hVxm9Mjy3zjtdRdpChHhSc2nND6BgSFRBIUkBVwXti8
         1tHLP2T7unh0gf5Gi6hueBzSjzKB5avv0BEPEg5bxdgtQ5M5WiWgHnF2uc6VZby1dict
         7BNw==
X-Forwarded-Encrypted: i=1; AKwUvBzjVXDOFOPPfhDAZOfSZvBFMBJCp3ki/fvT8u2RogGLRyo6I7dFxiwdMOXmMIsenSgGr77R@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYJccVGOWvgTlnSWBB9uTxF8/hh4BVVhRM1tUFDFt4VCVMSTPJ5t
	EvChtJpJ54QF1FlBIQ0fdP91xZP7HnUV/ZKg0sYap5FPn0eFD3f3q0WHxjCEgno1IXs=
X-Gm-Gg: AYBFou1fDVP438vshLnDaIpVuzBAOY2fzOHwRX3ZBwDn+L+wokHVVpIS0yj+VmdvX38
	2FYMIewKnaJ7zw+5FQlXYzu25EjoWSX/fZGUOce0Ms1b1gy9450A+jH4I1s2Dww9K+vyQjfIi6x
	xz/oL50VRxXrCTQgCxal0rV9j9+46/RReJ6c7WeeGwUm1urdUEeGNfxLxVNd7QaSwdNyVvTQd9Q
	iA9d8b1dGoG+ZQrp8g0gnOL02liETLJ7gg9ydZOtuQBxdTHJoyBKG2yCl5Uf6lVspdgUGJBiJf3
	IO2Eb5m1f+XcMXFpE4DdljLBZc4EUNCqvY1K7Njy1JPYlaYvGsUhhJrDOSiGZTjOtkolJHjl0/d
	12E3DTzxRjrB0+YLSsEeBO/ejh9ncJN1sHTH/xukdEUaYzlboQ6hXPuEI8fCNyOCUmGEOIp+0Mf
	thZl48pS5uCyyYSUrM5bSp6VdZgHV+yT+3cyUsmlel+Zov2UFMO1TTdGWUaxBOHEPnPofwPDIAz
	Nl5FYZVfp29CfIn5q41bGorHagW/EGilCZZAyJGanxaowzmVK0X1xzQs3G91orhBf75it9+XEup
	vEFQJsEmLwRwPYlfCCQ9lxiqtV/CSkNs1ft2a8Z7UWyrRHQbL65gR9EA9WBO1++wp0QYIHrCthP
	nMyotAJDyoVDQZYK+8wPQRG/8vDHxtb7IrR9evqI=
X-Received: by 2002:a5d:6f01:0:b0:48e:5b50:9c52 with SMTP id ffacd0b85a97d-48e5d5b84eamr12809590f8f.57.1793280268645;
        Thu, 29 Oct 2026 06:24:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2e6f:2d83:d26c:f3ed? ([2001:8b0:aba:5f3c:2e6f:2d83:d26c:f3ed])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecdf9bdsm32935323f8f.55.2026.10.29.06.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 06:24:28 -0700 (PDT)
Message-ID: <8e581587d024a2a6af308986f1bd1eebffeb7a68.camel@linuxfoundation.org>
Subject: Re: [poky] [meta-yocto] LICENSE file does not reflect repository
 contents
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: toertel@gmail.com, poky@lists.yoctoproject.org
Cc: Ricardo Ungerer <ungerer.ricardo@gmail.com>
Date: Thu, 29 Oct 2026 13:24:27 +0000
In-Reply-To: <CAEE5dN3xQa1VqFfCHASNVTpQhfyWeLi+wN8WNYuwPsxr+6abZw@mail.gmail.com>
References: <CAEE5dN3xQa1VqFfCHASNVTpQhfyWeLi+wN8WNYuwPsxr+6abZw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10build1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 13:24:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13980

Hi,

On Thu, 2026-10-29 at 12:01 +0100, Mark Jonas via lists.yoctoproject.org wr=
ote:
> When reading the LICENSE file in meta-yocto I notice that it
> references the following directories:
>=20
> bitbake/COPYING (GPLv2)
> meta/COPYING.MIT (MIT)
> meta-extras/COPYING.MIT (MIT)
>=20
> Yet, I do not see these directories in the repository. Is it possible
> that the LICENSE file is out of date?
>=20
> The same is true for meta-yocto-contrib.

Well spotted, this was leftover from the original combo-layer poky
repository. I've merged a commit which makes it clear everything is
MIT.

Thanks for raising it.

Cheers,

Richard
