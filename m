Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1385.1793950713750154462
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Nov 2026 23:38:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20260707 header.b=XhouW/zm;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: toertel@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6a642495d81so461344a12.2
        for <poky@lists.yoctoproject.org>; Thu, 05 Nov 2026 23:38:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793950712; cv=none;
        d=google.com; s=arc-20260327;
        b=gzI8Czsj9ZgL2n9kpB3uoH5GpWukUBjsoj/74eWJl3zVVe7Jl5n8qC6Hpvk4zxCBX5
         ZIzzPE0FlIWxebGZurYCQJOpVRd7tA61B45E+jx+n23j9SaNmVlSajkbGUhfq/eoBwQ+
         65IodZ73zX4EAXJvgVE7h4LNkMFpkEL8wx8BTncskakmNDouj2OC0PVVpnGYF5oqNyzJ
         XUHFmvQXkH5yagPSsiY2uQr9btvmC8RWVW8wQhRL3cq5myPB3cx0bevuuECUMg3NQ4lI
         z7RDFX5/+d9drPh/hp7+ltfMZQfkvIbLUfR8OHm3OO6dRsoHVsAJj6Mxsg8KGs1TyIpe
         TzXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z72b9zAsboBT1kG1Js6/JU4tQrhxekkUo1FfKelr5Ds=;
        fh=6XCjZUQNH7edNf5lNQ9kdV/75d1lOLk7WiQjhIVKLys=;
        b=OMyHWqtC4xRVWO6++qhSdpPiLSQAmnteR9s2aAFdPpSie6Zbk5VeHM2pStU0E4GxQt
         vc0rivIsUl6XZ1cf8RuuNptocbNT0m2OYSvoUpP3BiQ1yzDm3kx59NStaztmDNCMHWzD
         cUzE0BfctTbJHnjXrKtPL1huiyhQub4G8H0FyAWKd0zlS/UGX95wUNSItbP89dNOmxEQ
         iO+7MHCDkWFtRHIPU+ffkxY6d61JS1PeYxr+d8Ys/jZD+n/aEAqTRPWTnMkcD2f6ouAE
         mPlp1oWAF7deqt3l8nlMw0VC9mHazovOWstZ7I10oAcGN+Ayi0baB5zcLpckkRZH8m0k
         50zg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793950712; x=1794555512; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z72b9zAsboBT1kG1Js6/JU4tQrhxekkUo1FfKelr5Ds=;
        b=XhouW/zm/nBF0HRrH80xux0ukzqZlkppW8el/j5qt3RztBvC0Yhcvvu5u4LOl/A5XU
         b5P7mMSpLy3vzf6B4kP3WzYKhjqI4i49vwEPyFAutci+qtLDe2EDv0ldwXtgrtOVxtGI
         T1j30Es6FpPKgt4Y2b4HpKf/ggcUOcPe6Rq6g8VyOzaDffcVDfVSq7+jwcjULch53IuO
         30EDiiwxorBASeSBwQlVncjznKclw9/vcbYHWhvfSNmVjfiYjqbEHqBjv7oz/hVfVJQ/
         CggQyyML5RnAR4uzeU8M2maMMphmPXkb7Qw0LkFDrxKMSbGh9n8H3niL4rVcB/zmbRgP
         UoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793950712; x=1794555512;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Z72b9zAsboBT1kG1Js6/JU4tQrhxekkUo1FfKelr5Ds=;
        b=Ff2RwHN1DjEB7teXtn4tkgkt55t3YM+tavr3DtT2ScSvMghokPDKPQGkAFTNZidGcm
         bf5e4oMjH8ARz0bTbzWrv9SvqX28pgITf+Ekbhx/loe+WVATirpVkax4dT4eg9Yr4qk5
         9ffXaOGRNPEeEwCd1thfwmDDaKCr0+hsyCRaL/1pShin21gRf4h/Ub0WzI1D/Id8I1Y6
         C5FMC9Koz4+4e2ksXJ9T0EjaGoGktqRHBo0wmR1Azkrm81sSAt7NxwDdA0LramyiZz8d
         NMKTMETeXOG4CKNjDEITcC7541IIkj5V5smFBW0Kf3ZT+j3rcpDsUrjIzPw72emALIJ6
         0tvg==
