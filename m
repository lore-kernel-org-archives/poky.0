Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.6362.1657204749163898212
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 07:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lI0aGCWF;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id p17so1242972qkj.10
        for <poky@lists.yoctoproject.org>; Thu, 07 Jul 2022 07:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k4DRfZqf/w7U397KBSLzYQBOqKZSEKSYksTM4+R5vJ8=;
        b=lI0aGCWFRL04QN72fWX1PBBWOiisWhQSB4eTyWR6lyMUOFu0iX3T4mhIKMXyZTEa+J
         KVnwlIlMowjNAuv22/A7D82lv83NV/QeZi00rl8IIrFq7JxxlZJrvlumOFL/Nsl0YDBQ
         Yx+1VSML66jWL9kd36utC0cR/UDY/+u6Jie84V5lKq/rMkHdHC9eKukS0OlvGRh+sKiP
         eE0RvkiEsbWSyd6BmlP+GfPgYLDo7wtMwBvQMaJP+z1ef/pW5DSa0QH9io/YJWoGv2gG
         FueaUiPDz5lhJG8WNqkBEexWuy72BYn3OXJtAMTogsRap9O+MS243A45LnWEbeEvplMg
         0q8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k4DRfZqf/w7U397KBSLzYQBOqKZSEKSYksTM4+R5vJ8=;
        b=QmHw/vxV4YTOslZDovaQeAZiIyABx/901r6HRMKKY4lRSzTKn8tyTatNPRr4r4TPBV
         f9bxqaYdzIANq0uSdKQuGBEIUQ3brqruwhrYRf9wVcu3nDRfhV5dpd8e41VPEz+ObB+I
         MSIsWMxgKYPYzJOYzItTMCL7ZmA8n5+dWh+tmqgN07lM7WHZflKxz8yYR3fTSoAACzLO
         /0HN9+wXCFs2R+qoWRcb9L6XC/aT3W6EYJPyWGDX/VR/Zv985jvZraQwhORc0HRb7J8/
         GOYXYzVesvs4gkTGLhRdIimkTTK+Z+ks4MrZCD7Bbyyp3O4mpYEI6GOxG4cDLyXyUuGs
         71mg==
X-Gm-Message-State: AJIora9fqlahcMjHOuAp34CPVvZOsx8kwJAw7onVUsQlOkbhHh1jynvS
	oyZtvMrlN2kdwQhsY2qv0JpsPwMBmq+pdzhH4xs=
X-Google-Smtp-Source: AGRyM1tkwvNxUTcLeSRtRLDt6i8I4w4GMSJEw8qj9pgi1BUmQsWqWRGhMINj/awHMYG10zk7Bf/1I276E/JbGYCN+zM=
X-Received: by 2002:a37:a215:0:b0:6af:cf8:dda7 with SMTP id
 l21-20020a37a215000000b006af0cf8dda7mr31440285qke.180.1657204747913; Thu, 07
 Jul 2022 07:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220617071314.3362109-1-kayo@illumium.org> <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
 <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li>
In-Reply-To: <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 7 Jul 2022 10:38:41 -0400
Message-ID: <CAMKF1spPwEDiMqwzMK9cz2NGZ-xtZLSnG0A14P+YimppMQBdPA@mail.gmail.com>
Subject: Re: [poky] net-snmp pcilib error
To: Steve <star@gmx.li>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 7, 2022 at 6:41 AM Steve <star@gmx.li> wrote:
>
> I get error (pcilib: Cannot open /proc/bus/pci) when starting.
> I found a few matches but seems that this should be resolved if no PCI
> is available. Maybe I did something wrong and have to configure the
> recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I found no
> indication to pci.
>
> I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to get
> rid of this nasty message?
> Or other way asked - how to configure it so that it doesn't think it has
> PCI? I am sure, I will not use it.

Is this happening when using net-snmp ?

found something on stack overflow might be helpful
https://stackoverflow.com/questions/9470494/snmpd-cannot-open-proc-bus-pci?answertab=trending#tab-top
>
> Thanks
> Arno
>
>
> 
>
