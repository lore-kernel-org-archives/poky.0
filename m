Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DB3DC83F1B
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 13:07:48 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.13529.1752239263693325691
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 06:07:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DoflHXmC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a6e8b1fa37so1796099f8f.2
        for <poky@lists.yoctoproject.org>; Fri, 11 Jul 2025 06:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1752239262; x=1752844062; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gOCvGjWgznmBXGVg/Q8cIgcpCd5ULuE4An9YDJAuUzs=;
        b=DoflHXmC+STU8qt3SPuDZDF0dLvlJfeQyMOy/K3nirJF9zSlSaECmgZTQTERulBXBk
         9guKqXNPtf0CJkBWUijOd2LIW2Fx042Dkb0dy8w6pV8LCRGFHNmVuqIO6Qhad6TpLKLE
         b0QQEeNg2uqIu1ABQn4LAqERQ2ODAkPhrCkXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752239262; x=1752844062;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gOCvGjWgznmBXGVg/Q8cIgcpCd5ULuE4An9YDJAuUzs=;
        b=JlVAoF01/Ayn06iKoKizmcDq8rRdF8C1B0/LhzEabdaVru0/5y5+z0tYyrgN0tx4Ct
         4b5/HZtMPpLWu9YcVek7MOyQrFj97+PIotXkH7RboCAutcAYURF+8NFKGKhyi7bxGGF4
         x6rJDTYvpyYTYJm6XHP9T/9A8YWuLIP36lYC81c54ZiXtodahe4ZrAFlYLe7VY/5VnVA
         hYs2RmPf0QJpYPqOrcLriDUm64KZ5PExBWbyPisw0z9QSHB5Jas8vz/fFfgfxDlC38sH
         g2gXGaziHrsfJxLn5+2eKvocBVQoWL7VWMKJ2CCnxvrFCUfCS8KKBvm/0jvMCV7Kq9Rs
         qTmg==
X-Gm-Message-State: AOJu0YwC6afKvgOfM/4tKENs5uQ3hx4yD69hV5f6+M/+ClZH9OZsdRrC
	S/OCaeCbg2Rrnr/FkfPpVkmDQS7D/grxBag9LMDHhopoaXQlrjTj18hmtf4Myjw0pMI=
X-Gm-Gg: ASbGnct0x9WK5t1pmveyAOr09PUVQjvTYjUbM1+D52Kw7NwU+24GMu+ynWtas1V/oIM
	qPv3sA1riHdssgcYknazgzI2q43bKdd6n3w9a12x6QASHqK/OidKw4Gv5d3TAaMi7tb8ybgkB43
	a9poDWG0nGCe64eZh8VLYe2BjUNW4M+i2CtLGJ0D+eNkcHTN8PMwO/R55KrbWyIV9NSujnh8RC+
	P1RBsSFtJ1Hhyb9RSxEznV1mbP7MLlYvcyX28XBUqfPtkDzzoIV6T+0DVPUS7VChiK8rfDY8JGy
	CSFkse5PAv4QFyrGqHqNyDtDhmD/XT7f2N4kFZ53wskg65e5w8npjkSFklILZVZbiMCnjw3zHL4
	YLBbEhUJIorh/dL0N5SOfXKAcdcHzIZ+J938felyBCAJLckmDiJ0f78vBeWrXOYe9XepgQURqzo
	eJlD/klUsuAjPkUoaYF48Iwg==
X-Google-Smtp-Source: AGHT+IF/pFRmI15CnT3v2/v6Xd9MhN/ysIEDGoaildcNPRmUcyagd+NXM+xiV9LCMP7t1q5/IjRFnQ==
X-Received: by 2002:adf:b601:0:b0:3a5:1240:6802 with SMTP id ffacd0b85a97d-3b5f18fbaf2mr2632663f8f.57.1752239261908;
        Fri, 11 Jul 2025 06:07:41 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d15b:bf13:63e0:c412? ([2001:8b0:aba:5f3c:d15b:bf13:63e0:c412])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd180fsm4377774f8f.2.2025.07.11.06.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 06:07:41 -0700 (PDT)
Message-ID: <97e8302cd5495fd5b000d17f86888db728afbdb7.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v3 5/5] oeqa parselogs: add
 parselogs-ignores-genericarm64.txt
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>, Ross Burton <Ross.Burton@arm.com>
Cc: poky@lists.yoctoproject.org
Date: Fri, 11 Jul 2025 14:07:40 +0100
In-Reply-To: <aHDZpReCMhrztS7a@nuoska>
References: <184E5E78D990934F.30429@lists.yoctoproject.org>
	 <aHDZpReCMhrztS7a@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 11 Jul 2025 13:07:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13701

On Fri, 2025-07-11 at 12:30 +0300, Mikko Rapeli wrote:
> Hi Ross and Richard,
>=20
> Enablers for this have been merged to poky master branch now.
> Could this be applied too?
>=20
> I've noticed that meta-yocto-bsp patched are not getting applied
> like changes to oe-core. Is there something wrong with the changes
> or is something different in the review process which I could
> take into account?

It is more that these are for genericarm64 and those fall more to
Jon/Ross/Bruce than me for review. Ross has been out a bit recently.

Cheers,

Richard

