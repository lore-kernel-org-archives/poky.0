Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.10341.1661345243307042161
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 05:47:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Sok1UMsk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id j26so8733185wms.0
        for <poky@lists.yoctoproject.org>; Wed, 24 Aug 2022 05:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc;
        bh=MsNJzAtTxf3CGnXNqAdQhUhjmC2CtfW+BY8SXlKSyuw=;
        b=Sok1UMskBUOC8JsXjwqNch2wg/nfAdPphGHPs2Cd8V0W5ETXQUfpWagcP0HFHR8CIR
         bars22dYlhKBxcPEum+p6trqUIa6ORSQujX460kBRgzJLjMO9XqtG2SjdRq9Ifxr5pgS
         zK1leu7AO2DKrNi0AhSCnVAumJqUq4Gewoq3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc;
        bh=MsNJzAtTxf3CGnXNqAdQhUhjmC2CtfW+BY8SXlKSyuw=;
        b=qwpSxoGIg4s3s4NTDY5kBw6yoywAcLWXYomRDmFa3hzqzuMuzDeASnTkH8MVuFyniy
         zy0dKN+hh/mcR4DUcb8H3wHa1RzhwvYRBjGkZpi4JkyiyKShm4Mi3EA7eiL9oyHx1mtf
         tW+YyT9fxE9v6iAaDOtvS39neNXMYfJdMl47nDL6HfbyEyjTMk/DiNlxD1y0u1InGCWo
         yphVBt5unuyJ2pW19aFYJuGYZu/irsXCOv6O9k5C+Jr0iaw+1bzCSMS0cBYCvRNTCpLx
         yoYOwFZkCoE3dJ6M7aQg07OyLXI/L85qN0e4+ow2g/A6h/RbVKfauK3n4Gec9lUJCX2h
         90hg==
X-Gm-Message-State: ACgBeo1IhIVFaHF6VCtyfnA6W2j5ldXsEk/3gwA635XeMJhjTfaxPRku
	XdP2eIVLVwfRCh2+Nff3WjK2Yw==
X-Google-Smtp-Source: AA6agR4TpooNxWA2LuKrvsOl/8H7Sd3vDWutHIS0lyT0bHJQ2DFLSsacsK9xxttasXCVOPsebArgjQ==
X-Received: by 2002:a7b:ce05:0:b0:3a5:c069:25b3 with SMTP id m5-20020a7bce05000000b003a5c06925b3mr5211373wmc.87.1661345241557;
        Wed, 24 Aug 2022 05:47:21 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33? ([2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33])
        by smtp.gmail.com with ESMTPSA id p13-20020a05600c358d00b003a607e395ebsm2859617wmq.9.2022.08.24.05.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 05:47:21 -0700 (PDT)
Message-ID: <f6f7427e0296aceb01ec8c4722b23e2df17a0db5.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] conf: remove a copy of default configuration template
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Wed, 24 Aug 2022 13:47:20 +0100
In-Reply-To: <20220824124256.3549307-1-alex@linutronix.de>
References: <20220824124256.3549307-1-alex@linutronix.de>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2022-08-24 at 14:42 +0200, Alexander Kanavin wrote:
> I'm not sure what was the original reason to move the template
> from meta into meta-poky, but as the template is now expected to be
> in conf/templates/default, let's clean this up at the same time.
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>

It defaults to DISTRO =3D "poky" which you can't do in OE-Core. The two
are subtly different.

Cheers,

Richard
