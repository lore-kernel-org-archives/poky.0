Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C41AD2B925
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 13:17:49 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.17671.1730812668737830773
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 05:17:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nYKrYdrm;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7f3da2c2cb5so1648305a12.2
        for <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 05:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730812668; x=1731417468; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dySJW5Z/hLxJHSDxPFfm/wPkQEUoAQeAgGQLK8Y1ECE=;
        b=nYKrYdrmEwLle/QhDi6crlWvRgLpaazuKo10lNvGGzbf9sw8IhuRNKHwROBsmiVTK5
         VYFnUsNJ8SU+lbSWudQpK/bIgnv2CEf8wWpkXHzUc6I/h91WQrvn2tA8GUfMCFp/8sTh
         6W10wzxEUW+iQ/PVRGelho9cFq1CBMsMXkb+SvNrgxcIiAFDrUWAbHSnlytc9PXYMJEa
         q0/x7pkaKlamlHxp/QZBh7gJa1pmiGPpGF0G24n7G4TmD4p3Oe3tvSAHSPDqsC2C/+Xe
         pXlvNkodWR8pSOlCsUyIGT2jUpb3B0DbAvWxsV//oim5eLCy0e2xAUGX/hah9dpIkrdL
         FPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730812668; x=1731417468;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dySJW5Z/hLxJHSDxPFfm/wPkQEUoAQeAgGQLK8Y1ECE=;
        b=lxyUC3xo9/I1UBT9cc4iZU0srkySqqxi1tVs6ZIln+ZQC3TUFKNWQ7WhV76DO4fO2g
         K6N8biEDOMLslUYMB7ZKE/yoTetwyzXbIiJN1x1wmei/qg2FKthBLtYaInV6/rFCINyI
         sIdaJlrpHYxWEifYoIbWAZ0agHO2YVZl0t5XSE6CAQNFHwtAyTC5xDdW/T6MKY5b49fa
         ARduOXnVXeOfhps5Tx9Dig7UVZitGmC1AZiP4Kk/oLN2BbLl/6i6kuRHKMSGsN2qtIbd
         psKq0UQJRrwwnMMktsHyGUpIQ2VfICUi9ynJtHpekv1BvzcL9Me7bSxN/tT8pUt3P67U
         5EsQ==
X-Gm-Message-State: AOJu0YyS346SENcgR2R4I7Rmn+xs1SyDlOU6QfFSdr/2LFKgSnuZPhkd
	cu4rKrcAoD6K/i6dqri+R7U59MASUgUhVK/mMD9JEyrOetjZFZpglRGhNz25OhB7csXzmXrhpBn
	djGZNckgmUrKkZr6ga7n7rRs3chU=
X-Google-Smtp-Source: AGHT+IHdE57/4f5baHFw7lEG6a/RtaMQNDSmyNKjyNytO7v3Ml6rfrVjITd+KWws0u2qR73t3a/MZVg03+SDyUxwRck=
X-Received: by 2002:a05:6a21:9999:b0:1db:f89a:c6fe with SMTP id
 adf61e73a8af0-1dbf89ac713mr1359706637.32.1730812667667; Tue, 05 Nov 2024
 05:17:47 -0800 (PST)
MIME-Version: 1.0
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li> <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li> <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
In-Reply-To: <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 5 Nov 2024 08:17:36 -0500
Message-ID: <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: star@gmx.li
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003aae5606262a3a61"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 13:17:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13478

--0000000000003aae5606262a3a61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 5, 2024 at 7:48=E2=80=AFAM Steve via lists.yoctoproject.org <st=
ar=3D
gmx.li@lists.yoctoproject.org> wrote:

