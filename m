Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web09.8124.1657289263760152874
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Jul 2022 07:07:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QhZbATLl;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id bs20so27363395qtb.11
        for <poky@lists.yoctoproject.org>; Fri, 08 Jul 2022 07:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DBxt2VnrD9R9EkS7LNozL1vE2gr1NVKLmaTNfAzuQis=;
        b=QhZbATLlaaBdBvBn+MxqyEDwBh4jC4V51QrsBQZ1PwGUcKiwjFItGEfGJIAOOtm4I1
         l83d8V6t9iFlYTW5085DHsuHR6Q2FnxPq1KpUM2u/92hBxk2OfyqPZFzjCfPxJI2H1GW
         J+wrYfB9W19jUC5vESmArgm5hvXQefDqu7VbT0BE3nWye7VPSy60fJY5DrVdPFqKfZfP
         IiMGViBXn1kyzGf6Gb5GgccSUUs7vTYVxCKJnDOUuNdYs8ZCu6lWBPSosNzGVeRuaKng
         5kZEWytqmy+He8PUoyYnQDhfKQKuqWVgEs3BUHfiAxxX+28s+be2MnXE2Psex2JoBNm5
         EtCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DBxt2VnrD9R9EkS7LNozL1vE2gr1NVKLmaTNfAzuQis=;
        b=xzecC7IJNFQDM3X0V8Zn8XgVmc9joUcMmJqiMazOi6z/xNZ/RNtX0kuY9r0/7jECrZ
         T2j3NyTmCx07RWdFnT27Up6d8x0hrWBIxEKUwFdjnq2VMZTB9TLyh6nqv4d4nFmdSKUv
         BiFc4S36KG/aBGZxGSfgw1MoQZ2ZuBUkkIUO6ZfHFPTkc4eBJeYnZ4caueYxRsEzxTxb
         ARWXKlmPqaGZ2hRmG8FDJGyPOklo5I/5BElbp55wDR8sxlr6ee96yV/1sJCo3LAZ1TJP
         +L/olJ54bfbnOR//ZNyhYMC/VECA/rdsmF+dcoIE8l10M67NOer9YE8QnqTpQtxgpPv0
         0HhA==
X-Gm-Message-State: AJIora9i/pO2pLHgtaCzyzpxcpmLXAZUKIRJq7or+yEx+Sp0teUJU2MB
	VXjCfb0wionxgPhGEslKbTw09yzLiUMqx32qR70=
X-Google-Smtp-Source: AGRyM1uMcMoUNWCX4XbpDA1Tm5Z9TgLqJLLVueoWrAc2csG0j2laJVYBRi9dYjXZlxxHwLscrWNWAQ/NzyQajPHUg6A=
X-Received: by 2002:a05:622a:13ce:b0:31a:b4ce:1679 with SMTP id
 p14-20020a05622a13ce00b0031ab4ce1679mr3129373qtk.330.1657289261781; Fri, 08
 Jul 2022 07:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220617071314.3362109-1-kayo@illumium.org> <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
 <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li> <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
 <929b4011-9c51-91f8-603e-4ec580bf9a50@gmx.li> <CAMKF1spx_ikMdMJq3v6DcQe=3ahLuiAb=NVoa+rpRPOtWvnxRQ@mail.gmail.com>
 <trinity-8e794c5d-9cf1-4668-9535-ce3ce476746b-1657276405497@3c-app-gmx-bap04>
In-Reply-To: <trinity-8e794c5d-9cf1-4668-9535-ce3ce476746b-1657276405497@3c-app-gmx-bap04>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 8 Jul 2022 10:07:30 -0400
Message-ID: <CAMKF1sqcKZ2-fpQD_j-WxB3m6YNjqQM96rvn0KX0oPdgkYvpRQ@mail.gmail.com>
Subject: Re: [poky] net-snmp pcilib error
To: star@gmx.li
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bd189b05e34bb9d2"

--000000000000bd189b05e34bb9d2
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 8, 2022 at 6:33 AM <star@gmx.li> wrote:

>
>
> > Gesendet: Donnerstag, 07. Juli 2022 um 19:00 Uhr
> > Von: "Khem Raj" <raj.khem@gmail.com>
> > An: "star" <star@gmx.li>
> > Cc: "poky" <poky@lists.yoctoproject.org>
> > Betreff: Re: [poky] net-snmp pcilib error
> >
> > On Thu, Jul 7, 2022 at 12:20 PM star <star@gmx.li> wrote:
> > >
> > > Am 07.07.22 um 16:38 schrieb Khem Raj:
> > > > On Thu, Jul 7, 2022 at 6:41 AM Steve <star@gmx.li> wrote:
> > > >>
> > > >> I get error (pcilib: Cannot open /proc/bus/pci) when starting.
> > > >> I found a few matches but seems that this should be resolved if no
> PCI
> > > >> is available. Maybe I did something wrong and have to configure the
> > > >> recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I
> found no
> > > >> indication to pci.
> > > >>
> > > >> I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to
> get
> > > >> rid of this nasty message?
> > > >> Or other way asked - how to configure it so that it doesn't think
> it has
> > > >> PCI? I am sure, I will not use it.
> > > >
> > > > Is this happening when using net-snmp ?
> > > >
> > > > found something on stack overflow might be helpful
> > > >
> https://stackoverflow.com/questions/9470494/snmpd-cannot-open-proc-bus-pci?answertab=trending#tab-top
> > >
> > > I found that too. That's how I find that define.
> > > My problem is, I have no clue how to create a bbappend to patch that.
> > > I mean, my ability of changing recipes are rather limited.
> > > Did you read the solution - change code after configure and rebuild?
> > > Don't know how to do so in my build.
> > > Also the recipe depends on pcilib if I remember right...
> >
> > patch the header file, generate the diff. Use that patch in SRC_URI
> >
>
> That isn't as easy. That *.h file is generated only while configure (as it
> is described in that link). That patch has to be applied after configure
> but before compile. Don't know how to do so. Usually patches will applied
> before.


