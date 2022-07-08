Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.6023.1657276407815855812
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Jul 2022 03:33:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=Yb6R1E3U;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657276405;
	bh=KCo3oM4Souq1TTqoZZ/dhaB3hYWi7irkJFyzwa234cY=;
	h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
	b=Yb6R1E3UPhmeou58yQ2c/OjK7xhCvOAyrAz9ehvlRR7kppMUdXWiCNJSYMiufLZ4V
	 1osY/syyiYz4C3WMCIIrVhXjEUa+SnaGmgePrbJISkGTrWtzGib3uK3GDL0COF3RNG
	 IVpwUi5vSfn5huL2Rm8GbHT0qSgdC04n7Lq8F9Uo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
 (3c-app-gmx-bap04.server.lan [172.19.172.74]) (via HTTP); Fri, 8 Jul 2022
 12:33:25 +0200
MIME-Version: 1.0
Message-ID: <trinity-8e794c5d-9cf1-4668-9535-ce3ce476746b-1657276405497@3c-app-gmx-bap04>
From: "Steve" <star@gmx.li>
To: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Subject: Re: [poky] net-snmp pcilib error
Date: Fri, 8 Jul 2022 12:33:25 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMKF1spx_ikMdMJq3v6DcQe=3ahLuiAb=NVoa+rpRPOtWvnxRQ@mail.gmail.com>
References: <20220617071314.3362109-1-kayo@illumium.org>
 <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
 <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li>
 <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
 <929b4011-9c51-91f8-603e-4ec580bf9a50@gmx.li>
 <CAMKF1spx_ikMdMJq3v6DcQe=3ahLuiAb=NVoa+rpRPOtWvnxRQ@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Q6wjeoJAIdCVOUvYU5IfvSuYg21nDbA4t/dPGq+1DOo7gnfuNONtG5SzKOzGaEPghyFZR
 y/JEAg3scOoh7JKAy/CQS0i4Hf3dE7pAF32DanZ0Ge5WJSyKIOV4+NUWuLQQTkvv+SSXwhQNrjTG
 gldlPtPUculN0tcbO6w+EObOKvqO5Dj6gnfpJIz5lZqBqD3VcoF8TYTprxk695SuiIJ8cK8bNINj
 wqsJGUmO9zsyL5BMYPeUu49iWVASABniodOZAlA32/b+nBiJTDylstwgBmNc4xZZRDg7AlpwudgN
 hg=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/oC5Df8HpQY=:9FKXIAtFF3xoz8id8/eQ41
 LBsy5JBRi/tvEVGhKUANlL9hPtm0GCj3mgduXzANNuWf4PAREhhgMn+ElbQe1/aDACunalGVB
 Ra/qsykHDSkK6ZprgxqTHrY+arJ2+VHhyNeSaXUGRXH21u7zvP5oBkFiwg3rQKQWiXxtpdKY2
 cil+UmRDoICgiXbJtn1jtysRwQzLF0j2ER1w++7tuqZx7sAuV5ufr7WhMuKt0TFvHa4LRmG/A
 xz7QaV6qqfn+SdSZi4/nw6gg/EOlQ3NLhPmhDO0rHyf8s2BRniwwNXjr77mgdovMv+Sp8t0TZ
 KpwWhptrQbjUgGo2DyGYmtmWEstDPAhposIZXQxMd1CI0CGY12ZFLwCdbyEbyRDVnmCsgiGs1
 J7+QDHhKsTiC00+ucxKPvJJ6pWkKnAtAyhy31gsflakPTLDr2DRnChfE4Ftx+xZm6KacMmWyb
 XEO7PZVpXrfiAOtccVuCx8W4JBDeIotrszTGvPOWaX5YISW908TWUyF3qq5yTNLCUt8t3VefF
 Of0nsxKTm4uvRy9PzEM2qYy1PDN8SDbuH/v10Nw2szU3K1xtpwgUtfZCcrUZRw6BL+MMcZx4S
 q1TTkg2s3eybfLuzNEI8kwIFmxVl2je9Cl2axDtm7APKIS7zNhfAKQpY3uWx8BhZYk478xnWv
 8iHD6ZP4GNSr62Ij8Jq/+cdefaZpnMOun8+NjjtfxA0SrwCFsLcN550nx/Iurg+7Z3do8ktiq
 winOZd1cArzxifQqE1dLcmk129BOjgQGSgxdtmJqde0+zr0aZTf4KXtC18w=
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Donnerstag, 07. Juli 2022 um 19:00 Uhr
> Von: "Khem Raj" <raj.khem@gmail.com>
> An: "star" <star@gmx.li>
> Cc: "poky" <poky@lists.yoctoproject.org>
> Betreff: Re: [poky] net-snmp pcilib error
>
> On Thu, Jul 7, 2022 at 12:20 PM star <star@gmx.li> wrote:
> >
> > Am 07.07.22 um 16:38 schrieb Khem Raj:
> > > On Thu, Jul 7, 2022 at 6:41 AM Steve <star@gmx.li> wrote:
> > >>
> > >> I get error (pcilib: Cannot open /proc/bus/pci) when starting.
> > >> I found a few matches but seems that this should be resolved if no =
PCI
> > >> is available. Maybe I did something wrong and have to configure the
> > >> recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I fou=
nd no
> > >> indication to pci.
> > >>
> > >> I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to=
 get
> > >> rid of this nasty message?
> > >> Or other way asked - how to configure it so that it doesn't think i=
t has
> > >> PCI? I am sure, I will not use it.
> > >
> > > Is this happening when using net-snmp ?
> > >
> > > found something on stack overflow might be helpful
> > > https://stackoverflow.com/questions/9470494/snmpd-cannot-open-proc-b=
us-pci?answertab=3Dtrending#tab-top
> >
> > I found that too. That's how I find that define.
> > My problem is, I have no clue how to create a bbappend to patch that.
> > I mean, my ability of changing recipes are rather limited.
> > Did you read the solution - change code after configure and rebuild?
> > Don't know how to do so in my build.
> > Also the recipe depends on pcilib if I remember right...
>
> patch the header file, generate the diff. Use that patch in SRC_URI
>

That isn't as easy. That *.h file is generated only while configure (as it=
 is described in that link). That patch has to be applied after configure =
but before compile. Don't know how to do so. Usually patches will applied =
before.
