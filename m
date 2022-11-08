Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web11.680.1667931598629896041
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Nov 2022 10:19:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Jd9zUhpL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.166.182, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-il1-f182.google.com with SMTP id e19so7887300ili.4
        for <poky@lists.yoctoproject.org>; Tue, 08 Nov 2022 10:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/id4DLLuBLc17ISL+jDN5nEZLhaj2wjb3vBJNPPIkK0=;
        b=Jd9zUhpLkFNg+EDWkb6XNv7UljLnAaBe/6iXzFwfzvzCWza5ly47UsfQmvVC66IKg+
         W9SMpjAkH8yvLhhEZnaCU2KVg8ErVtsBnI8OKsqKViDPniwhG9KseEqj62RPVGjOI2qN
         7aqOeelndt9/xM7drR222YVK3XVQWmFx3qpjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/id4DLLuBLc17ISL+jDN5nEZLhaj2wjb3vBJNPPIkK0=;
        b=DqkOz9/tiIGoLzlxQl3pAhlgZxVQoWWbVLl/hcpELPc2yNnKbO4jdiWYQvrjH1fQn9
         lOhNspQLvmyvLs5D/+8cMQK5BpCuJljqKNJBHXeApUuIpnrbpH6OdV/sv3Z8/4tFAzwj
         UWJhYmV3JVlA/P8qHyxYRCXATkyfkRT72WdY+/CWCWWlOq7EQcmLLSmMXao1+uxDBfl1
         nSXX4+ckHd4k+YMZnCxkKAZoBsKysz9dji30pluRUMU4VF3XhuUgjW1tul4lAkdBPQng
         ocvteMBJMH9Tuz9VWTZ2bwlkqIkzPvtoSwRQAfLv0coFe9LnX2uFj3UqhmyFgUrUaGUr
         qxAQ==
X-Gm-Message-State: ACrzQf0/wWYDKxe3Qk+ZOAWYeUgQ7zLyeQE9UoxWhMIPkbuJ6eNxx+4l
	pLeQxMk86xfCCLS0QyFotvCfla+9PVKcyuoekaBEFg==
X-Google-Smtp-Source: AMsMyM4wq0JrPo6Gszh3SHe21nJL4VKd6wINypiSeNpaKJr2/2jlODrFDJqUSPGfIIJDDRBl6/GlIIOMDSa+FDAXLag=
X-Received: by 2002:a05:6e02:4c1:b0:300:c63a:796c with SMTP id
 f1-20020a056e0204c100b00300c63a796cmr786773ils.43.1667931597779; Tue, 08 Nov
 2022 10:19:57 -0800 (PST)
MIME-Version: 1.0
References: <892dcabfb09d4ec283fb25acacd4eff1@axis.com> <7ca6ed75-9018-6731-d5c9-c642d6364ef4@bootlin.com>
In-Reply-To: <7ca6ed75-9018-6731-d5c9-c642d6364ef4@bootlin.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 8 Nov 2022 10:19:47 -0800
Message-ID: <CADfgfoYo2dqmiucxmeHvdGJh1x09EnF+mh6VS6K7fdKX_pPbiA@mail.gmail.com>
Subject: Re: [poky] No poky on lore.kernel.org?
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000654e5705ecf99687"

--000000000000654e5705ecf99687
Content-Type: text/plain; charset="UTF-8"

Only lists that are used by https://patchwork.yoctoproject.org/ are on
lore.kernel.org. You are welcome to request the addition of
poky@lists.yoctoproject.org. I'm curious why you were looking for it there.
Perhaps we should consider adding other lists as well?

On Tue, Nov 8, 2022 at 9:39 AM Michael Opdenacker <
michael.opdenacker@bootlin.com> wrote:

> Hi Peter
>
> On 11/3/22 02:15, Peter Kjellerstedt wrote:
> > Is there any reason poky@lists.yoctoproject.org is not on
> lore.kernel.org,
> > or was it just forgotten?
>
>
> I assume this was just an oversight.
> I can take care of it (https://korg.docs.kernel.org/lore.html), unless
> someone else wants to.
>
> Cheers,
> Michael.
> --
>
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000654e5705ecf99687
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Only lists that are used by=C2=A0<a href=3D"https://patchw=
ork.yoctoproject.org/">https://patchwork.yoctoproject.org/</a> are on <a hr=
ef=3D"http://lore.kernel.org">lore.kernel.org</a>. You are welcome to reque=
st the addition of <a href=3D"mailto:poky@lists.yoctoproject.org">poky@list=
s.yoctoproject.org</a>. I&#39;m curious why you were looking for it there. =
Perhaps we should consider adding other lists as well?</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 8, 2022 =
at 9:39 AM Michael Opdenacker &lt;<a href=3D"mailto:michael.opdenacker@boot=
lin.com">michael.opdenacker@bootlin.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hi Peter<br>
<br>
On 11/3/22 02:15, Peter Kjellerstedt wrote:<br>
&gt; Is there any reason <a href=3D"mailto:poky@lists.yoctoproject.org" tar=
get=3D"_blank">poky@lists.yoctoproject.org</a> is not on <a href=3D"http://=
lore.kernel.org" rel=3D"noreferrer" target=3D"_blank">lore.kernel.org</a>,<=
br>
&gt; or was it just forgotten?<br>
<br>
<br>
I assume this was just an oversight.<br>
I can take care of it (<a href=3D"https://korg.docs.kernel.org/lore.html" r=
el=3D"noreferrer" target=3D"_blank">https://korg.docs.kernel.org/lore.html<=
/a>), unless <br>
someone else wants to.<br>
<br>
Cheers,<br>
Michael.<br>
-- <br>
<br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--000000000000654e5705ecf99687--
