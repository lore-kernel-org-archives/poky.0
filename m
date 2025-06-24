Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD04C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 13:55:59 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.8741.1750773354323558324
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 06:55:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EmqEz4U4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a50fc819f2so432476f8f.2
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 06:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750773353; x=1751378153; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mVRpBhtDVqcPsku7ZrywDbD9/efYXyJVnnalmfxLV54=;
        b=EmqEz4U4vZZeImDIJyPcRH3UwrLgmPVAyPU9heVR9O/4GTs1DjBayt+bdKdi9+nHgi
         /sLJtCjmEH2zb9hvB5sbzJVxyjOOQFYCeQcjL+lU3nw0RtZQ5I1vHkPXCfBudG6VTuyj
         DAX2bohEzLPuD2NgitOFNqoleskbaEQJJnIew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750773353; x=1751378153;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mVRpBhtDVqcPsku7ZrywDbD9/efYXyJVnnalmfxLV54=;
        b=dQlGTu8GJSSvv/nqxq8h3IZEIEwPmRm8s/XAnTcUOMU0KdX3n7fMKCb2swvf00qbZ3
         BIymAZ05jRwS0mueUmWzQNRTp6Jo+VfzFrvNAkqy9714t/47gSx7tkUjPawIa/x/Z+RC
         z97Zj+2wAduWKqGevOmDHDgCjScqcBVttkFkFHNZDS/TEokts8ZnDRd3DE3mR0crDpLj
         njvbHxUgSURtBDUQj0NnnqWReGCiuafQBNsvLLCJSbdljucFW9tzydTY1wUVz9QOcLX5
         FtAE+NjKTXVePmsbahL68hMaB0DnnNFIw3D7i0LRKhMw58NJOM8OwVixyhmXOUhPoBr3
         ZbtA==
X-Forwarded-Encrypted: i=1; AJvYcCXMJjRmlwsEuaNH+K1RJ75vcXnrUL/zC+edDmYL05V2Yjw7QfDYWi1+UPsmMNLeclukwVUF@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyDtpdSL1ZLBAVxul2GFC96ALxOxkbAVqZBvof8OaTBsz0woOqk
	SviyAso95WodrK/V3k2fhkekQQgqIFpljqh3Hz795G0loQyV9l0S+pFwNmcFc8JVZJw=
X-Gm-Gg: ASbGncuuF9haoDk6dE3RqGL8gnZcWdx5WlNeJiY9xum36Qu3GLow/f8KSzcsdweqMqI
	QXQyFoO8DPIPTRRnAN+falaKAyAKwBk3dI1og3lqVyU+bl2l+Z79srNbwbkuK6fnIPHuqYfCQum
	WqlS+7J2U6S9D/irc7B//Z6uW5v521rI3xMRlWGz7vWiLX8h04KQIafg6YPkhzc9EPGEN6jHX3F
	jyUf4rl8rsl4Kd75D7YNZZdFIN5k+Tx07PJ5N5KHkoxB+NAehrsRcwfiNdF5L30tr0Y89f6tubH
	YpchNjEx2XWcASvjPMDEx0bX8dkyd6tyOASZPKrwoEnFO+Q/+j/Nipn7uU0fmja8olUPX1yuKqC
	jcT7Bm4YbGM9JbJIjauyNFN9EPL3pzHzfo0mGz8YBpUynHvnyNss=
X-Google-Smtp-Source: AGHT+IHR+pfvu8V74Xv1igMabm+pLIXTd841huHfPa+khxeMUbUZBxE3W+em1uu+trWj72PVAV54dg==
X-Received: by 2002:a05:6000:1447:b0:3a4:f430:2547 with SMTP id ffacd0b85a97d-3a6d12bb41cmr12812346f8f.6.1750773352706;
        Tue, 24 Jun 2025 06:55:52 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc? ([2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45380705351sm4017185e9.0.2025.06.24.06.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 06:55:52 -0700 (PDT)
Message-ID: <abe975974fbba263d27ba2a0629a1bcbcc93a090.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meta-yocto: remove erroneous poky-bleeding
 selftest in meta/
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Tue, 24 Jun 2025 14:55:51 +0100
In-Reply-To: <20250624135017.539280-1-alex@linutronix.de>
References: <20250624135017.539280-1-alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 13:55:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13669

On Tue, 2025-06-24 at 15:50 +0200, Alexander Kanavin via lists.yoctoproject=
.org wrote:
> This was added to meta-yocto repository by mistake,
> and should be in oe-core (which is done in a separate patch).
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
> =C2=A0meta/lib/oeqa/selftest/cases/pokybleeding.py | 32 -----------------=
---
> =C2=A01 file changed, 32 deletions(-)
> =C2=A0delete mode 100644 meta/lib/oeqa/selftest/cases/pokybleeding.py
>=20
> diff --git a/meta/lib/oeqa/selftest/cases/pokybleeding.py b/meta/lib/oeqa=
/selftest/cases/pokybleeding.py
> deleted file mode 100644
> index d0940d6..0000000
> --- a/meta/lib/oeqa/selftest/cases/pokybleeding.py
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -#
> -# Copyright OpenEmbedded Contributors
> -#
> -# SPDX-License-Identifier: MIT
> -#
> -
> -from oeqa.utils.commands import bitbake, get_bb_var
> -from oeqa.selftest.case import OESelftestTestCase
> -
> -class PokyBleeding(OESelftestTestCase):
> -
> -=C2=A0=C2=A0=C2=A0 def test_poky_bleeding_autorev(self):
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Test that poky-bleeding.bbcla=
ss sets SRCREV to "AUTOINC" for recipe
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with a single scm in SRC_URI =
and for recipe with two scm's in SRC_URI.
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertNotEqual( get_bb_v=
ar('SRCREV', 'pseudo'), "AUTOINC")
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertNotEqual( get_bb_v=
ar('SRCREV', 'hello-rs'), "AUTOINC")
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertNotEqual( get_bb_v=
ar('SRCREV_hello-lib', 'hello-rs'), "AUTOINC")
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 features =3D '''
> -INHERIT +=3D "poky-bleeding"
> -POKY_AUTOREV_RECIPES =3D "hello-rs pseudo"
> -'''
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.write_config(features)
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertEqual( get_bb_var(=
'SRCREV', 'pseudo'), "AUTOINC")
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertEqual( get_bb_var(=
'SRCREV', 'hello-rs'), "AUTOINC")
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.assertEqual( get_bb_var(=
'SRCREV_hello-lib', 'hello-rs'), "AUTOINC")
>=20

Since this can't work without poky, I'd argue it is in the right place?

Cheers,

Richard

