Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
 by mx.groups.io with SMTP id smtpd.web11.16422.1605653588490621316
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 14:53:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QifhDvi8;
 spf=pass (domain: gmail.com, ip: 209.85.222.195, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f195.google.com with SMTP id l2so22681210qkf.0
        for <poky@lists.yoctoproject.org>; Tue, 17 Nov 2020 14:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3D7/PIAIVg1KyAz/E/6Hn8rJN43UVEtWFLGwssK/Dcg=;
        b=QifhDvi8E7dmTOyd1FlQtBjM7xlbCcH/Tc0/F+UWJ/jG8ZXH3yN/y+3NTcadEggJZM
         be6CZ48WPA8WipMENHRapHB64kEUQhAF8V+1WStlqPjj+4epos/H+ka8cB8/MqJZ2knx
         6pTMdo4p6U5hsXAyy7f8DNVbLoY5GPsYiYD7IB6xWZgo0YHOPlBcq1bg5Z6RcXNJ1Qgv
         GMqZr3ht1QYy1CEg+cfSr1ApOCr7JlH4+u3OnggLkO6BRXiGCdSJVtSJyElRC5ftrQ81
         yRUju2T1/KHAdMZyHB/Rc/nJWjSclh3pLXo4nKeE/sXWDwcqeSsDihIL3MZKMj1W4Zoh
         dllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3D7/PIAIVg1KyAz/E/6Hn8rJN43UVEtWFLGwssK/Dcg=;
        b=J6I9S+z1CY8B4h6FKkpn/09TGVsQC0ouGzWDsyD03kMfjhLik3MUM58XOgBU9Fr/7h
         e7CeEy5jodL1PiwMpSwNon53TSrif70q0FXTxIqewx12qW/efsnYPXzL7n3VHClh6vFV
         CpGCRAWF+DFfq7QftSLycf3r+e7sh4EfsqEfmbazhyoADr2DWzPHqCTtO3e1MFD84Csi
         BREz+qcMNyQibtmNThi4W9YCQY/NWjN3e2WCqljjq51vvOsFku5ckkHpEDcdabOZY7t6
         PeQvzc2fdP6TUpp937Zv7awf+TDhGyvtcbcl6ibaDgmkmBNnqxgGm/CXkSr69ixjnjnL
         NQBA==
X-Gm-Message-State: AOAM533LpgZe6DllmFCSAhNXtzm5vJspvoD0pd1Pd4945qTtF2nhRQfb
	ze9iLkiqq6ElcsyTmd0WVxQpbfSUub4S6BBPkzA=
X-Google-Smtp-Source: ABdhPJwEI8gb95VBq2rMo4e+9FtXUclPzIJlLtxX0i7YacuAYyGyje8orCGYB8i51nuVoSxjlMvmsaKmt8KFHU1E7zM=
X-Received: by 2002:a37:9441:: with SMTP id w62mr2069201qkd.474.1605653587648;
 Tue, 17 Nov 2020 14:53:07 -0800 (PST)
MIME-Version: 1.0
References: <1647D622A62A0183.6873@lists.yoctoproject.org> <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
 <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
 <3ea5615c-f410-edf5-f042-7d7eff537324@kernel.org> <180fe413f3599b58f37414351653b54edc244aec.camel@linuxfoundation.org>
 <516dac1a-ac23-467e-57f0-cd65a917ce8b@kernel.org>
In-Reply-To: <516dac1a-ac23-467e-57f0-cd65a917ce8b@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Nov 2020 14:52:56 -0800
Message-ID: <CAMKF1sphg-vMvT0_3bR-eOoBpJihtJ-wF3+_LKar1iXrP-DOvQ@mail.gmail.com>
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b9684705b4555b50"

--000000000000b9684705b4555b50
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 17, 2020 at 2:51 PM Sinan Kaya <okaya@kernel.org> wrote:

> +Khem,
>
> On 11/17/2020 5:46 PM, Richard Purdie wrote:
> > On Tue, 2020-11-17 at 10:51 -0500, Sinan Kaya wrote:
> >> On 11/17/2020 10:49 AM, Richard Purdie wrote:
> >>>> How is v7 looking?
> >>>>
> >>>> It built for me yesterday.
> >>> This version did pass on the autobuilder :)
> >>
> >> Awesome, thanks.
> >
> > Just to be clear, was the plan to merge this, or create an inc file in
> > OE-Core which poky-tiny then includes? I wasn't sure what the end
> > result of the discussion was...
>
> I think it was both to create an inc file to be used by other distros
> as well as add to tiny distro with a require statement.
>
> I followed the same design pattern as lto. Let me know if you need me
> to refactor something.


Sounds good to me include file in Oe core and a require statement in tiny
distro config

>
>
> >
> > Cheers,
> >
> > Richard
> >
>
>

--000000000000b9684705b4555b50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Nov 17, 2020 at 2:51 PM Sinan Kaya &lt;<a href=3D"m=
ailto:okaya@kernel.org">okaya@kernel.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">+Khem,<br>
<br>
On 11/17/2020 5:46 PM, Richard Purdie wrote:<br>
&gt; On Tue, 2020-11-17 at 10:51 -0500, Sinan Kaya wrote:<br>
&gt;&gt; On 11/17/2020 10:49 AM, Richard Purdie wrote:<br>
&gt;&gt;&gt;&gt; How is v7 looking?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; It built for me yesterday.<br>
&gt;&gt;&gt; This version did pass on the autobuilder :)<br>
&gt;&gt;<br>
&gt;&gt; Awesome, thanks.<br>
&gt; <br>
&gt; Just to be clear, was the plan to merge this, or create an inc file in=
<br>
&gt; OE-Core which poky-tiny then includes? I wasn&#39;t sure what the end<=
br>
&gt; result of the discussion was...<br>
<br>
I think it was both to create an inc file to be used by other distros<br>
as well as add to tiny distro with a require statement.<br>
<br>
I followed the same design pattern as lto. Let me know if you need me<br>
to refactor something.</blockquote><div dir=3D"auto"><br></div><div dir=3D"=
auto">Sounds good to me include file in Oe core and a require statement in =
tiny distro config=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><=
br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
&gt; <br>
<br>
</blockquote></div></div>

--000000000000b9684705b4555b50--
