Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web11.1058.1579038204471482163
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 13:43:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ch/63DK8;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: stevenrwalter@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id z12so12885366iln.11
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2020 13:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HT0DEErXLXGtbMbHVQZOkpS+zuCRkECwq0qgBfHdLq8=;
        b=ch/63DK8oZLau9UINII7gvHAXVL3NmEycRh0zK6AqHgEaIiXMNBov56ZLjFABWKzOj
         p7YA7nW/apWJfgcPbkKs9YCs2h5WAhZTAlMwW0fif2ViNu6KmR0sAsHGYio3Mc8TpwP+
         JIvKAT0c8FxsZAZR7bHGb0fAk5F478XNhAn+8I5D8J1VddljmkfUoUFNSMHUS7BP14GG
         pdiA3Nmrim6qJhu7IxWOfMHLI5d13/Da5S6xPjXPrWiNzR0QyoWqUmJc3+XA46ZEErIv
         otMxPciA+J22mGcd94uMge2XEdGIMGcbLUkiSJ/cbhkYmxLb6XqyVk61rA9MdgEjnUIq
         YnHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HT0DEErXLXGtbMbHVQZOkpS+zuCRkECwq0qgBfHdLq8=;
        b=hKOcg2ki8JV0d3LUIVGEMz07axR4RWGcqXf9fSWwLb7V02i+QVl8+uE/W7TaNTMHSn
         LplifBpOIAYqNLeTGRaZ/v3nHg55bvlBVuHWTYbNio3ouu9tyqJRjQ7U1LxgNLbIJsuW
         b3iQW80HgGjutL+crUKQ57mozQZDqoh18V9IxsOy6sguZvHtVs6JUqeXOklK+GSscvZ1
         yT+wMUtBYg5xvWNWzMen18pJ2/c+IbsvI854MhPMFV/lBh9KVAsfZAFdbOyKocW44I3j
         /XJY21Vx6+luP0FbwqrIvNDxsW1BS2dVN3tTBuNs1/NqLtGT7nurnv7+OmKVNuUQW+Ht
         nR3A==
X-Gm-Message-State: APjAAAUF33Ej1Bto4p5aOPGJ6kU9Sy6vGRSbvB9BCpkR1n/+ecTgaEzO
	Sx1sE8GcjK1wHITEIsgPVsHsuRhdJd02/FbzsUc=
X-Google-Smtp-Source: APXvYqzfmjIQjJb75KI46l09lqq0z6yuCsE4ip0LNMM4PiRLbmTY2UbjbCr/TNs5dEuiE0Oqpd7ptXZIiPsrwsTBpR8=
X-Received: by 2002:a92:5c56:: with SMTP id q83mr476238ilb.213.1579038203761;
 Tue, 14 Jan 2020 13:43:23 -0800 (PST)
MIME-Version: 1.0
References: <20200114190707.4260-1-stevenrwalter@gmail.com> <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com>
In-Reply-To: <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com>
From: "Steven Walter" <stevenrwalter@gmail.com>
Date: Tue, 14 Jan 2020 16:43:12 -0500
Message-ID: <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
To: Ross Burton <ross.burton@intel.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000038d7eb059c207b27"

--00000000000038d7eb059c207b27
Content-Type: text/plain; charset="UTF-8"

That seems... byzantine.  I don't see any repos matching that description
on git.yoctoproject.org; can you point me in the right direction so I can
generate proper git patches against those repositories?

On Tue, Jan 14, 2020 at 4:30 PM Ross Burton <ross.burton@intel.com> wrote:

> On 14/01/2020 19:07, Steven Walter wrote:
> > subversion 1.9 uses gpg to encrypt authentication details that are
> > stored in ~/.subversion.  This means that GPG_AGENT_INFO needs to be
> > available when svn is run by do_fetch, or else svn will not be able to
> > authenticate to the remote server.  Treat GPG_AGENT_INFO like
> > SSH_AUTH_SOCK, including it in the fetch environment and
> BB_ENV_EXTRAWHITE
> > ---
> >   bitbake/lib/bb/fetch2/__init__.py | 1 +
> >   meta/conf/bitbake.conf            | 2 +-
> >   scripts/oe-buildenv-internal      | 3 ++-
>
> Poky is a constructed repository, the bitbake change needs to go the the
> bitbake list and the meta/ and scripts/ changes the openembedded-core list.
>
> Ross
>
> 
>


-- 
-Steven Walter <stevenrwalter@gmail.com>

--00000000000038d7eb059c207b27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That seems... byzantine.=C2=A0 I don&#39;t see any repos m=
atching that description on <a href=3D"http://git.yoctoproject.org">git.yoc=
toproject.org</a>; can you point me in the right direction so I can generat=
e proper git patches against those repositories?<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020 at=
 4:30 PM Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burt=
on@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 14/01/2020 19:07, Steven Walter wrote:<br>
&gt; subversion 1.9 uses gpg to encrypt authentication details that are<br=
>
&gt; stored in ~/.subversion.=C2=A0 This means that GPG_AGENT_INFO needs t=
o be<br>
&gt; available when svn is run by do_fetch, or else svn will not be able t=
o<br>
&gt; authenticate to the remote server.=C2=A0 Treat GPG_AGENT_INFO like<br=
>
&gt; SSH_AUTH_SOCK, including it in the fetch environment and BB_ENV_EXTRA=
WHITE<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0bitbake/lib/bb/fetch2/__init__.py | 1 +<br>
&gt;=C2=A0 =C2=A0meta/conf/bitbake.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 | 2 +-<br>
&gt;=C2=A0 =C2=A0scripts/oe-buildenv-internal=C2=A0 =C2=A0 =C2=A0 | 3 ++-<=
br>
<br>
Poky is a constructed repository, the bitbake change needs to go the the <=
br>
bitbake list and the meta/ and scripts/ changes the openembedded-core list=
.<br>
<br>
Ross<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div>-Steven Walter &lt;<a href=3D"mailto=
:stevenrwalter@gmail.com" target=3D"_blank">stevenrwalter@gmail.com</a>&gt;=
</div></div></div>

--00000000000038d7eb059c207b27--