> On 11/5/24 13:06, Alexander Kanavin via lists.yoctoproject.org wrote:
> > On Tue, 5 Nov 2024 at 13:01, Steve via lists.yoctoproject.org
> > <star=3Dgmx.li@lists.yoctoproject.org> wrote:
> >> well download may indeed happened just once, but isn't in each recipe
> >> the git folder with it's complete content?
> >> Maybe I described it misleading:
> >> So it is not about download, but about the amount of storage needed fo=
r
> >> each recipe. Assuming 10 recipes using same main repo, in each of the
> >> ../build/tmp/<recipe-name>/<tag>+gitAUTOINC+<git-hash>/git
> >> I see the full checked out repo.
> >
> > If you want to use individual submodules, then the best would be
> > probably to have an external script that determines SRCREV for each of
> > them from what is recorded in the parent repo, and writes that into
> > recipes.
> >
> > Alex
>
> True - that is one way.
> But that doesn't sound easy with external scripts.
> And the approach to use one recipe for checkout and multiple recipes to
> access this cloned git is more effective in terms of storage usage,
> isn't it?
> How a recipeB, C, ... can know the path below - where the git-has is the
> unknown component in this case.
> To workaround the path
> ../build/tmp/>arch>/<recipe-nameA>/<tag>+gitAUTOINC+<git-hash>/git
>

Have you looked at the work-shared technique we use for the kernel
and gcc ?

Bruce



>
> I guess an DEPENDS=3DrecipeA needs also be part of all recipes using it.
> Well, the recipes B,C,D might need to evaluate that git-hash, but I
> don't know how in a recipe.
>
> Thanks
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13477):
> https://lists.yoctoproject.org/g/poky/message/13477
> Mute This Topic: https://lists.yoctoproject.org/mt/109403571/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000003aae5606262a3a61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Nov 5, 2024 at 7:48=E2=80=AFAM Steve via <a=
 href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;star=
=3D<a href=3D"mailto:gmx.li@lists.yoctoproject.org">gmx.li@lists.yoctoproje=
ct.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On 11/5/24 13:06, Alexander Kanavin via <a href=3D"http://lists.yocto=
project.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a=
> wrote:<br>
&gt; On Tue, 5 Nov 2024 at 13:01, Steve via <a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a><=
br>
&gt; &lt;star=3D<a href=3D"mailto:gmx.li@lists.yoctoproject.org" target=3D"=
_blank">gmx.li@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;&gt; well download may indeed happened just once, but isn&#39;t in each=
 recipe<br>
&gt;&gt; the git folder with it&#39;s complete content?<br>
&gt;&gt; Maybe I described it misleading:<br>
&gt;&gt; So it is not about download, but about the amount of storage neede=
d for<br>
&gt;&gt; each recipe. Assuming 10 recipes using same main repo, in each of =
the<br>
&gt;&gt; ../build/tmp/&lt;recipe-name&gt;/&lt;tag&gt;+gitAUTOINC+&lt;git-ha=
sh&gt;/git<br>
&gt;&gt; I see the full checked out repo.<br>
&gt;<br>
&gt; If you want to use individual submodules, then the best would be<br>
&gt; probably to have an external script that determines SRCREV for each of=
<br>
&gt; them from what is recorded in the parent repo, and writes that into<br=
>
&gt; recipes.<br>
&gt;<br>
&gt; Alex<br>
<br>
True - that is one way.<br>
But that doesn&#39;t sound easy with external scripts.<br>
And the approach to use one recipe for checkout and multiple recipes to<br>
access this cloned git is more effective in terms of storage usage,<br>
isn&#39;t it?<br>
How a recipeB, C, ... can know the path below - where the git-has is the<br=
>
unknown component in this case.<br>
To workaround the path<br>
../build/tmp/&gt;arch&gt;/&lt;recipe-nameA&gt;/&lt;tag&gt;+gitAUTOINC+&lt;g=
it-hash&gt;/git<br></blockquote><div><br></div><div><div class=3D"gmail_def=
ault" style=3D"font-size:small">Have you looked at the work-shared techniqu=
e=C2=A0we use for the kernel</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">and gcc ?</div><div class=3D"gmail_default" style=3D"font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">B=
ruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
<br>
I guess an DEPENDS=3DrecipeA needs also be part of all recipes using it.<br=
>
Well, the recipes B,C,D might need to evaluate that git-hash, but I<br>
don&#39;t know how in a recipe.<br>
<br>
Thanks<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13477): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13477" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13477</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109403571/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109403571/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000003aae5606262a3a61--

