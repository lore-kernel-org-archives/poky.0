Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4485C54E60
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 18:32:51 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.406.1710441169484920570
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 11:32:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cLQnGa02;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33e95b68b3eso1106121f8f.1
        for <poky@lists.yoctoproject.org>; Thu, 14 Mar 2024 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710441168; x=1711045968; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QD4Tq9OHmL3GZOKpQnAcOaz3Lc736s/zMUXL9ThNiJo=;
        b=cLQnGa02HJAyqxTKtwJK7WDLXS2Gws+vpyU4YP364TOLGOyMrIsTbqv0UgmdeG7CHx
         pZzsNaRoaTFpsGhZAd2MO/cyTIqj7iX5jQA3q5jti4O5MWWlDI44qcuULJaLwjvImtwW
         O9HKh9CAo03mA9AFSZmw9tN9PwSIgOl+lTVi9m83qcE2ocYt9wK6dXgcYMIVJCwTmQdb
         3BL5DqlfLLN/v/Xjq4xPEU+CrwlOKwO/qHwjif0nwZ6p0Pn0Vugw3zXEark1SXw4XhHZ
         TsYHCMmhbp0Y/YmbqdGANlpFYsIz9XT5uLF9UaGsOMLomks05neCb/CUaGv8BY39DyVv
         /XiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710441168; x=1711045968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QD4Tq9OHmL3GZOKpQnAcOaz3Lc736s/zMUXL9ThNiJo=;
        b=ptQ2EQ7rFxzwNMvXWxTJWq58KrOK54vM8OkXDXCZn0pvfAWhWhwdinYTGQCxw7Irhp
         /VmXJS0T70TR3ZN4qISgDmfLpCRRYbkrmxJ2tL4hNEV04eZknNlnKt37XvlB1nZ4OUE2
         tO6c9dGEXZP+yxFSQpnWQ2ssvzvowD3CTOUCcw/HquqQ4d3/Kz2FjKzqQOIKRcLf8bzH
         +Q2V1DBPpO/o9H7NesDUE21IH7XG4pa1WlvViGKGfoDUMFaUwuzWe4ncG1wUok6+h55b
         V6jvfXiriWeMNC7yNoNUOcj3/e7E4Im1Q9OiRutx1IfloAGAW/4839z9ZS8ZTrquwYwR
         oK0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUDRCjwWiVFMbfijzKaQeesn2l+8n3jJpauJTkA76F7k5m2xw2Lq+wwAvDTownOuH2nOsNYyBQlWSw1AYKPWftUpdOiCHaLtck5xx0=
X-Gm-Message-State: AOJu0Yx3wwk1fL7x1OeeIOjkd80x6FNbiCctHA1YBwFrMYjqb3A9jpEC
	AVOasopRo36VZCMPgDfpF0egpwrf6d1uW+i64C8h2Nk+9XWCqAPQaX6VIrV05C+vPOAVEGs7G6X
	ymMxbNwbJ0ixqOi5FPcL+im5uF0I=
X-Google-Smtp-Source: AGHT+IGsP8Lp0Hq+Cgku7azGo6gfh1HgbS8nAngVgYDlgkDr+NjZQUmKPlC+u+zUwdS7jo5lQaBX9v3tCvj9Ot6TwPY=
X-Received: by 2002:adf:f105:0:b0:33e:8aab:fde7 with SMTP id
 r5-20020adff105000000b0033e8aabfde7mr700723wro.28.1710441167689; Thu, 14 Mar
 2024 11:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
 <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com> <ZTJ4lpMInFmxKpVx@xps13> <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com>
In-Reply-To: <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Mar 2024 19:32:36 +0100
Message-ID: <CA+chaQf_UikgzsLT+yCeF5Ce8ZNt=gHyp=jPZMjaNHK4YaWvdA@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
To: Ross Burton <ross.burton@arm.com>
Cc: "gs-yoctoproject.org@gluelogic.com" <gs-yoctoproject.org@gluelogic.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Mar 2024 18:32:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13310

On Fri, Oct 20, 2023 at 3:56=E2=80=AFPM Ross Burton <ross.burton@arm.com> w=
rote:
>
> On 20 Oct 2023, at 13:54, gs-yoctoproject.org@gluelogic.com wrote:
> >
> > On Fri, Oct 20, 2023 at 12:18:22PM +0000, Ross Burton wrote:
> >> On 20 Oct 2023, at 12:48, Glenn Strauss via lists.yoctoproject.org <gs=
-yoctoproject.org=3Dgluelogic.com@lists.yoctoproject.org> wrote:
> >>> Glenn Strauss (3):
> >>> lighttpd: upgrade 1.4.71 -> 1.4.72
> >>> lighttpd: update init script
> >>> lighttpd: modernize lighttpd.conf
> >>
> >> Poky is a generated repository that doesn=E2=80=99t actually have any =
patches directly merged into it, so these should be sent to openembedded-co=
re@lists.yoctoproject.org <mailto:openembedded-core@lists.yoctoproject.org>=
.
> >
> > I'll re-send to the openembedded-core list.
> > Thanks for the pointer, Richard and Ross.
> >
> > =3D=3D> Would someone please update the documentation?
> >
> > https://docs.yoctoproject.org/contributor-guide/submit-changes.html#fin=
ding-a-suitable-mailing-list
> > 4.4.3 Finding a Suitable Mailing List
> > =E2=80=9Cmeta-*=E2=80=9D trees: These trees contain Metadata. Use the p=
oky mailing list.
>
> So we obviously need to make that list a bit clearer.  The relevant line =
was two above:
>
>     =E2=80=A2 Core Metadata: Send your patches to the openembedded-core m=
ailing list. For example, a change to anything under the meta or scripts di=
rectories should be sent to this mailing list.
>
> A better way to do that would be to just list the top level folders, I=E2=
=80=99ll send a change.

I just talked with another person confused by '=E2=80=9Cmeta-*=E2=80=9D tre=
es', can we
change this to '=E2=80=9Cmeta-*=E2=80=9D trees inside poky repository', to =
make it
more clear that it doesn't apply e.g. to meta-oe?

I guess then poky users still might get confused as add-layer meta-oe
will add meta-oe into poky checkout (which isn't really inside poky
repository) but still confusing.

Or were you thinking about sending a change from '=E2=80=9Cmeta-*=E2=80=9D =
trees' to
'meta-yocto-bsp, meta-poky' and forgot to send that change?

Regards,

