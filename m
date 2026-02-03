Return-Path: <yann.cardaillac@balena.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45AABE83077
	for <webhook@archiver.kernel.org>; Tue,  3 Feb 2026 10:04:44 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.13162.1770113070952528778
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 02:04:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=Lrgeqg2A;
 spf=pass (domain: balena.io, ip: 209.85.218.48, mailfrom: yann.cardaillac@balena.io)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b8838339fc6so120599666b.0
        for <poky@lists.yoctoproject.org>; Tue, 03 Feb 2026 02:04:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770113069; cv=none;
        d=google.com; s=arc-20240605;
        b=hUzS2l3Ip5TOldn5mo/OFO1FTQea7XpGeeiDIRurMvCE63TD9krUCUChuVz9FJl1eo
         x5eY9atNpg4Aen4LI2KDkoIYW+3mf7Eq8Wvy1LiwWDwlQfn9ITY/5LDLGxFAeQsvCHCX
         IT7MDc6Qr+QksKYw9hggyVrclUvdbJ0xrPB1IL0BYa8sW6oH4/wXEWn1JF8G9xre81uB
         qYvJBdA9Gsu7OyjEHfBBNlRcq62auOm3m7k+nGnScKiv+y5/xh60ONpoXRhEPX+XnnG3
         PF9mV8fljS7YBjWFzvYzIjhC/Dqp+84FNYZGd59iqXOQ6EslefH1P0jKaIEk8pIxhC+K
         rHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Xv2qfaf1i0FKvNqlA5gX/Tlffv5Zc/eN8HECMiUCymE=;
        fh=4u+x8L6Y1WnB6MeOCPUHcJEh8YWl+pjx38PJu8QmVyk=;
        b=C9fPHPTHDIDC3sQ/0WLdQMYG5Q4bZkJ0UmnJh36bPGeYjl3wMo6NxV2UESiKwbiSx6
         w9PXI+DPcMccn3rF+TMFugorSTOC2ylTBlZDoGXhFcMcCo+rCCk/jY/jgv1d0RuDqjn6
         +jGHQSDWpqrYszhbUEkWYmpgBPKZJlAcoBZl5N6eClQ1112oILz+g+0jgjZYxZXfxZta
         Gw2rFMkSg3i2FcxoWT7mA9vMqdTplA9/SKJviWI4kxr8sQtyp0tKMua39XcC/pBqbfzv
         hOGvmzr4ykedACFWQPbLF2fXHxNE2u20Z3lEP8AU+HTep5YxDvmittmKJ5Fl/TQkaY3l
         OBQA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1770113069; x=1770717869; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xv2qfaf1i0FKvNqlA5gX/Tlffv5Zc/eN8HECMiUCymE=;
        b=Lrgeqg2AkUwBqrhT+rz00W9TG6kozHS8itTYNx8WwIAPCpb7ImBBrYimJwJsXM2XWD
         PtlnfX8GIsNBsJOsf3MMBCzY6FZvC3AYoHvkCpdJu/lV2MlSdtUdYe/QjzV9FUg0wkRR
         L2tH/cZgHWmDCp1doPZc61hlqw4+Wdpn1CBsTx8U1UjQQ0iotsWGD9vimN5XlKg8lamb
         rDzzrv/Ug+8W2XSxiC9NSTUYaDiAGlzjLPYuLVWNKzKG/ydgXWJQpE/iXszjmibY5HDT
         +DyxsM+hV4yt6lcoglOE2vezmRz2XlCgdeNAScdvozA7AYUq7Ydfco3VBo7snz5N97hv
         5q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770113069; x=1770717869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xv2qfaf1i0FKvNqlA5gX/Tlffv5Zc/eN8HECMiUCymE=;
        b=Cle8YZYRmMyhhuW5AtDkhT9fFsMFYM7n0hm5H0p2341ZjY6zaMm7wfEDpZQOpCC5jn
         Iw9eV9zXV/HbiWfmwx5flMOY08QziPitV29a2ehPdAekJ+9czh0GfIhh8RM+HReMJfkd
         TU8NzjQjfMDzXoQsRmt+mF2QVs4nudLTGqVvV/bXPc6Upm5dJarJPpcLQX3bH0XwNecA
         aRNWxHpkU7Fz+riQP5UAnPxOE0xEUKN9Guekal5mgKebLJLM1ljYhUGS4Qi5YUyBVuoj
         qxo3i8GpDuEh5NtKFyBHK/CwUwrbqnWtPlELbmM1Z9eTB5umw3jqTRPSlZe9Kere+uyb
         4eXw==
