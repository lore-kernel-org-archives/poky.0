Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.47420.1674659459294842998
 for <poky@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 07:10:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AyKVNdsm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1517205wmq.5
        for <poky@lists.yoctoproject.org>; Wed, 25 Jan 2023 07:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WzeLViKTZ5L/dBTdCX8a4Eqo6H7JsaQiC1vDKo8O6M8=;
        b=AyKVNdsmsBYxeK33N33gBFKLBvcwwuHai8MOxp8MoQYWno9mNeFY+S+EXvQ0XcDGtt
         Uvqs67PQcYn9dGHHJwgRHD0RQ2ooJOelKkT+3BrVZunmf/Y+9CXbyQ/6upRB3/pOYFCb
         XlF6sx/qdBS+JdhPM1HNSRx3GOODURFFbVqQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WzeLViKTZ5L/dBTdCX8a4Eqo6H7JsaQiC1vDKo8O6M8=;
        b=D3oV5H4socJhKEVoEArm9FGGvW+aZwDPpogVoIBXg6A3X6GlCHFIzO3P7IUikcha9N
         pUooqBhdIWSCiTQ2EJXPrt5qlT4AdQmsGfcjy6kjs0yxUXzNnYM5osKCWamOWgaIWUa1
         iivcLvoEF3B0LWb3sa/ex14CS7yT4gjt+fTZg+51AJhG+KKZwaMRXvkq+U1S1lj+Nrpk
         kvG6L2VGyPzLYJBw47W3ZYuELQG/OIoGRJNzgpEk7xV8TS2Pbvcp5Y84BUMmcb39WXSK
         BFJcaj44VtaTdpVGRqA64iWC070c80kXqFn8r4Q+TCcx6kaDVnR/oKj1DSX/jykOLtFs
         kMGA==
X-Gm-Message-State: AFqh2krMilrFDmW0QgID3eWAyGtg0li6y5piLlDafQCJ2oR3bufrYHdv
	zjXYSdcbnBLVEd5wCq0yX8loo2f0m3HkMcem
X-Google-Smtp-Source: AMrXdXuxQYsEnV6r17OjSQaxfaay/ZorZcj5fRDC9FqyPtDyxLddlCVteUjPJUvCTzEJn5cgyHZgnA==
X-Received: by 2002:a05:600c:b54:b0:3c6:e60f:3f6f with SMTP id k20-20020a05600c0b5400b003c6e60f3f6fmr32379551wmr.38.1674659457518;
        Wed, 25 Jan 2023 07:10:57 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:3356:3b1f:dd00:4e1a? ([2001:8b0:aba:5f3c:3356:3b1f:dd00:4e1a])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600c1d0400b003db2e3f2c7csm7928010wms.0.2023.01.25.07.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 07:10:57 -0800 (PST)
Message-ID: <1003421ce4ffd0b93c7dabe3b2aa7c0b5c240746.camel@linuxfoundation.org>
Subject: Re: [docs] yocto-3.1.22/RELEASENOTES
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Takayasu Ito <ito@lineo.co.jp>, poky@lists.yoctoproject.org
Cc: docs@lists.yoctoproject.org
Date: Wed, 25 Jan 2023 15:10:56 +0000
In-Reply-To: <8ada8dc6-fb4b-5042-9fce-d0926d422226@lineo.co.jp>
References: <8ada8dc6-fb4b-5042-9fce-d0926d422226@lineo.co.jp>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2023-01-23 at 17:55 +0900, Takayasu Ito wrote:
> I was checking the following RELEASENOTE contents, and the CVE for
> cairo vulnerability has already been fixed in 2019 and the change in the=
=20
> PATCH file is that the status of the upstream PATCH has been changed=20
> from pending to backported.
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.22/RELEASENOTE=
S
>=20

The patch was updated in:

https://git.yoctoproject.org/poky/commit/?h=3Ddunfell&id=3D6e97ceb8586281a8=
d594a3a1ab9e303fd34e1d4a

which seems to match the change log and release notes? It wasn't just
the patch status but the patch itself as well?

Cheers,

Richard

