Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C44C31D97
	for <webhook@archiver.kernel.org>; Thu,  4 Jul 2024 11:47:55 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.8398.1720093673102728393
 for <poky@lists.yoctoproject.org>;
 Thu, 04 Jul 2024 04:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NJnC0DzN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.169, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec5fad1984so7038381fa.0
        for <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 04:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720093671; x=1720698471; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nXlV5b+WszVOoPFzgWBmXhJmH0BZMdYioCjDE0rlQ0s=;
        b=NJnC0DzNfynn96iCOQwTFB7fsH0mb1OaCpZLMdeOdd7xDQxHbnDldBfGRLnuachBKl
         NpapnxHyv5GViseBgEwxEJ8nnkGwn9EWeOnJXoqQv19OUclVYQ+LycAVUxN2h5CXk7Ti
         w7p4SyLCA1ZS7PAmU4vbZgJHAvLoyldV6MmXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720093671; x=1720698471;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXlV5b+WszVOoPFzgWBmXhJmH0BZMdYioCjDE0rlQ0s=;
        b=gsX1NNbi5eTdboXlNRVdvIPeFC+IRMX/ddunTaKzadVDuz/oyVK19G5qs6xn/A+Gx7
         GT+DOxE0zmihj/JYSwTXZgYtmBn+nK2GUe70ms7tfZv2T+0uLdsyOCupWL2Uc173H6Ho
         Aud9l0jeuZb3kQgFVt1rS1h5u3+QieMonv3zw2vw089vKqR2+yDqxB4BSZx0e0dcayLA
         l+BqXxnexlolVvf0QtpZSW46SOW6ABo5s+Gv3GlvZNjyVVkVKCZxWoo76veLORMXKyR1
         RdS7P2Dy3IFmDj2QsWV4wGkM3hQ9OIOFWEFBKk17G5GJUvLfH9yXs49fsu7Un5vWhVIB
         sjBQ==
X-Gm-Message-State: AOJu0YziSe74zsiu0bwlcqnSgBi4AV1tMDo38lh+6WSm9tDirC49xsmD
	zctShwO7Vy2j4Vz4D6zoflylGEN7FUDALelH5DWtfNIMVh8T69TvTtM/uc+NxPE=
X-Google-Smtp-Source: AGHT+IFO8ysNMkAb9tRegmFcV1UQfqsEAD7HHM9qdL9x6x3KXdvENwZU81Ec0CcQyAZ7HIuXmYvT2w==
X-Received: by 2002:a2e:9b8f:0:b0:2eb:d9b3:634b with SMTP id 38308e7fff4ca-2ee8ee1394fmr11068781fa.46.1720093670055;
        Thu, 04 Jul 2024 04:47:50 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:be20:56c3:ce73:d7de? ([2001:8b0:aba:5f3c:be20:56c3:ce73:d7de])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42649df9eddsm15450235e9.1.2024.07.04.04.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 04:47:49 -0700 (PDT)
Message-ID: <b3ac57bc2f8963fcacd6f47e32c990e3302319dc.camel@linuxfoundation.org>
Subject: Re: [poky] execute pkg_postinst_ontarget when
 read-only-rootfs-delayed-postinsts is set for a read only rootfs
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Date: Thu, 04 Jul 2024 12:47:48 +0100
In-Reply-To: <CANNYZj8uEmBCY+8eUnTGDYco7ph1HsMas9XpPq7OjokfQXvOyw@mail.gmail.com>
References: 
	<CANNYZj8MvP3C8++HT03wUgNA9vkDtjUMGRqjhPAiJ7EA4PtxOw@mail.gmail.com>
	 <31491.1720090250598985190@lists.yoctoproject.org>
	 <CANNYZj8uEmBCY+8eUnTGDYco7ph1HsMas9XpPq7OjokfQXvOyw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 11:47:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13405

On Thu, 2024-07-04 at 13:07 +0200, Alexander Kanavin via lists.yoctoproject=
.org wrote:
> On Thu, 4 Jul 2024 at 12:50, Gassner, Tobias.ext via
> lists.yoctoproject.org
> <Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for classes in ("package_rp=
m", "package_deb", "package_ipk"):
>=20
> Do we need to try every package manager in a loop? I know other tests
> do it, but if the issue being tested is read-only rootfs with
> read-write /tmp, then maybe testing just once is enough?

If postinsts are involved, that area of the code is quite package
manager specific so that may be why the test code is doing this...

Cheers,

Richard