X-Gm-Message-State: AOJu0Yw6FCkfAcNgFbpC6XEO4glGnY3LaeLyyaefUlVIM9hZt/jee2ce
	/NFc/XtYGRzuI+xvBdeHRrYwi2T1X8Ka7cjB19njGVix4ZX6vC+yGH0A+PmYPkH9ZPYKsLJSM8u
	Uxr0M8MC14VQxyg56s8I1NOEmbKJ8bXAzuwSva2dRHQ==
X-Gm-Gg: AZuq6aJ4patwrc/sFytWVM7G7LDPy9KkZANEvW/nyki1wWmQm98rDRXz3Gvm1QNOsAz
	pCcTsLelWXB17wPS5D/0+uKi2sKr8ayihfffVagcF8OVP1bLDpFBYfxPuQYiYXOf0q1dJShoXG5
	assHTYpT1r9U0cbEvUIJeWjZJuxYVid6pDnuV3Kii27N/exkX5YnWO9w6aMN6X93A/NxfF7sylz
	QjAd8Bhxr3qvYQ3RJrikwpOffavXWL7MHgufC5wKeYc9UCcPaT1qN4V599m17VD4wP/Mw==
X-Received: by 2002:a17:906:2092:b0:b88:5894:6ba1 with SMTP id
 a640c23a62f3a-b8e8384b261mr126885666b.28.1770113069273; Tue, 03 Feb 2026
 02:04:29 -0800 (PST)
MIME-Version: 1.0
References: <20260129160033.849551-1-yann.cardaillac@balena.io>
 <22ebb247-6752-42ef-b6fe-5f6abc211ae4@cherry.de> <CACuRGzCoMXxDmuy=RPu5C13aChZeWzuFXzuBSt3J1n26q4HLVw@mail.gmail.com>
In-Reply-To: <CACuRGzCoMXxDmuy=RPu5C13aChZeWzuFXzuBSt3J1n26q4HLVw@mail.gmail.com>
From: Yann Cardaillac <yann.cardaillac@balena.io>
Date: Tue, 3 Feb 2026 11:04:18 +0100
X-Gm-Features: AZwV_QhyptWv6Ue2XWgxh2jiuF4mNGIswnp3dQLJ954dOflle1peBICVO01awnE
Message-ID: <CACuRGzDH_h5j9+eE0b2=gC=M0Xh0b7P8mYvLZQd0nHk+eBD3ZA@mail.gmail.com>
Subject: Re: [poky] [PATCH] Clearing empty linux firmware packages
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b4e4c90649e890fd"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Feb 2026 10:04:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13834

--000000000000b4e4c90649e890fd
Content-Type: text/plain; charset="UTF-8"

I just saw that you mentioned 2 commits fixing the 12xx and 1251 issue.

So do you guys want the package removal commit then? Keep me posted if so.

Thanks,

Yann

--000000000000b4e4c90649e890fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I just saw that you mentioned 2 commits fixing the 12=
xx and 1251 issue.</div><div><br></div><div>So do you guys want the package=
 removal commit then? Keep me posted if so.</div><div><br></div><div>Thanks=
,</div><div><br></div><div>Yann</div></div>

--000000000000b4e4c90649e890fd--

