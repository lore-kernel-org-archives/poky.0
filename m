Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web11.1367.1579039381981780628
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:03:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fcMF4wid;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: stevenrwalter@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id s15so13003947iln.1
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2020 14:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nHB01kiKecSOOhLjE2H7QUiujadObNactEct9xdE+b8=;
        b=fcMF4widlyKeL1ukUlw5oL/wc2XwVpnM/yJ75INwCN5xr0kX7eWcjfBtreGuoD8VfL
         lN/4do1cYh9T9JqTkJ4a1vcI3p4+y6e8PFDq3+jROAKWB0tUZU6TfZarQNWIGOGZb/o3
         GkKLFeLlyAfP13ZCCWhC3DE6DX2yvqHCFjK146JrcHFJeb3pDqHjAji8aiV+Hoa225cK
         I3kSk/9HXF3bVTpYn61H9pev5hLV/PyZw4+cf6LFM5eK9MDB+HZIt9MwMiivkiWqvudI
         rgZlAijUM5wBtL1YCf4O+H1TiFZ9m/cI1oPxb+CiYDwb9pT0sdOg8eJZ9ILFK/4i3LcL
         IjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nHB01kiKecSOOhLjE2H7QUiujadObNactEct9xdE+b8=;
        b=UHcQqgGKFyg99EO91w2DvcgvV67VIOQCNc2Q/3rDbSn8jScz5vYonQiYSOcyMMgStv
         mIXJQpONuNRQUMESmnDqCtvfUZMHcN6B0C7nxdTSb2HV9SkLkibWg1900ASK0j5a49rD
         3U+4ieR7Zf/nRgqljO0zu330KErlXA26uEa7lZNf/a5ebNvmCbaawzTI8UG8A/65WGIZ
         VEEJdx1W5Urcep/8a6e4Kjf+b10D32BGzCcykWYlO7IffqTEvaInzHV4b40KDUFkOuUK
         nN5fl8pJUhK8BD0j/MA7v9RNfAlfrY2vl7dOuF9uKrf3DKKqkwZ5X/24YbRHEjei027H
         EyKQ==
X-Gm-Message-State: APjAAAXmML5s+Dk7j1mWlrq7JNdIWebASrpOl/03ghzr/qnLUtkxFFqB
	p6gcpHo0J+xfkDSPGIiyHbyqem4IM6VKB2z2MfY=
X-Google-Smtp-Source: APXvYqwGsD4q2xoijq7vVH3E1+2y+5nXAuOMBddvg0sZUPDxAwEw9cF0Vzp0BSGy4KM21uKR010wKLvaf7auWEuDL9c=
X-Received: by 2002:a92:8309:: with SMTP id f9mr638758ild.50.1579039381413;
 Tue, 14 Jan 2020 14:03:01 -0800 (PST)
MIME-Version: 1.0
References: <20200114190707.4260-1-stevenrwalter@gmail.com>
 <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com> <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
 <7faae3ea985bc8b09af3a25e6270152b64f45677.camel@linuxfoundation.org>
In-Reply-To: <7faae3ea985bc8b09af3a25e6270152b64f45677.camel@linuxfoundation.org>
From: "Steven Walter" <stevenrwalter@gmail.com>
Date: Tue, 14 Jan 2020 17:02:50 -0500
Message-ID: <CAK8d-aLJvSHCuR751LqxnBsOysKgtB-bBxgfaQvX-U-Pwc1Udw@mail.gmail.com>
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ross Burton <ross.burton@intel.com>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006a644a059c20c120"

--0000000000006a644a059c20c120
Content-Type: text/plain; charset="UTF-8"

Thanks, Richard.  I'll re-generate the patches as suggested

On Tue, Jan 14, 2020 at 5:00 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2020-01-14 at 16:43 -0500, Steven Walter wrote:
> > That seems... byzantine.  I don't see any repos matching that
> > description on git.yoctoproject.org; can you point me in the right
> > direction so I can generate proper git patches against those
> > repositories?
>
> https://git.openembedded.org/bitbake/
> https://git.openembedded.org/openembedded-core/
>
> It should be mentioned in the README. I appreciate this is all a little
> suboptimal, there is a plan to change things but that isn't
> straightforward, there are limited resources and other bigger fires
> right now :/.
>
> Cheers,
>
> Richard
>
>

-- 
-Steven Walter <stevenrwalter@gmail.com>

--0000000000006a644a059c20c120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Richard.=C2=A0 I&#39;ll re-generate the patches as=
 suggested<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jan 14, 2020 at 5:00 PM Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Tue, 2020-01-14 at 16:43 -0500, Steven Walter wrote:<br>
&gt; That seems... byzantine.=C2=A0 I don&#39;t see any repos matching that=
<br>
&gt; description on <a href=3D"http://git.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">git.yoctoproject.org</a>; can you point me in the rig=
ht<br>
&gt; direction so I can generate proper git patches against those<br>
&gt; repositories?<br>
<br>
<a href=3D"https://git.openembedded.org/bitbake/" rel=3D"noreferrer" target=
=3D"_blank">https://git.openembedded.org/bitbake/</a><br>
<a href=3D"https://git.openembedded.org/openembedded-core/" rel=3D"noreferr=
er" target=3D"_blank">https://git.openembedded.org/openembedded-core/</a><b=
r>
<br>
It should be mentioned in the README. I appreciate this is all a little<br>
suboptimal, there is a plan to change things but that isn&#39;t<br>
straightforward, there are limited resources and other bigger fires<br>
right now :/.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>-Steven Walter &lt;<a href=3D"mailto:=
stevenrwalter@gmail.com" target=3D"_blank">stevenrwalter@gmail.com</a>&gt;<=
/div></div></div>

--0000000000006a644a059c20c120--
