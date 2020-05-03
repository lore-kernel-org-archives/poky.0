Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.22378.1588513091027850670
 for <poky@lists.yoctoproject.org>;
 Sun, 03 May 2020 06:38:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+pgz2Lb;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: giannipinounavolta@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id d25so7413716lfi.11
        for <poky@lists.yoctoproject.org>; Sun, 03 May 2020 06:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rmvKzGHncb+NAblJURWjgAOedg6QnVY0cAgO7IOY0J0=;
        b=a+pgz2LbJ32rdDCij07MEh/9ZgTF7WgmleQ83xe9NECxHX3hN2DcZjD4GbMCyJL2EM
         zTQ8ejOulsLycJQYt3pho2sNL7RJupUvMpRhzXCfXnvhwpRGJGcJjJ31WKOQ5oA6oFY1
         PbauqhJ1hO6+l2CRfMczCjQJL8nIorzy3XoB/OOb8u57C4zK99UJ6TTSxdjYZjbDDP36
         KU81EW6zC3aIpneehQxFUhP/I2pmlEh8kiTka4YQpOe6XZ/kyyuZP72/qrNlhX8QyH6X
         nwkJwiqEi4jdhzyLSvBJ0VGQAFFPziZp6+ZSzXtzLHhsD0y0dUbBKWL1129TA08xOwju
         sEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rmvKzGHncb+NAblJURWjgAOedg6QnVY0cAgO7IOY0J0=;
        b=dFP3LWjAp+43nuvzX2K7iDkthQyDmv6lE5M90FH25VrxoSJPU6FF/YH4nAGOHXrR4q
         N2Ijp18kZ3/0z3ZnnguBPGhqxPrVQaOZhwC72HkybxYewobAKpwoF1l5dcog4MHI1pEM
         iqPxwKlwqInyc/kEd1sd7XKosAWIYqX6/eos+rynbQmD+EBg42PAuWX5ov9osmnkq2II
         xZFtfLQQKd4XL+EdRFG2MbrqMNF4t6IeviiUENg7DOLS9hioCW5dgc2yPo2S7gqm0u05
         pQnvTNTXz7+hAtEFB5ewMUNoTZcDdlEjE9CV+TbK60mrX4AlYKlNXfLe3j8ClpwD3UIc
         3Mmg==
X-Gm-Message-State: AGi0Pua/Rl52T1tDwMO3aYS4Sze8nc3LKSHcfurqWWaAkF3wsyxm/ewZ
	+Yk2Vh0Ncqfn3FrhouatSWOtb0JgnzGdFvqcCaAKjUCl
X-Google-Smtp-Source: APiQypJ4YmTWu5Fad/cf+BWFDJ59CGiE89JezVk15BuNYDP/b1s32Q9i1UWKmGd5C73lmgbc4fFkvnUX2KcCrw0Dj7E=
X-Received: by 2002:a05:6512:3049:: with SMTP id b9mr8838314lfb.176.1588513088790;
 Sun, 03 May 2020 06:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1wPpqhBLXBu9qNLtbRmjz=-R3TBROZrch0SzTcGToBzo0vzA@mail.gmail.com>
 <CAC+thW22+fhv_qCy-+X2eioONk1WwN0G2Wf5KdoFVNS175c61w@mail.gmail.com>
In-Reply-To: <CAC+thW22+fhv_qCy-+X2eioONk1WwN0G2Wf5KdoFVNS175c61w@mail.gmail.com>
From: "Gianni Pino" <giannipinounavolta@gmail.com>
Date: Sun, 3 May 2020 15:37:56 +0200
Message-ID: <CAP1wPpr2LfZOhjuZTc1WEs05M7y1J7qUiZEiW5mTDoY6OXoY=g@mail.gmail.com>
Subject: Re: [poky] Dunfell poky version
To: poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000060e6f105a4be861c"

--00000000000060e6f105a4be861c
Content-Type: text/plain; charset="UTF-8"

Thanks you! That was exactly what I was looking for!

On Sun, 3 May 2020, 15:28 Andrea Galbusera, <gizero@gmail.com> wrote:

