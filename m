Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web08.6741.1652438969980685857
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:49:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=adyrMG1P;
 spf=pass (domain: google.com, ip: 209.85.128.172, mailfrom: jackwa@google.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-2feb8eac315so8269997b3.3
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ufa6u3CK3d81cuLqJkEqn+jbGujUt5krV70Zt0FjC7o=;
        b=adyrMG1PrfEROkXSa+pM636+r0AiJL5O61cKnBxYfkQVp1IYXTuMB4oDKdOHRG//xj
         0Pqp8/dlSlXFxhb9Cmoi04FWYlNPyjOKMOjWfs0XRhi1z+hhFhVIEl1S9g0kCna7pmnY
         opyPnC1KiceT9GidVRl5L56DiDG2wkRBnKJE3qhFt5Lg/72aj8Oguq3U5nLlEPnxEDjH
         w9/K+R0HfuDfz78JKnkTFE+Ij4QywV3bb0QTKllzIRaRd26XCZVCNkIezt2BpoqCFegF
         r8SQW8N/ssrC9lwe/qO4/TMUKgn5tRSfria1mCWfSmdM4sMwmdfahoVrNTugezYf1hrK
         Ly0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ufa6u3CK3d81cuLqJkEqn+jbGujUt5krV70Zt0FjC7o=;
        b=Z4OmKbpd+VrDRmf0t43Jg374rsPryvTEfQhWjbVX7cqo0gXwP9e8sjcKT7z5DyOhXh
         BR/Iu9dP+vjVHsrewuSw+2CG2cosEGpxH5qJHWfaWhVam8/k9eYsgqST96zS6jDvJnq3
         MB9QNj6nIJYEnFKq0Howaj+GbK/GN1FDDg7tX5H//OU4uQC7Rl5Q774sClUFuzfFuxzA
         t/4DAW7YLg5F2ryrTUK7Vv2sguY6d9AJkZooYYkH1fVwEokv9bkZjLnJ4flAegdg3Ez6
         MyxzYKK0wCQ9W4NTyV74LaplW788LDcwqF6aS0wcDLsE/wY9x3V6SMUrKTblUfaM2xxd
         vUew==
X-Gm-Message-State: AOAM533nxs1NMhl+8r0svF6amdgK5PX6bwHxd0qstIrhsFH9Xd1Gu4DQ
	dll4eLaC83v5cqRJTG3Pkb6Dcok+2opt50fSC+EHZQ==
X-Google-Smtp-Source: ABdhPJzj5xnTz4XWA9DuthTrwmyunN94c/utwrnTtuFaVrJjaluWRoneF8RuTRog3TsVsUM1NaIOOCfgnMxFtebZYCU=
X-Received: by 2002:a81:4cd7:0:b0:2ec:888:24c2 with SMTP id
 z206-20020a814cd7000000b002ec088824c2mr5045335ywa.114.1652438969026; Fri, 13
 May 2022 03:49:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1652432972.git.jackwa@google.com> <0feb67b5ab444dc14b5b37f1eae761543f531079.camel@linuxfoundation.org>
 <CAGv+sjGDFDRnNXHWsxAe1PJh+msS-mogN3ojDsG3-TaaYgN-YA@mail.gmail.com> <8e823cb8afde58dffeb4e79bcc2e3d04997def7f.camel@linuxfoundation.org>
In-Reply-To: <8e823cb8afde58dffeb4e79bcc2e3d04997def7f.camel@linuxfoundation.org>
From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
Date: Fri, 13 May 2022 18:48:53 +0800
Message-ID: <CAGv+sjGVoHQ_eK1aPk6FBkzFUvzgxUbm5gpN-LgrFoCkyYNcag@mail.gmail.com>
Subject: Re: [poky] [PULL][PATCH 0/1] Do setuid before git operations
To: richard.purdie@linuxfoundation.org
Cc: Steve Sakoman <steve@sakoman.com>, poky@lists.yoctoproject.org, 
	"Ryan O'Leary" <ryanoleary@google.com>
Content-Type: multipart/alternative; boundary="000000000000c3685f05dee26dd8"

--000000000000c3685f05dee26dd8
Content-Type: text/plain; charset="UTF-8"

I see, thanks a lot for your help and your efforts.

Sincerely,
Jack


On Fri, May 13, 2022 at 6:22 PM <richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2022-05-13 at 18:19 +0800, Jack (Szu-Chieh) Wang wrote:
> > Hi Richard,
> >
> > Thanks for your prompt reply.
> > We're using the dunfell branch and the git issues remain.
> > I see the patch is only on master not on dunfell, is this correct?
>
> We have a backport policy which means we fix on master, then fixes
> cascade to the stable maintained releases. There is a review request
> out here:
>
>
> http://cgit.openembedded.org/openembedded-core-contrib/log/?h=stable/dunfell-next
>
> which includes the patches and should hopefully merge in the next few
> days.
>
> Cheers,
>
> Richard
>

--000000000000c3685f05dee26dd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I see, thanks a lot for your help and your efforts.</=
div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr">Sincerely,<div>Jack</div></d=
iv></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, May 13, 2022 at 6:22 PM &lt;<a href=3D"mailto:ri=
chard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri,=
 2022-05-13 at 18:19 +0800, Jack (Szu-Chieh) Wang wrote:<br>
&gt; Hi Richard,<br>
&gt; <br>
&gt; Thanks for your prompt reply.<br>
&gt; We&#39;re using the dunfell branch and the git issues remain.<br>
&gt; I see the patch is only on master not on dunfell, is this correct?<br>
<br>
We have a backport policy which means we fix on master, then fixes<br>
cascade to the stable maintained releases. There is a review request<br>
out here:<br>
<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core-contrib/log/?h=3D=
stable/dunfell-next" rel=3D"noreferrer" target=3D"_blank">http://cgit.opene=
mbedded.org/openembedded-core-contrib/log/?h=3Dstable/dunfell-next</a><br>
<br>
which includes the patches and should hopefully merge in the next few<br>
days.<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>

--000000000000c3685f05dee26dd8--
