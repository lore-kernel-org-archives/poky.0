Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.6586.1652436853503997627
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:14:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PCceBl1X;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id m2-20020a1ca302000000b003943bc63f98so4474424wme.4
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=gxWyCjTPhxDXcwwz5VjmbetvqOKaxiT8pP3f4La2trA=;
        b=PCceBl1XlX6kRnAb6mH6BM7gfNy3d1ADpQ1tx3qfHs06UYjIqVJvFisY8zjbufm2K9
         8bc71RVQveGES7gjOHiBp4fo56WCe9ScOUlKe7pEQuRdT1xUBD0h4g0ra5rgwhA8NX8u
         vM+jMAw9bGey64lbKGAfFMNeDAAvWKuNx1CEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=gxWyCjTPhxDXcwwz5VjmbetvqOKaxiT8pP3f4La2trA=;
        b=lDInss19I+lpQva2YTcCkDUwngfSMjKVTbc+22GEUTt+N8gzwpl7SCe0rwcRmYzevH
         KhEXzhxOAsF6pb1O43GL+awtNY7EWt5eyX1ahx/TVGkV+0seodd/OAdVdmFwS9s0D0yI
         J4nk3mS93bGYGyo3l0GUyMkmABnCYtuS3QnKk4Zhiy4kTh7g5tFlXCeO2DAtYhD4zqlj
         SZaMV3TYB0VczKAVQJWO0RU4bg/CB0gFRWeZBEmVe3JtP2035DR4KQnFbeqetVpT3Yl7
         zOnp6XlFsik8u4OxDz0zW+tx65voC5PBkEc4iqLTDL3tEKTIBX/IL92v58E0/t0XasH1
         tZ8g==
X-Gm-Message-State: AOAM533GCAKSKbjUiOC0SkbSYIciH57u8P220wyABsEaxDbrk6LOely9
	O09tkNu1JEN0vBaPP3VBP6J6hQ==
X-Google-Smtp-Source: ABdhPJwb6red3DZuSJL2TEgtF4pFHbIlVfKTeP7lUhKDbZcVnUigY9d+4STkZgTUvQT2d51aI2xF0Q==
X-Received: by 2002:a05:600c:19cf:b0:394:96c4:8959 with SMTP id u15-20020a05600c19cf00b0039496c48959mr14703601wmq.9.1652436851905;
        Fri, 13 May 2022 03:14:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a1e1:9ec5:5b27:abc8? ([2001:8b0:aba:5f3c:a1e1:9ec5:5b27:abc8])
        by smtp.gmail.com with ESMTPSA id o25-20020adfa119000000b0020c5253d8c3sm1755247wro.15.2022.05.13.03.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 03:14:11 -0700 (PDT)
Message-ID: <0feb67b5ab444dc14b5b37f1eae761543f531079.camel@linuxfoundation.org>
Subject: Re: [poky] [PULL][PATCH 0/1] Do setuid before git operations
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: jackwa@google.com, poky@lists.yoctoproject.org
Cc: ryanoleary@google.com
Date: Fri, 13 May 2022 11:14:09 +0100
In-Reply-To: <cover.1652432972.git.jackwa@google.com>
References: <cover.1652432972.git.jackwa@google.com>
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-05-13 at 10:03 +0000, Jack (Szu-Chieh) Wang via
lists.yoctoproject.org wrote:
> From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
>=20
> /etc/build information missing is because the new git thinks it's
> unsafe to do git operations if the directory has a different uid from
> the executing process'. However, there are still cases that we are
> building the image with a different uid, making git reporting false
> alarms. This patch identifies the cases by attempting to setuid to the
> owner of the git directory and if this works, it should be the
> expected git repo thus safe to do git operations.

This should have been fixed in master or in the process of being fixed
on the stable branches by the git wrapper we've recently merged?

https://git.yoctoproject.org/poky/commit/?id=3D4d7383aefb391a5a998454c70feb=
96127951ca0a

and several other related commits.

Which release are you seeing that with?

Cheers,

Richard
