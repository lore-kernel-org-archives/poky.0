Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.430.1580318808229128785
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 09:26:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzkMiPIY;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id l14so25728qvu.12
        for <poky@lists.yoctoproject.org>; Wed, 29 Jan 2020 09:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6Ouum6pnJ/6dAHucZeL/880/1SRnjMx9qM8JiEWtODM=;
        b=TzkMiPIYWaMAI/2eCDDr1jYQnGNmAjCx5b4iLNM6ZsWtjWUI0kprYnrNRwo9fPgF1j
         Pwhv6/JYcSiBuO0n8eYic3MINl7fMBW55fx2N/XIokh9YbYlsUEjZjWEZ70fDEIKpzS+
         cZ3VJuUwac/mI7kOKlh6z0yMG7q4ejd0XcQK6/aUXiL2MwlK22DiqwTx3UVgPxp7MGOh
         nWFOuPSLDAWlm0Z1MD+DF/d0TG3jp8roeBjiS6M+65/mViDbRRCHQI7qk8X+w7G+b8oq
         XAAmU+imAYTc9909j7udR339k/m6q4gtjT800o21YDMzsHu2JgtstXw+Pr54ZQsPXp5g
         5UHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6Ouum6pnJ/6dAHucZeL/880/1SRnjMx9qM8JiEWtODM=;
        b=IB6BCZinWR0Ewd5lq9VJVbbKdDfKABV9SYwcyt4roHim+qjidMJB6vFdtfQJrXptuL
         NchbZDv/Vyk4G91vLMEPubDbWnTp5LP0Lxba4bLmeNaG+aEMYw7yWFR3Jg7ZffSAsDk4
         GDho0XrjsXe2rgJXhS50IE6onlT3nnV590NPZry5cNeztMYeLWunz16dgL9Qh/xH5F7w
         ecabxaLCeZin9kED68j5TUmbw6oYgnpCMHG5W80aaj/BaroPzbQMfmPftD0wgro2vbmt
         w2RuHImZhGmm8r9qwwL31YR+1r+l8h8E/NFaSuxIEUqENmZG/EA/3S5H2hkevo6mOyHA
         rRuQ==
X-Gm-Message-State: APjAAAVPHTs3LVY6BhAaujpod5gz41VtJnd5mirh5cVK/Mn0OSbq/b0d
	vioOr5EbVGdUOuoXH2enjI2GLl9hTeBQ6I2Kj6M=
X-Google-Smtp-Source: APXvYqwR2ckomsO2u4hhi1KDTfIHzI02voYgV3FJPCRnZ+ihDE5cgy7RhVcp/ucXQOSrMTKvhsNz96a0mTc2ImNnlSE=
X-Received: by 2002:ad4:4d94:: with SMTP id cv20mr31258qvb.99.1580318807209;
 Wed, 29 Jan 2020 09:26:47 -0800 (PST)
MIME-Version: 1.0
References: <24760.1580151708027036838@lists.yoctoproject.org> <24085.1580311756325911082@lists.yoctoproject.org>
In-Reply-To: <24085.1580311756325911082@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 29 Jan 2020 09:26:29 -0800
Message-ID: <CAMKF1spZ2Le+pHHCZWugNyrYJ-9oVObnP9e9j4v2_iQwJTgDJw@mail.gmail.com>
Subject: Re: [poky] Qt sample fails to compile using meta-qt5
To: Ashish <ashish.emailaddress@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 29, 2020 at 7:29 AM Ashish <ashish.emailaddress@gmail.com> wrote:
>
> Thanks for pointer , will try and update the thread .
> Currently i am facing another issue
> https://lists.yoctoproject.org/g/poky/topic/error_guest_has_not/70243738?p=,,,100,0,0,0::recentpostdate%2Fsticky,,,100,2,0,70243738
> Will update the thread accordingly .
>

it seems you are building for x86_64 qemu
enabling kvm would make it a lot faster

https://wiki.yoctoproject.org/wiki/How_to_enable_KVM_for_Poky_qemu

> Thanks
> Ashish  