> Hi Gianni,
>
> On Sat, May 2, 2020 at 5:51 PM Gianni Pino <giannipinounavolta@gmail.com>
> wrote:
> >
> > Hi everyone,
> >
> > last month the poky version Dunfell was released. How long does it take
> to be a stable release?
>
> I was a little bit "away" from the list, but I'll try to answer your
> question anyway, which led me the occasion to go through some email
> backlog and to read updated wiki pages (see references below) on the
> topic as well. Happy to be corrected by anyone here with more insight.
>
> This is how it worked before Dunfell release, up to Zeus (3.0.x): the
> yocto project released on an approximately six month schedule. Once
> released, a new version entered the "stable" support level for 1-2
> years. After this maintenance window expired, stable branches moved to
> a "community backed" support level, before going EOL and fading out.
> Even though the release frequency haven't changed, last fall the Yocto
> Project decided for introducing a new "support level" for some of its
> releases which is called "Long Term Stable" (LTS). "Stable" releases
> are now maintained for a shorter period of time (7 months) before
> moving to "community only" support. LTSs, instead, will receive
> support for 2 years. There's a lot of commitment behind maintaining
> releases and the Project wanted to better distribute the effort with
> more emphasis on a less frequent, but longer supported selection of
> releases. Dunfell (3.1) is the first one to be declared as LTS.
>
> To answer your original question, "stable" and "long term stable" are
> mutually exclusive and they specify how long a release will be
> supported for (LTS being itself stable by definition). That said,
> Dunfell will technically never be labeled as a "stable" release, since
> it's already an LTS, but, of course, it is by no mean less stable
> than, i.e. Zeus. So maybe you should be more interested in asking "for
> how long will Dunfell be in LTS before moving into community"?
> Moreover, if you have to choose a release to base a new project on (or
> to migrate an existing one as well), beside being the latest (which
> already should be your best bet), for the fact of being an LTS,
> Dunfell will definitely be the one to pick.
>
> I suggest you go through [1] and [2] for more details and maybe [3] as
> well, if interested in historical perspective of how the LTS idea came
> about.
>
> [1] https://wiki.yoctoproject.org/wiki/Releases
> [2] https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS
> [3] https://wiki.yoctoproject.org/wiki/LTS_Background
>
> Hope this helps clarifying releases plans and maintenance windows for
> the project.
> Regards
> 
>

--00000000000060e6f105a4be861c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks you! That was exactly what I was looking for!</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, 3 May 2020, 15:28 Andrea Galbusera, &lt;<a href=3D"mailto:gizero@gmail.c=
om">gizero@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Hi Gianni,<br>
<br>
On Sat, May 2, 2020 at 5:51 PM Gianni Pino &lt;<a href=3D"mailto:giannipin=
ounavolta@gmail.com" target=3D"_blank" rel=3D"noreferrer">giannipinounavolt=
a@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; last month the poky version Dunfell was released. How long does it ta=
ke to be a stable release?<br>
<br>
I was a little bit &quot;away&quot; from the list, but I&#39;ll try to ans=
wer your<br>
question anyway, which led me the occasion to go through some email<br>
backlog and to read updated wiki pages (see references below) on the<br>
topic as well. Happy to be corrected by anyone here with more insight.<br>
<br>
This is how it worked before Dunfell release, up to Zeus (3.0.x): the<br>
yocto project released on an approximately six month schedule. Once<br>
released, a new version entered the &quot;stable&quot; support level for 1=
-2<br>
years. After this maintenance window expired, stable branches moved to<br>
a &quot;community backed&quot; support level, before going EOL and fading =
out.<br>
Even though the release frequency haven&#39;t changed, last fall the Yocto=
<br>
Project decided for introducing a new &quot;support level&quot; for some o=
f its<br>
releases which is called &quot;Long Term Stable&quot; (LTS). &quot;Stable&=
quot; releases<br>
are now maintained for a shorter period of time (7 months) before<br>
moving to &quot;community only&quot; support. LTSs, instead, will receive<=
br>
support for 2 years. There&#39;s a lot of commitment behind maintaining<br=
>
releases and the Project wanted to better distribute the effort with<br>
more emphasis on a less frequent, but longer supported selection of<br>
releases. Dunfell (3.1) is the first one to be declared as LTS.<br>
<br>
To answer your original question, &quot;stable&quot; and &quot;long term s=
table&quot; are<br>
mutually exclusive and they specify how long a release will be<br>
supported for (LTS being itself stable by definition). That said,<br>
Dunfell will technically never be labeled as a &quot;stable&quot; release,=
 since<br>
it&#39;s already an LTS, but, of course, it is by no mean less stable<br>
than, i.e. Zeus. So maybe you should be more interested in asking &quot;fo=
r<br>
how long will Dunfell be in LTS before moving into community&quot;?<br>
Moreover, if you have to choose a release to base a new project on (or<br>
to migrate an existing one as well), beside being the latest (which<br>
already should be your best bet), for the fact of being an LTS,<br>
Dunfell will definitely be the one to pick.<br>
<br>
I suggest you go through [1] and [2] for more details and maybe [3] as<br>
well, if interested in historical perspective of how the LTS idea came<br>
about.<br>
<br>
[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releas=
es</a><br>
[2] <a href=3D"https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://wiki.yoctoproject.o=
rg/wiki/Stable_Release_and_LTS</a><br>
[3] <a href=3D"https://wiki.yoctoproject.org/wiki/LTS_Background" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/=
LTS_Background</a><br>
<br>
Hope this helps clarifying releases plans and maintenance windows for<br>
the project.<br>
Regards<br>
<br>
</blockquote></div>

--00000000000060e6f105a4be861c--
