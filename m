Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.3094.1598985881470439085
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 11:44:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hiGcVYCN;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: msgboardpana@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id c15so2636531wrs.11
        for <poky@lists.yoctoproject.org>; Tue, 01 Sep 2020 11:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=wtG4TcKx/Mk2vum5ClYHMpI4rGrinBxWxnJf8r1gvtU=;
        b=hiGcVYCNZXKek8NgZJW7ZG2tyN7IWcvncHm0xY6NXlsUCQ4+bSehddEZz9qf73Uon9
         ZosS40y4QOEvOxaqY7/R5nvDcnoKIcOZf5ZLOFZYdZ1SfyBt7O/PeTCYkQMj3cw5+HKx
         rZkeRIkNux1q4inBUq/nkaobLkl9Od8kCwUYAhn7E25DWAbnGw++X+wdBS9a3iUisyKW
         7/FZx6gxGM+0EuwcrH9/FrspLcohKKOayiNtLIB8NZ6VwZ/yourkUFtpHULNTrU26RsH
         LAhX0qZChj7WzDDFxJDgWQF/OkkcM7XNxajY9/03tZXcYJB/WqfQ5gJDcnulH5DO3x+t
         lpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=wtG4TcKx/Mk2vum5ClYHMpI4rGrinBxWxnJf8r1gvtU=;
        b=FEOuBj161OkZ3sw1pWujKayDo9y4fD4WyAsorqB12RgjXhq07TSc8AEg0dWhlS5FV9
         Hl77OzE1GqYsRDn7lAyXBPCvWvSQ0MdmhjpU2enlWDCO7CmYdb6VER8L2hln5f0S8XfF
         SrcdaDNZtZSrEZEXLFq7tktMe+Nfc3UAF6bn8quAjGlsJvjk+eVZhVZe0a9D/KcUeNd3
         iBKlD7TRdVVfCgW5LJ9MqYjtxk3RxCaq3ZpzIq4a7o7JhcmvJ+xvmNxTW+lwKvApp7Yk
         mSxopGLCFvaHpYt7+riEd8f9Llk3s9lHMP/NU2CLTTeRC+0WNf9pFvlLC2i3oDNO3iz5
         PniA==
X-Gm-Message-State: AOAM533KfbdL3Gpbxfiyg9ambm0fr84cpyUzqUFwV13y71asY+1xpFAz
	WMASfmbxr1q0FmPwNk6Ko4q++J1enV2Ima4TLQO/X4O4
X-Google-Smtp-Source: ABdhPJx+f2AUhIGcDskpZAPcp9Kg51SdMrazcavz8RKKxa7yjhkwfFS8YKPFkYOEOkGkaQ8uUJYmRcSAc9wsa0Ioxuc=
X-Received: by 2002:a05:6000:12c3:: with SMTP id l3mr3532648wrx.164.1598985879521;
 Tue, 01 Sep 2020 11:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJRqWa_cdQY+kPZkzN=4GVbNanJQ6E2KUKvXs0Nw-OxEgmGhow@mail.gmail.com>
 <b65a1c9c989edcb20d3f92bbc50ac504@basmevissen.nl>
In-Reply-To: <b65a1c9c989edcb20d3f92bbc50ac504@basmevissen.nl>
From: "msg board" <msgboardpana@gmail.com>
Date: Tue, 1 Sep 2020 11:44:27 -0700
Message-ID: <CAJRqWa_DckEwKVp7Ukh-SCSztL6c5iGDzuMKqj=wHCb=r2dhSA@mail.gmail.com>
Subject: Re: [poky] poky booting over PXE, but asks root user password even if debug-tweaks enabled
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000598d6305ae44e9e2"

--000000000000598d6305ae44e9e2
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 1, 2020, 12:51 AM Bas Mevissen <abuse@basmevissen.nl> wrote:

> On 2020-09-01 07:45, msg board wrote:
>
> > Hello,
> >
> > I generated a distro based on poky and am PXE booting the distro. The
> > rootfs is mounted over NFS. The same distro when installed on actual
> > device does not have password for root user. i.e. after the actual
> > hardware device has fully booted then user can type 'root' as username
> > and no password is asked for root user. (debug-tweaks is enabled in
> > local.conf)
> >
> > However, the same distro booted over PXE boot with same rootfs mounted
> > over NFS asks for password for root user. The distro has systemd as
> > init manager and many init services fail during boot when booting over
> > PXE. One such service which fails is systemd-logind.service . I wonder
> > if there is anything related to this failing service.
> >
>
> First thing that comes to mind is your NFS settings. Do you have the
> no_root_squash setting set in /etc/exports of the host?
>
> Cheers,
>
> Bas.
>
> > thank you
> > 
>



Worked like a charm..thank you

>

--000000000000598d6305ae44e9e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Sep 1, 2020, 12:51 AM Bas Mevissen &lt;<a href=
=
=3D"mailto:abuse@basmevissen.nl">abuse@basmevissen.nl</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">On 2020-09-01 07:45, msg board wrote:<br=
>
<br>
&gt; Hello,<br>
&gt; <br>
&gt; I generated a distro based on poky and am PXE booting the distro. The=
 <br>
&gt; rootfs is mounted over NFS. The same distro when installed on actual =
<br>
&gt; device does not have password for root user. i.e. after the actual <b=
r>
&gt; hardware device has fully booted then user can type &#39;root&#39; as=
 username <br>
&gt; and no password is asked for root user. (debug-tweaks is enabled in <=
br>
&gt; local.conf)<br>
&gt; <br>
&gt; However, the same distro booted over PXE boot with same rootfs mounte=
d <br>
&gt; over NFS asks for password for root user. The distro has systemd as <=
br>
&gt; init manager and many init services fail during boot when booting ove=
r <br>
&gt; PXE. One such service which fails is systemd-logind.service . I wonde=
r <br>
&gt; if there is anything related to this failing service.<br>
&gt; <br>
<br>
First thing that comes to mind is your NFS settings. Do you have the <br>
no_root_squash setting set in /etc/exports of the host?<br>
<br>
Cheers,<br>
<br>
Bas.<br>
<br>
&gt; thank you<br>
&gt; <br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Worked like a=
 charm..thank you</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000598d6305ae44e9e2--
