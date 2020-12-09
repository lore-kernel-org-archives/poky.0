Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3402.1607549674764998328
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 13:34:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=q062vcO6;
 spf=none, err=SPF record not found (domain: srin.me, ip: 198.145.29.25, mailfrom: s@srin.me)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DE07B38C06FF
	for <poky@yoctoproject.org>; Wed,  9 Dec 2020 21:34:33 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id g20so4332820ejb.1
        for <poky@yoctoproject.org>; Wed, 09 Dec 2020 13:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=Vcr6QdlNkPI8TQ02ttGI74YtawhlI0YZq0iZnQDfCt8=;
        b=q062vcO6zOp91qXrO4RhsJK1FxkCVug3i71X2LugDEZk4BaAByjWzN1EHdl0Zn1A8j
         mgYbBeSPuGJ1FgWvx6d2zjwaxXl/F9cZBQb/NW36OrEgBcl2uZGoFoidwQklmqqae3w0
         LpEwBFg7yDXgteJCbx0u6lHwOFXOgweS4k9kznFYj7KM3sMnpU0wTX2tRJfMJCNzn6Fg
         9c02hooUYQonjIk7Rd8PE9jnDgVedbiwG7jZgNXfJbmbILMsbCa04XtzIqcERGJDxSaI
         v2rwfB9Z/2COdfpoAk2E5bG0CqFiqNmf7VZs2AVFZG+aYp7iET4vbvfKJKa54PunFhAJ
         GwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Vcr6QdlNkPI8TQ02ttGI74YtawhlI0YZq0iZnQDfCt8=;
        b=hGp0NBxietR8rLj4mT1fgO1432hQee0nMyDQ789uUXvfl4WTPYnzCC7LtJqlZbiWsv
         YB8ZLpQcQ3TQt1YzFrW4s59fd/mL14vBt1y6/UuBKj96QSMFW04xlkL+0bAYtn01XMMD
         CCppr9LIMuDDOoJLbX8p4aNWy41U+FuiNFsfFtJHILy0htIb/2r3tVpJ8B653WVKSgQk
         ngh9gWiAG3q3Pfq1Lk0Wcq4oYGq8sfrSz0y5ahk2AcpKTfgyT5Ivo2ihm4o5ut50U8c0
         fXPpUAgDd5KgPTDOwdSyU96sJsLyBI7K3ctuwZF7J2kEHI57c6bU0/W/b4GhWrjvhX6O
         mXxg==
X-Gm-Message-State: AOAM533KDAXtmidRIRRslXHkMoDpGqgcosJ/Ndcte/j7jkxDKiUuXAkc
	tsCaMLrWoStDdwUsTWHqLAXrl9lEuT+m4WwHvVzE+SZYRO+Rhw==
X-Google-Smtp-Source: ABdhPJzUr5q/vNGDLqVs48VvudggDid4f8Og7hRZwCVAM+PQ1g8os4nQ1Vj2Y0vnM/XxAdR5ws9JrNSDQrLxfNRNb1g=
X-Received: by 2002:a17:906:f949:: with SMTP id ld9mr3832379ejb.401.1607549672005;
 Wed, 09 Dec 2020 13:34:32 -0800 (PST)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Wed, 9 Dec 2020 16:34:22 -0500
Message-ID: <CAGNn0hbf=v9VVj2uVECAF9_UU8d_MUOW6UodpUsXzY54vDMkwA@mail.gmail.com>
Subject: practices question
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000028b74b05b60ed338"

--00000000000028b74b05b60ed338
Content-Type: text/plain; charset="UTF-8"

Curious if yocto users have their own replicated repo say poky.git or
meta-openembedded

it would seem to me that we should always be able to retrieve the right
version from the yoctoproject repositories.

thanks, srini

--00000000000028b74b05b60ed338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Curious if yocto users have their own replicated repo=
 say poky.git or meta-openembedded</div><div><br></div><div>it would seem t=
o me that we should always be able to retrieve the right version from the y=
octoproject repositories. <br></div><div><br></div><div>thanks, srini<br></=
div></div>

--00000000000028b74b05b60ed338--
