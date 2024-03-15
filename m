Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90ACC54E58
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 09:59:29 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.18000.1710496764399048430
 for <poky@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 02:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NbV94Utn;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33e570ef661so745604f8f.1
        for <poky@lists.yoctoproject.org>; Fri, 15 Mar 2024 02:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710496763; x=1711101563; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iw4nV5lZj7ygBBxkn12KnYPKtOt7esb1IKn7PI6arnY=;
        b=NbV94UtnpdAuqC7lPt7UgjIjvCIS/dq2IGEn1GyP7K8QuzEGli5vIx9uUAKPpE14MM
         k5PjwO0n0+eYb4ibObWpisEuPQm6YsrvmsdvTW34XhpughvDv16b2EdT2HwvtMrRHCwM
         zYPl2oOIkZ1gBfrj2XimMzxUdYnPhThYs0A5k1CoVnO5lRTNjdC7zeJOknMTBsU4h9uk
         oMNBnw13jrYXp3ITTmtCI/URCewldLA/n6CwPLg8tWXczVP0RWR565Es6+FDbrLvqjgt
         ul5Df5AHIZnVSQu68BFyg84b+sCMKVJH9g3DC+grZ1BUNJWxgCOn0CbWU9iU0ciKdEPE
         dQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710496763; x=1711101563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iw4nV5lZj7ygBBxkn12KnYPKtOt7esb1IKn7PI6arnY=;
        b=MHyeTmFOxS8V1EWlyr/Bd9/VfJHHzhYk2s1jA5nIo/xiuhlUcLi6gv2ixBOzvRNcRC
         ATafjnUB/z92TN7z2dZsAY0LdPUfUy6yIGCTHZA74dLgUHj1rj+CRyzntbCFmSfQIncK
         75HduYhNfMqaMWq+1US1t6ED+6ByfAwQJENU5+mcOg6CZ0Q3a7+Mp1yHg2QIEGJ7Qd18
         fcgcJ63mURerTupc3KCuKPQ1WmtLLaYc0O4djlG9lLHM6pj35nTJGz4X504vrsR6Q47C
         ajZH61lz0w993EVy0YDWbuPJjeoWcQ2Ewoj3eyJHgsNWzIxV3rVogZw7mKWWshqruNDN
         eYcg==
X-Forwarded-Encrypted: i=1; AJvYcCV5p8iy4K98b6zr6JnEq0TGWCD3AGmPds9OxYiVH6QQcsoVINyhhj0D4/gXaZCY+U14jjDKwhTfd4wu/E79IkFCS11PlwPLGpnnQMc=
X-Gm-Message-State: AOJu0Yza3V6MJzpdRxQ9BPYUXzsueEjdKC4UebWLdFhWE3iovsgDyEJI
	+AiMbg9Cw9rAJTkwCgVQ0i9W3jbWtXsRYDK3VD9N7+1WcJLXb780fiuB5Uj1jIR7hpVNEGWxU9L
	fY/g41EwokY1Od4HnZD8Gaukz320=
X-Google-Smtp-Source: AGHT+IG+KwFbUT4naEbIaSq8VviF76Mmd8Zon8Vtdsqma1jCJkOwddYqBiE9egwBVZ0+EtFQj0+d95mjkX8/Q1/Wrh4=
X-Received: by 2002:a5d:6505:0:b0:33e:1e0:2679 with SMTP id
 x5-20020a5d6505000000b0033e01e02679mr2899266wru.47.1710496762590; Fri, 15 Mar
 2024 02:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
 <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com> <ZTJ4lpMInFmxKpVx@xps13>
 <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com> <17BCB52E812AFFB8.6435@lists.yoctoproject.org>
In-Reply-To: <17BCB52E812AFFB8.6435@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 15 Mar 2024 10:59:03 +0100
Message-ID: <CA+chaQfEPN81O_mnugb3BdLNBW0GPuyR_OLN9FSAhSYh2Epbig@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
To: martin.jansa@gmail.com
Cc: Ross Burton <ross.burton@arm.com>, 
	"gs-yoctoproject.org@gluelogic.com" <gs-yoctoproject.org@gluelogic.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 15 Mar 2024 09:59:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13311

yocto-docs update sent:
https://patchwork.yoctoproject.org/project/docs/patch/20240315094805.299039=
4-1-martin.jansa@gmail.com/

On Thu, Mar 14, 2024 at 7:32=E2=80=AFPM Martin Jansa via
lists.yoctoproject.org <martin.jansa=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On Fri, Oct 20, 2023 at 3:56=E2=80=AFPM Ross Burton <ross.burton@arm.com>=
 wrote:
> >
> > On 20 Oct 2023, at 13:54, gs-yoctoproject.org@gluelogic.com wrote:
> > >
> > > On Fri, Oct 20, 2023 at 12:18:22PM +0000, Ross Burton wrote:
> > >> On 20 Oct 2023, at 12:48, Glenn Strauss via lists.yoctoproject.org <=
gs-yoctoproject.org=3Dgluelogic.com@lists.yoctoproject.org> wrote:
> > >>> Glenn Strauss (3):
> > >>> lighttpd: upgrade 1.4.71 -> 1.4.72
> > >>> lighttpd: update init script
> > >>> lighttpd: modernize lighttpd.conf
> > >>
> > >> Poky is a generated repository that doesn=E2=80=99t actually have an=
y patches directly merged into it, so these should be sent to openembedded-=
core@lists.yoctoproject.org <mailto:openembedded-core@lists.yoctoproject.or=
g>.
> > >
> > > I'll re-send to the openembedded-core list.
> > > Thanks for the pointer, Richard and Ross.
> > >
> > > =3D=3D> Would someone please update the documentation?
> > >
> > > https://docs.yoctoproject.org/contributor-guide/submit-changes.html#f=
inding-a-suitable-mailing-list
> > > 4.4.3 Finding a Suitable Mailing List
> > > =E2=80=9Cmeta-*=E2=80=9D trees: These trees contain Metadata. Use the=
 poky mailing list.
> >
> > So we obviously need to make that list a bit clearer.  The relevant lin=
e was two above:
> >
> >     =E2=80=A2 Core Metadata: Send your patches to the openembedded-core=
 mailing list. For example, a change to anything under the meta or scripts =
directories should be sent to this mailing list.
> >
> > A better way to do that would be to just list the top level folders, I=
=E2=80=99ll send a change.
>
> I just talked with another person confused by '=E2=80=9Cmeta-*=E2=80=9D t=
rees', can we
> change this to '=E2=80=9Cmeta-*=E2=80=9D trees inside poky repository', t=
o make it
> more clear that it doesn't apply e.g. to meta-oe?
>
> I guess then poky users still might get confused as add-layer meta-oe
> will add meta-oe into poky checkout (which isn't really inside poky
> repository) but still confusing.
>
> Or were you thinking about sending a change from '=E2=80=9Cmeta-*=E2=80=
=9D trees' to
> 'meta-yocto-bsp, meta-poky' and forgot to send that change?
>
> Regards,
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13310): https://lists.yoctoproject.org/g/poky/message=
/13310
> Mute This Topic: https://lists.yoctoproject.org/mt/102079185/3617156
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [martin.jansa@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

