Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.2734.1642450067133271801
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jan 2022 12:07:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Oj9AYiKa;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id c36so32452187uae.13
        for <poky@lists.yoctoproject.org>; Mon, 17 Jan 2022 12:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=twW7Z/p46DMQ9hTc43iILO5yuFRBpkSHAN7uaM2SveI=;
        b=Oj9AYiKazDeHAhxprB+mLhxh0y51XbDirL+ztzCeApyNpdmjDJHJsOhEqLn6nFwzFB
         HtuU1MixLLeBW3n8S3cVjpSI8I8w6x5feNqS5rkiU7bQ5H5lw4vc22VtoSCGt4hUySad
         iyKjr1yv08/oaF/dEdlhRJ5e9Ol2NZ23IIupfqau+McLhUSCkf/JYobV3Mt+RMQs73Xy
         +wQeDUU2L/9NWDfytDgIb/LXSOh5bKlwKV7lBq+iYCuyzfnTbVKJvtYqVhUjztVCWHRy
         8127E0mX0KcT8FDlz1KOAdV+quZUxZlYPdhAHKaRYZI94SjNxs5kKy4/vH0ibOGVZKmX
         49tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=twW7Z/p46DMQ9hTc43iILO5yuFRBpkSHAN7uaM2SveI=;
        b=G6ylXM9+36pVRn01N3CIUQzBMUsMpCrGra4tyvCS/c/11k+3oA/ff0ODlSO6nK7eDe
         WPdy9JrEzbCHlAlmNaPSSoWpA/nPbkD57Y3tDdnyWZaS/Z66WQZHMJ68NDxPRoyqCFhh
         UEAdkHNvzxHaCA/6nQJ+AiPyG+uJRJh3fnAbKEdiqkxh1Q4SajRCLLOwVNRy8Q7G2Df+
         MRasCAjqr+MCk0EYzA1qXLvN/D6F76eHduK2akn8uOqC6fEAIHSu5ysHQ6kcdPtJsQh8
         MQP88OPrDfl+5S+V0rpNGIBOxaQWSOu2D0PAt3mCpj5odaUWJS0hJfjSeOs0di1LJAIE
         ojSQ==
X-Gm-Message-State: AOAM5310MND44Bp/sFmN0BZ+sDJcc70LFcmPXjvGWaU2RZcT+k8ILGyX
	I5WmAU4BR8q8y3TKb2LurvQ1RxRzP22Gdz6lbSI=
X-Google-Smtp-Source: ABdhPJyOCzINf0JbQ7PMtAEpo9lIA1uFUufopVFJ9aG9l9cxgHQH8MXrkL/N7h+sBRkPDAVZcsXsIGhIiPWFwioQCm8=
X-Received: by 2002:a67:c40e:: with SMTP id c14mr7523626vsk.73.1642450066281;
 Mon, 17 Jan 2022 12:07:46 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
In-Reply-To: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Jan 2022 21:07:35 +0100
Message-ID: <CANNYZj_-9T=aw5CAvw1MH4kC6SJaNSkgsGoxb9-WqF4775NzMw@mail.gmail.com>
Subject: Re: poky: request to backport ae219e1f74600 to dunfell
To: Fabio Estevam <festevam@gmail.com>
Cc: poky@lists.yoctoproject.org, Marek Vasut <marex@denx.de>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000c3185505d5ccb487"

--000000000000c3185505d5ccb487
Content-Type: text/plain; charset="UTF-8"

Is the distro on the host machine marked as compatible with dunfell in
poky.conf?

Alex

On Mon, 17 Jan 2022 at 20:54, Fabio Estevam <festevam@gmail.com> wrote:

> Hi,
>
> On a host machine with Python 3.10 I am seeing the following error on
> Dunfell:
>
> File "/work/festevam/conp_embedded/poky/bitbake/lib/bb/compat.py",
> line 7, in <module>
>     from collections import MutableMapping, KeysView, ValuesView,
> ItemsView, OrderedDict
> ImportError: cannot import name 'MutableMapping' from 'collections'
> (/usr/lib64/python3.10/collections/__init__.py)
> 2022-01-17 17:33:36 - ERROR    - Command returned non-zero exit status 1
>
> Can the commit below:
>
> https://git.openembedded.org/bitbake/commit/?id=ae219e1f7460077f4492b31ac91cef4cf9b17277
>
> be backported to bitbake in poky dunfell, please?
>
> KeysView, ValuesView, ItemsView, and OrderedDict do not exist in
> master, so the backport is not so trivial.
>
> Thanks,
>
> Fabio Estevam
>

--000000000000c3185505d5ccb487
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is the distro on the host machine marked as compatibl=
e with dunfell in poky.conf?<br></div><div><br></div><div>Alex<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, 17 Jan 2022 at 20:54, Fabio Estevam &lt;<a href=3D"mailto:festevam@gma=
il.com">festevam@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hi,<br>
<br>
On a host machine with Python 3.10 I am seeing the following error on Dunfe=
ll:<br>
<br>
File &quot;/work/festevam/conp_embedded/poky/bitbake/lib/bb/compat.py&quot;=
,<br>
line 7, in &lt;module&gt;<br>
=C2=A0 =C2=A0 from collections import MutableMapping, KeysView, ValuesView,=
<br>
ItemsView, OrderedDict<br>
ImportError: cannot import name &#39;MutableMapping&#39; from &#39;collecti=
ons&#39;<br>
(/usr/lib64/python3.10/collections/__init__.py)<br>
2022-01-17 17:33:36 - ERROR=C2=A0 =C2=A0 - Command returned non-zero exit s=
tatus 1<br>
<br>
Can the commit below:<br>
<a href=3D"https://git.openembedded.org/bitbake/commit/?id=3Dae219e1f746007=
7f4492b31ac91cef4cf9b17277" rel=3D"noreferrer" target=3D"_blank">https://gi=
t.openembedded.org/bitbake/commit/?id=3Dae219e1f7460077f4492b31ac91cef4cf9b=
17277</a><br>
<br>
be backported to bitbake in poky dunfell, please?<br>
<br>
KeysView, ValuesView, ItemsView, and OrderedDict do not exist in<br>
master, so the backport is not so trivial.<br>
<br>
Thanks,<br>
<br>
Fabio Estevam<br>
</blockquote></div>

--000000000000c3185505d5ccb487--
