Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B08FC77B7F
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 19:07:12 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.29735.1683140827422317042
 for <poky@lists.yoctoproject.org>;
 Wed, 03 May 2023 12:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=eYEfT8c6;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: rustyhowell@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f13c577e36so1050936e87.1
        for <poky@lists.yoctoproject.org>; Wed, 03 May 2023 12:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683140825; x=1685732825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sOPW8UyYTA2UrueZNpVzf6Ulz5/qIrGY+C48KNYO46E=;
        b=eYEfT8c6Kt4LjbYn9/PFRjIFinmbkbDVFcWztsSLXMA9XghZwovHFxeuDEfo3gCdsa
         dJa9JbIpcK7C0z68Opd1pcS5UU4Lwr4xfw+9N8+XRrRyrQSmmno/71dCr6hKwyGfvevw
         qFnFKyl73P1CYLZKsf0Dpsy9JyZWlSESsFBYtYN7KxnfXdl2Ok6KublQTQe1aLWaFU/b
         F5WMRGBuQbs7UMXTCAxStSmwsd4RUbn/nvSFQ9SoVChHypubSlyV5rwFQd8ftMTV9KFT
         D2ozRvfn1ssOHKgKzh7HmRF3gIP531HUbQOdjNFRJFzQWzi4QZh4FQEFRsnCSyUhwHCG
         S33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683140825; x=1685732825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sOPW8UyYTA2UrueZNpVzf6Ulz5/qIrGY+C48KNYO46E=;
        b=dR0qvAFzmL+l7Za9Ng0NLktH454Xo86eEVEO9woZaYblSRLF1EcBl0m4Mi1xsxLzLV
         89A5+JfujixRCBkIlFiBAzDfIAlI6YOBwEcLTmWCEKt1HTpqZdTKv83zub/oYUppJePA
         ts0gYs7YZMCrrX/DjiAxe2B9dSLI3hsuUrYQbncOJjZmwSCUodapftTchb8ftnuTjOtr
         OHwtdHshjTKrddAg4SZx7rL/+VvMIEAjPEvK/y4D0wzY3LWpQ6NcsLDhL5QWGoGJC6U5
         DWVXDvzAmK/1BEpAfe8e8vz6h5New7RsUT74MedQeRkTTF/38hTdDNcBftNlukbxl0LK
         h7sw==
X-Gm-Message-State: AC+VfDydIhP2wTKCupnCV+iz0uYZvj7wRFAPztnNgo2WvMbLNV+JtNbT
	NrWbHQL7isIgUwM9b554vZmZCbMypuJ2pAex9jc=
X-Google-Smtp-Source: ACHHUZ4utSUah+C4m2o094NLx0pPTN2eyx9INyNwZyDAzkXZSTfUe/pDlmHag6O8rD/TzKHbjzAqSf/wNfTwF2NLIHU=
X-Received: by 2002:a05:6512:1028:b0:4ef:e87e:df88 with SMTP id
 r8-20020a056512102800b004efe87edf88mr976143lfr.64.1683140825341; Wed, 03 May
 2023 12:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <wKCv.1683133412145731863.pxoj@lists.yoctoproject.org> <58703cd89e9ac138f28b621ac7e93a178118a8e4.camel@linuxfoundation.org>
In-Reply-To: <58703cd89e9ac138f28b621ac7e93a178118a8e4.camel@linuxfoundation.org>
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 3 May 2023 13:06:49 -0600
Message-ID: <CAE+BM3kiMRJa+_TwfP2TP_R6MehgDOaVk1+giJr18sJgCdESBA@mail.gmail.com>
Subject: Re: [poky] Ability to customize the prserver connection?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000064e005facec3d7"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 03 May 2023 19:07:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13062

--0000000000000064e005facec3d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

My company has need of proper package feeds that support multiple active OS
releases. That is, we need to have the ability to work on OSv1.1 and OSv2
simultaneously. The problem we are having is that PRAUTO responses from the
prserver do not have a concept of OS release. The later query gets a higher
number. So if we build OSv1.1 after OSv2, that means that OSv1.1 has a
package with a greater PRAUTO value than it's counterpart in OSv2.  In that
scenario, our OS dist-upgrade will be incomplete. I solved this initially
by hacking the PRserver to include an int os_version, based on a variable
in our site.conf. And then I changed the prserver to support this extra
param with another column in the database.  Now queries to the prserver
consist of a tuple like ("base-files-1.0-r0", "aarch64", "12345678978",
"11")  where "11" is the new os_version param, and the OSv2 counterpart
("base-files-1.0-r0", "aarch64", "12345678978", "20") where "20" is the new
param.  The SELECT queries to the database find the max value for that
package/arch and os_version <=3DX.

In this manner, any increase in the OSv1.1 package, will cause the OSv2
package to get bumped on the next build automatically, regardless of a
checksum match or not.
Recently with our Honister upgrade, we had the added complexity of changes
to the transport protocol (xmlrpc to socket+json) as well as simple changes
to package.bbclass has caused us redo some things. And hence the idea of
being able to provide our own custom prserver client for bitbake to consume=
.
I hope this explains our needs well enough.

Rusty


