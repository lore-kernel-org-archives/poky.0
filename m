Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web09.176.1657213282224340855
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 10:01:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ofe3u7Oa;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id z13so23614869qts.12
        for <poky@lists.yoctoproject.org>; Thu, 07 Jul 2022 10:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bFrXE3J6fM2jEsESS+vg+ehqBhjFUB3F/e0Kj9NAdHQ=;
        b=ofe3u7OaZ4MZVMSKO/H6wp5WxwBruUNVTk6HDPKVUNw/FmCHt1IRAfEozAUd8NApIJ
         MSvfgBIV6hykcUHK0pTolzwQhsUYRrYrezNTUj5ZSJAvTWw7Z3+DHDgRwjVwL+yid1AA
         +KelGq3bcycgrELpjkSKf5rBhj5k/1Pz2F1C9Ql6Vwdu2FfH0S0/soRUJuLlpEzJEy6e
         urTavvt029oxB6+0Vts7oIIiWGiYEp3GdI+RE/Y5kvCLFtryHj2WeWvgzzVwrso+2zDa
         +UqH8xypNULXGyf/aIf/ppcH+yIc4iOciA9REhw0tkQVL6iQskXnRdblFXn15beNji4L
         Arqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bFrXE3J6fM2jEsESS+vg+ehqBhjFUB3F/e0Kj9NAdHQ=;
        b=Ke+ry5T1DiOG5TFb/ShtvuA8HDS85tyJUiyW1KgQmzNM/zWkT4TwCW++Nndx+YYZ2a
         s9lBNT78cLELfeexkl+rxa17GDY58JJcljS+a9fxgJXDyNfov+8NUOcuphK4VxKFQ/He
         eLiIbQ0RMF1Jj/5jvwraah1mmmnIOta6z4INTH/sYuXOOAzEAqlv/d0ppdm3c/R0kfdq
         V3dQSJNetN23J8njhNsBDDahrxKKnIEFEKt3aYkNLebbZRPaDvy9TUXYIzN6crPHX66D
         gmcu4dH1Gmlcyam3AURy/7CzP8FMmdUk8Ve3D2liyyykm5f7u6347ZWhmefxFvL5g9t3
         fV0A==
X-Gm-Message-State: AJIora+CWXluXkTE4GtYXrMFmqdW/2EjZFZ0gkq2xnIfXD7foUqb0dUx
	Df79h6rUNW+qjgWIDyakWqoBXbfqtOn7Aq/oAaw=
X-Google-Smtp-Source: AGRyM1ucCy8lbJ2v7dBSMC9D7RU6xo9wYMOk2y7K7k1/GvgIpceokiPnmX04rWIBwqqx5btrz3eWlvvhqCqIjZaDUXc=
X-Received: by 2002:a05:622a:110e:b0:31d:455c:bd0a with SMTP id
 e14-20020a05622a110e00b0031d455cbd0amr21737801qty.54.1657213280614; Thu, 07
 Jul 2022 10:01:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220617071314.3362109-1-kayo@illumium.org> <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
 <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li> <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
 <929b4011-9c51-91f8-603e-4ec580bf9a50@gmx.li>
In-Reply-To: <929b4011-9c51-91f8-603e-4ec580bf9a50@gmx.li>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 7 Jul 2022 13:00:53 -0400
Message-ID: <CAMKF1spx_ikMdMJq3v6DcQe=3ahLuiAb=NVoa+rpRPOtWvnxRQ@mail.gmail.com>
Subject: Re: [poky] net-snmp pcilib error
To: star <star@gmx.li>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 7, 2022 at 12:20 PM star <star@gmx.li> wrote:
>
> Am 07.07.22 um 16:38 schrieb Khem Raj:
> > On Thu, Jul 7, 2022 at 6:41 AM Steve <star@gmx.li> wrote:
> >>
> >> I get error (pcilib: Cannot open /proc/bus/pci) when starting.
> >> I found a few matches but seems that this should be resolved if no PCI
> >> is available. Maybe I did something wrong and have to configure the
> >> recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I found no
> >> indication to pci.
> >>
> >> I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to get
> >> rid of this nasty message?
> >> Or other way asked - how to configure it so that it doesn't think it has
> >> PCI? I am sure, I will not use it.
> >
> > Is this happening when using net-snmp ?
> >
> > found something on stack overflow might be helpful
> > https://stackoverflow.com/questions/9470494/snmpd-cannot-open-proc-bus-pci?answertab=trending#tab-top
>
> I found that too. That's how I find that define.
> My problem is, I have no clue how to create a bbappend to patch that.
> I mean, my ability of changing recipes are rather limited.
> Did you read the solution - change code after configure and rebuild?
> Don't know how to do so in my build.
> Also the recipe depends on pcilib if I remember right...

patch the header file, generate the diff. Use that patch in SRC_URI