There might be source file which is used to generate this .h file something
like .h.in or some such you can patch that one

You can also do sed operation in a do_compile prepend


>

--000000000000bd189b05e34bb9d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 8, 2022 at 6:33 AM &lt;<a href=3D"mailto:star@g=
mx.li">star@gmx.li</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
br>
<br>
&gt; Gesendet: Donnerstag, 07. Juli 2022 um 19:00 Uhr<br>
&gt; Von: &quot;Khem Raj&quot; &lt;<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; An: &quot;star&quot; &lt;<a href=3D"mailto:star@gmx.li" target=3D"_bla=
nk">star@gmx.li</a>&gt;<br>
&gt; Cc: &quot;poky&quot; &lt;<a href=3D"mailto:poky@lists.yoctoproject.org=
" target=3D"_blank">poky@lists.yoctoproject.org</a>&gt;<br>
&gt; Betreff: Re: [poky] net-snmp pcilib error<br>
&gt;<br>
&gt; On Thu, Jul 7, 2022 at 12:20 PM star &lt;<a href=3D"mailto:star@gmx.li=
" target=3D"_blank">star@gmx.li</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Am 07.07.22 um 16:38 schrieb Khem Raj:<br>
&gt; &gt; &gt; On Thu, Jul 7, 2022 at 6:41 AM Steve &lt;<a href=3D"mailto:s=
tar@gmx.li" target=3D"_blank">star@gmx.li</a>&gt; wrote:<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; I get error (pcilib: Cannot open /proc/bus/pci) when sta=
rting.<br>
&gt; &gt; &gt;&gt; I found a few matches but seems that this should be reso=
lved if no PCI<br>
&gt; &gt; &gt;&gt; is available. Maybe I did something wrong and have to co=
nfigure the<br>
&gt; &gt; &gt;&gt; recipe (kirkstone snmp 5.9.1) somehow - but I don&#39;t =
know how. I found no<br>
&gt; &gt; &gt;&gt; indication to pci.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; I found some define HAVE_PCI_LOOKUP_NAME - but how to un=
set this to get<br>
&gt; &gt; &gt;&gt; rid of this nasty message?<br>
&gt; &gt; &gt;&gt; Or other way asked - how to configure it so that it does=
n&#39;t think it has<br>
&gt; &gt; &gt;&gt; PCI? I am sure, I will not use it.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Is this happening when using net-snmp ?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; found something on stack overflow might be helpful<br>
&gt; &gt; &gt; <a href=3D"https://stackoverflow.com/questions/9470494/snmpd=
-cannot-open-proc-bus-pci?answertab=3Dtrending#tab-top" rel=3D"noreferrer" =
target=3D"_blank">https://stackoverflow.com/questions/9470494/snmpd-cannot-=
open-proc-bus-pci?answertab=3Dtrending#tab-top</a><br>
&gt; &gt;<br>
&gt; &gt; I found that too. That&#39;s how I find that define.<br>
&gt; &gt; My problem is, I have no clue how to create a bbappend to patch t=
hat.<br>
&gt; &gt; I mean, my ability of changing recipes are rather limited.<br>
&gt; &gt; Did you read the solution - change code after configure and rebui=
ld?<br>
&gt; &gt; Don&#39;t know how to do so in my build.<br>
&gt; &gt; Also the recipe depends on pcilib if I remember right...<br>
&gt;<br>
&gt; patch the header file, generate the diff. Use that patch in SRC_URI<br=
>
&gt;<br>
<br>
That isn&#39;t as easy. That *.h file is generated only while configure (as=
 it is described in that link). That patch has to be applied after configur=
e but before compile. Don&#39;t know how to do so. Usually patches will app=
lied before.</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Ther=
e might be source file which is used to generate this .h file something lik=
e .<a href=3D"http://h.in">h.in</a> or some such you can patch that one=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">You can also do sed =
operation in a do_compile prepend=C2=A0</div><div dir=3D"auto"><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex" dir=3D"auto"><br>
</blockquote></div></div>

--000000000000bd189b05e34bb9d2--
