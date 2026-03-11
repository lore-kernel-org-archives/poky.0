Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE711062884
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 12:13:53 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19975.1773231226953245528
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 05:13:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=awYtU6Kf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso46637395e9.2
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 05:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1773231225; x=1773836025; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UxQR4Rs+ox9K2wIWJdjtyCm/I4b4QCiKvRqOY3FDQ+E=;
        b=awYtU6Kf8fKa/TdppanBYZY1rv1KRQrcYzIquSbpN1XV17+KneR1zuLDDuZB8P078E
         vQ/ODaiEqmFhDw7xReo1+tWYPOq4H9YsQm8raEXhDQD8RkfbffuQtJgUQ5ilAqonS439
         0xbn3MO7FL3bM1ChKXngU+fkhy8Gt8L5jLVys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773231225; x=1773836025;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UxQR4Rs+ox9K2wIWJdjtyCm/I4b4QCiKvRqOY3FDQ+E=;
        b=bhrM/W8MqFWrFemfgIzkWQ4Pc6IPaDkZBfa33zQOaKVKyAQ01tDfzgnz0/TNDK97sQ
         v2+t6ZV8vkvrMT7nQOsGI4Fwr3hmg5Nw4/cObpH3Gbt3Bbw3kVqYIi6qGJZjC8RfEgpD
         XZ7eA7YDH7CB64Eqds40UXxghPKz15oxUo8dTeq4dw3n717ow73sX2o4jh3Pnn4P5RI+
         OCZV3JvqR3VRKBkr4sls+BY9e3FTgha+6sU/HC2nUTj4T4XkojqFvcCLiE50ls9kk8sH
         ivv8X6AnFD4pzgyKtVKHSHxBgb2Ph48yFrmvHqzoGUAbAMMkCgGg1u4CzTZuMqjX+wRr
         FpOQ==
X-Gm-Message-State: AOJu0YzNXMte2t5w18VcIRBK8oUd4VQYAFdtuV/4ufcyLF7EsEocCHDk
	WcGx1ljWfLq405Lj8zgArwzcigMajiloo5qHCssXwDecE8NCq2QSEeHmY55s8h5vZDs=
X-Gm-Gg: ATEYQzw0jlIgudhwtkq6tzyI2GLl6GelYAC3UocCzURHsTI/410kLcWmBkoilDUesrc
	3xecyqqyNPF/Mdmr2zZzQbIkGSmQw9vaGgGnTn6mHiqNvFrnMEr0dxvxnobQY+ocp8Am6wz0Dlm
	o+eMr7kpQxjLW9hzT7zfe92lAleA1/P9kOCTnfbCmIyxoQ6rnb5/v7CjcpbGs0h3QDmWtWYxoNt
	NCIaC6OW9g3YELfgJ/qPl8oF2ohVVHWqrJBkxWWsePL6Zm+pbNabCewXW3IoKwV8wOZMWrCPx5Y
	qDNOjt9sEKAL9wCvTu612vP3hCOdNf99mnAUWllUmcgSZOQs5j2IPehhT3JHIWc8E1skt16BAiw
	KVsmjNyglIAFstuRCcNxjnN5oaZgRsh9lI304DfNthBMLx+lFhQwwZ5KLywy5+oHEdpqJ39flhj
	9/j+HilqazbI0LQXV1Ng+KfBDyjgiT6V/3KBEFot3LoJtjei1ltzTQzl8mYmCGMwcjTJ4voDxf/
	BWtlJedQqXQJYc=
X-Received: by 2002:a05:600c:1f10:b0:485:379b:57bb with SMTP id 5b1f17b1804b1-4854b0a413emr42698755e9.3.1773231225176;
        Wed, 11 Mar 2026 05:13:45 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b? ([2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f708sm213569755e9.11.2026.03.11.05.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:13:44 -0700 (PDT)
Message-ID: <2559713e813caeb132236d19744e3eba5b41728c.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] genericarm64.conf: fix qemu testing with
 testimage.bbclass
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: poky@lists.yoctoproject.org
Date: Wed, 11 Mar 2026 12:13:44 +0000
In-Reply-To: <abFbrkd8o7iYxUkF@nuoska>
References: <20260311113616.249506-1-mikko.rapeli@linaro.org>
	 <f3f3d82f4f70370b4904d65467748210e5cd1c84.camel@linuxfoundation.org>
	 <abFbrkd8o7iYxUkF@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 12:13:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13857

On Wed, 2026-03-11 at 14:10 +0200, Mikko Rapeli wrote:
> > slirp, is a preference thing and I'd like to stay consistent
> > between
> > the qemu setups. It is not the default.
>=20
> It is the default on all builds and configuration I use and on meta-
> arm so I would rather set this by default for genericarm64. Since
> yocto upstream does not test genericarm64 I think this should be the
> default.

I don't, sorry.

I've made my views on slirp and various other aspects of this clear
multiple times. I'm wading into this again.

Cheers,

Richard