On Wed, May 3, 2023 at 12:03=E2=80=AFPM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2023-05-03 at 10:03 -0700, Rusty Howell wrote:
> > Hello, is there a way to (or is there interest from others) in being
> > able to customize the connection to the prserver?   We have a need to
> > send an extra parameter to the prserver (which we have also
> > customized).  We were able to do this by monkeypatching the prserv
> > client during the do_packagedata task. (Rule #5 Never modify Poky)
> > We had a custom TaskStarted handler which would monkeypatch the
> > getPR() method and add the extra parameter we wanted.  We recently
> > upgraded to honister which broke our method of monkeypatching.
> >
> > I know most Yocto users focus on images and don't bother with package
> > feeds. But for those who do, I wanted to work on a way to allow one
> > to create a custom prserver connection rather than being forced to
> > use the client in bb/lib/prserv/client.py and hack at it via inherits
> > and task handlers.
>
> I guess we've assumed you might just have multiple PR servers for this
> situation and switch to the right one for what you want. I'm not aware
> of a way to specifically do what you're asking for here at present.
>
> The PR Server code and approach is all a bit old and creaky. I think
> adding some kind of customisable field/data would likely be a
> reasonable extension. I know the hash equivalence server handles
> situations like this in a much better way.
>
> So I'm open to proposals for this (and to clean up/improve PR serv in
> general). I would like to understand more about what kind of data this
> is if possible so we can better understand the use scenarios for PR
> serv and hopefully ensure it better suits real world usage in future.
>
> Cheers,
>
> Richard
>
>

--0000000000000064e005facec3d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Richard,</div><div><br></div><div>My company has n=
eed of proper package feeds that support multiple active OS releases. That =
is, we need to have the ability to work on OSv1.1 and OSv2 simultaneously. =
The problem we are having is that PRAUTO responses from the prserver do not=
 have a concept of OS release. The later query gets a higher number. So if =
we build OSv1.1 after OSv2, that means that OSv1.1 has a package with a gre=
ater PRAUTO value than it&#39;s counterpart in OSv2.=C2=A0 In that scenario=
, our OS dist-upgrade will be incomplete. I solved this initially by hackin=
g the PRserver to include an int os_version, based on a variable in our sit=
e.conf. And then I changed the prserver to support this extra param with an=
other column in the database.=C2=A0 Now queries to the prserver consist of =
a tuple like (&quot;base-files-1.0-r0&quot;, &quot;aarch64&quot;, &quot;123=
45678978&quot;, &quot;11&quot;)=C2=A0 where &quot;11&quot; is the new os_ve=
rsion param, and the OSv2 counterpart (&quot;base-files-1.0-r0&quot;, &quot=
;aarch64&quot;, &quot;12345678978&quot;, &quot;20&quot;) where &quot;20&quo=
t; is the new param.=C2=A0 The SELECT queries to the database find the max =
value for that package/arch and os_version &lt;=3DX.</div><div><br></div><d=
iv>In this manner, any increase in the OSv1.1 package, will cause the OSv2 =
package to get bumped on the next build automatically, regardless of a chec=
ksum match or not.</div><div>Recently with our Honister upgrade, we had the=
 added complexity of changes to the transport protocol (xmlrpc to socket+js=
on) as well as simple changes to package.bbclass has caused us redo some th=
ings. And hence the idea of being able to provide our own custom prserver c=
lient for bitbake to consume.</div><div>I hope this explains our needs well=
 enough.</div><div><br></div><div>Rusty<br></div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May=
 3, 2023 at 12:03=E2=80=AFPM Richard Purdie &lt;<a href=3D"mailto:richard.p=
urdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, 2023-0=
5-03 at 10:03 -0700, Rusty Howell wrote:<br>
&gt; Hello, is there a way to (or is there interest from others) in being<b=
r>
&gt; able to customize the connection to the prserver?=C2=A0=C2=A0 We have =
a need to<br>
&gt; send an extra parameter to the prserver (which we have also<br>
&gt; customized).=C2=A0 We were able to do this by monkeypatching the prser=
v<br>
&gt; client during the do_packagedata task. (Rule #5 Never modify Poky)=C2=
=A0<br>
&gt; We had a custom TaskStarted handler which would monkeypatch the<br>
&gt; getPR() method and add the extra parameter we wanted.=C2=A0 We recentl=
y<br>
&gt; upgraded to honister which broke our method of monkeypatching.<br>
&gt; <br>
&gt; I know most Yocto users focus on images and don&#39;t bother with pack=
age<br>
&gt; feeds. But for those who do, I wanted to work on a way to allow one<br=
>
&gt; to create a custom prserver connection rather than being forced to<br>
&gt; use the client in bb/lib/prserv/client.py and hack at it via inherits<=
br>
&gt; and task handlers.<br>
<br>
I guess we&#39;ve assumed you might just have multiple PR servers for this<=
br>
situation and switch to the right one for what you want. I&#39;m not aware<=
br>
of a way to specifically do what you&#39;re asking for here at present.<br>
<br>
The PR Server code and approach is all a bit old and creaky. I think<br>
adding some kind of customisable field/data would likely be a<br>
reasonable extension. I know the hash equivalence server handles<br>
situations like this in a much better way.<br>
<br>
So I&#39;m open to proposals for this (and to clean up/improve PR serv in<b=
r>
general). I would like to understand more about what kind of data this<br>
is if possible so we can better understand the use scenarios for PR<br>
serv and hopefully ensure it better suits real world usage in future.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--0000000000000064e005facec3d7--