X-Gm-Message-State: APuU4Z9aLfdzv/mhztOGKOw7573/j26TbTSR4m+5swj7/bS8LvHfkvMd
	h3aii2fpfSnLYmrU1ToclsW6gT9HMLYhsO/VaH5alQzvuxKf8hgVxybvDSTiau5I72T5rJbpwfX
	SSphksSmzSoe9KZvcmMPOaak9vcxAgkg=
X-Gm-Gg: AYBFou06iJ3AbY8VqzWymgfGZNKeIxUGwZ/sivFvJRPURFvqRW58995eIqaCO15GotV
	kNm0WR10GHjqIK7qSvqiVT/HXdjcIOt+6I5Ru6XdlLicgtPBqZp7opw5QeLH/PceFgh7RzULO91
	8A9MnT9cS2aURXGT9vPdM9woddac6vxY/Fmn/V9Dc9QJPZYV2tEHQOX/nQZ28Rc+hHzRBHTe9NS
	gCCdnU/SIbvSQJZ2HlXLjUXZMASjppOc1Xr2tHHP9vQFzP0zYrvMIPlZuYrf3Vcs0imb5c6JA5B
	dIwOcmeXk3e2BVL4hFuBvFxH6t2pYbPbHPrc0On5qmSAH4HMBAvVFC3SP3Ox5Jbf9gMf/sBHwRg
	EQalRw+G9zGmPsx4DL3viEwTLazMNQYfUA2hvJUkaQI3PaJbFUkvY9FKxzKP6rVnUGGQLGEKFcg
	l6nX4b16PRKiqweA==
X-Received: by 2002:a05:6402:234b:b0:6b4:bd6d:2eef with SMTP id
 4fb4d7f45d1cf-6b597475582mr1057205a12.0.1793950711613; Thu, 05 Nov 2026
 23:38:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1793868274.git.yoann.congal@smile.fr> <e6ab1239dabcd88cc783cb803dd4adfda804944a.1793868274.git.yoann.congal@smile.fr>
In-Reply-To: <e6ab1239dabcd88cc783cb803dd4adfda804944a.1793868274.git.yoann.congal@smile.fr>
From: Mark Jonas <toertel@gmail.com>
Date: Fri, 6 Nov 2026 08:38:19 +0100
X-Gm-Features: AclHuK_b0L8rjXLAzqufdolMmN8394xeoeSinnX8Ix7fhuyXhexnDjp7u4tn95M
Message-ID: <CAEE5dN1CZxFv+DXbOd3WQs3fub8Zqh3DXHeJGbSbGecoDUOZDg@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][blacksail 1/5] Fix LICENSE file and licensing
To: yoann.congal@smile.fr
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Fri, 06 Nov 2026 07:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13992

Hi Yoann,

> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> After the split from poky, the paths no longer make sense. Simplify
> things as meta-yocto is all MIT licensed.
>
> Add in the correct license file.
>
> Also clean up a couple of references to an invalid file, we can use
> a license identifier instead.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 61c27a174a1feb2a9f211c0475ed6c8e413392b0)
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  LICENSE                                       | 14 ++---------
>  LICENSE.MIT                                   | 25 +++++++++++++++++++
>  .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
>  .../lib/oeqa/controllers/grubtarget.py        |  2 +-
>  4 files changed, 30 insertions(+), 15 deletions(-)
>  create mode 100644 LICENSE.MIT

I think it would make sense to backport the license fix to Wrynose as
well due to its long lifetime.

Thanks,
Mark
