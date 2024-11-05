Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFE0D12692
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 11:45:08 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.15963.1730807098561882189
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 03:44:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GS1zWZzH;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f6e1f756so5610409e87.0
        for <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 03:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730807096; x=1731411896; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=innM09aEqwmljl+Sm5cgIPi3m3sWNixffXfpKsdf0mY=;
        b=GS1zWZzHVUmMjgvE+wntncsVN9bumDxXkZ4JHulVvSOVUoZZxVyAn4lNY3AQ4+rOR5
         Y/YMEVOQwzTN1cA6m99VERkzGRHS4kKp0sNVfMWHCWH4zuDvuJZqJCogMxLkqwrsYqUy
         UN2e6MH2Q2uFhmOQ+A6Om1rs/BQjRFo6lJ/779dP1RKsiGRqJkLyoFSt5m2CGlv44GF3
         6LStI6K3HoNKNl8LLvnzmBjOdkP7yOlQbhBplmNnoKaJxpk+9CpXV6grinlif1JPylhT
         ys+TXXGXmY0dGad1mi1YeG3ZA3JpP28cuhKsEj6lLXvso/DhsAA4lTB0eRxR8CBpYj3/
         qUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730807096; x=1731411896;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=innM09aEqwmljl+Sm5cgIPi3m3sWNixffXfpKsdf0mY=;
        b=XbyZR2KqAe3wFTPtoht+qG44tbHRN9nQMvjrIdpbhXFVEREdCLQuPGEBHePjX18TmW
         LrnmIR1w5+5X8JSdSmUdmGuP4X1rhWGUp2jyNvSojQobUynOiKbSlDZW1X77UauF1zNM
         ixH1JWySjTL53qUtQVFwvthDfwnd0w146c6Vdd6zc4FoYSVpI3H8pPDiDi86J4GJcF6y
         xZlm91kkUKYir8qEuw+FYvdrM1sHV5BB6YbslPz7Ptmb+oeh+yQSQQXGTFuzITWwGVj5
         niqTtpJFqmrkJU5eZrn8XV6gRzqwT71JVrnAtMRN4E9xIKJpkBcAcKWoxeKU0mcMRidp
         RDlQ==
X-Gm-Message-State: AOJu0Yy0nmc0b1Rz8fbCg9NkffNgBeHuQi2D4aJEWsqXiTd9I44nFMRX
	ezXg3j81EY5rRVL2WlabRuLmhVeYpP7+KbVErllew5oet+GhygjoO8X0AejBKub6cpOrZXmnWT8
	eg2zxJOWYYpBJ0lC7x0cXVle06b0=
X-Google-Smtp-Source: AGHT+IEFxlkh5UoYSDv3OC8HZ7HZRRX7+/ilDbnNN7EtfKC+cOoqe6eCju7TY4q18mLImDxvcRsmVl556bIxG+G6imM=
X-Received: by 2002:a05:6512:3b1e:b0:539:f37f:bed9 with SMTP id
 2adb3069b0e04-53b348c38d4mr18399472e87.8.1730807095962; Tue, 05 Nov 2024
 03:44:55 -0800 (PST)
MIME-Version: 1.0
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
In-Reply-To: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Nov 2024 12:44:45 +0100
Message-ID: <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: star@gmx.li
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000021343b062628ee8b"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 11:45:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13474

--00000000000021343b062628ee8b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If SRC_URI is the same in multiple recipes then it will be cloned just once
and then reused from the download folder. Not sure what=E2=80=99s exactly h=
appening
on your side, you need to demonstrate how that is not working, and where
mutiple clones are happening.

Alex

On Tue 5. Nov 2024 at 11.51, Steve via lists.yoctoproject.org <star=3D
gmx.li@lists.yoctoproject.org> wrote:

> Hello,
>
> Do have a bigger repo with submodules. Before each submodule gets its
> tag - so I did have mutliple recipes and need to fetch only parts.
>
> Now there is just one(!) tag for the main repo. Anyhow it was a pain to
> clone that repo and submodules multiple times.
> So I think about one recipe for just fetching data and multiple recipes
> that (depend on download-recipe)  work on the fetched data to compile
> parts?
>
> Problem is, that I have a huge git repo (with submodules / gitsm) and
> the download is via gitsm with branch and tag. Than the download folder
> is some recipe-name/<tag>+gitAUTOINC+<git-hash> and other recipes can't
> know that hash to access this folder.
>
> What is a solution for this? I think about creating a link to the level
> below - but that doesn't sound save or clever. What would your approach
>
> Thanks,
> Arno
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13473):
> https://lists.yoctoproject.org/g/poky/message/13473
> Mute This Topic: https://lists.yoctoproject.org/mt/109403571/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000021343b062628ee8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">If SRC_URI is the same in multiple recipes then it will b=
e cloned just once and then reused from the download folder. Not sure what=
=E2=80=99s exactly happening on your side, you need to demonstrate how that=
 is not working, and where mutiple clones are happening.</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue 5. Nov 2024 at 11.51, Stev=
e via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> =
&lt;star=3D<a href=3D"mailto:gmx.li@lists.yoctoproject.org">gmx.li@lists.yo=
ctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;padding-left:1ex;border-left-color:rgb(204,204,204)">Hello,<br>
<br>
Do have a bigger repo with submodules. Before each submodule gets its<br>
tag - so I did have mutliple recipes and need to fetch only parts.<br>
<br>
Now there is just one(!) tag for the main repo. Anyhow it was a pain to<br>
clone that repo and submodules multiple times.<br>
So I think about one recipe for just fetching data and multiple recipes<br>
that (depend on download-recipe)=C2=A0 work on the fetched data to compile =
parts?<br>
<br>
Problem is, that I have a huge git repo (with submodules / gitsm) and<br>
the download is via gitsm with branch and tag. Than the download folder<br>
is some recipe-name/&lt;tag&gt;+gitAUTOINC+&lt;git-hash&gt; and other recip=
es can&#39;t<br>
know that hash to access this folder.<br>
<br>
What is a solution for this? I think about creating a link to the level<br>
below - but that doesn&#39;t sound save or clever. What would your approach=
<br>
<br>
Thanks,<br>
Arno<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13473): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13473" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13473</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109403571/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109403571/1686489</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanav=
in@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000021343b062628ee8b--

