Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.607.1597279613704503623
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 17:46:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=MPUwxi7+;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.179, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f179.google.com with SMTP id e14so2384168ybf.4
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 17:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=orjlDriJyisKHdtPMz2ubOU1+onhgQHigwOw1daSOx4=;
        b=MPUwxi7+lhUfV45Z+23NxmxhN5ofOYp2mHc2QiM3buakKpwczQCFjwARo35X5YRt/g
         NZWoijko0D6YgxlDnOpEXSqmXvrqxCe3+SCltODPknEGjeQP7Y8sqewOuZ4C1paoOG+s
         OB9AX72+/uhqZDVEt6Ln3FX1CikKXr042OKTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=orjlDriJyisKHdtPMz2ubOU1+onhgQHigwOw1daSOx4=;
        b=trKM1WPD+U073yKnG5byL+mCU5fZxwsh3LzzfkC5fiFTfVe+4FQba0Axi6q7ue0wQx
         W1LdtYjo8lCTJfMz4P0YLB+e7ImefdsKbK33V0g6ww5l6HFTCiuByRoV318OUvB35EL8
         +xc4plF5q0PopNBEHmVb3khCYqr91PYMvI/FMrcxYBooNVsrrkZpSCNRphLU3W/2h05A
         bRG6UMZ8sC/hMJhJqorZDtt+9kdXYR5FTN3Z+QoY7cwLRxq4ErTtxS0yw+kRTTsyJxlu
         830WSmWMj41qurh9s1vrsSNnX9L9UdWLJVQWG5ibAfpy2v5z4e9YS5LcG4Tr15vC3E+P
         +HtA==
X-Gm-Message-State: AOAM530bnCyeA6CPrXnjV+nqtUQDNps+XWlKZxxrnqwZKYxlI20p/Jsg
	Z/6uUPPqcuQ7MEPt0jxn2y72KSi1L9OVEWBJCztHXw==
X-Google-Smtp-Source: ABdhPJxg/OLkRvWAeKaW/mp5E37PN6nPGpcX+kcPcM6xIbPVnYQnIfCuClB7Qco0HOWSF6ZBvMFZRkOjlOy8pxYH0fY=
X-Received: by 2002:a25:5887:: with SMTP id m129mr3336399ybb.11.1597279612829;
 Wed, 12 Aug 2020 17:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
 <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com> <CANx9H-CyHBzacbPsDKPO4DpHMANRvP2_YLd3=w00NRvnuEn_Cg@mail.gmail.com>
In-Reply-To: <CANx9H-CyHBzacbPsDKPO4DpHMANRvP2_YLd3=w00NRvnuEn_Cg@mail.gmail.com>
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
Date: Wed, 12 Aug 2020 17:46:41 -0700
Message-ID: <CAHrpVsV4EpjidokvZcidNPH_mDo0pOcCRpfQN=QggS5FbwP4Dw@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Tim Orling <ticotimo@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>, 
	poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 12, 2020 at 2:00 PM Tim Orling <ticotimo@gmail.com> wrote:
>
> Did you look at meta-zephyr?
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr/
>

Hi Tim. Yes I did. We're using the zephyr classes but we're on a later
version that requires use of a bunch of python tools. Adding the
additional dependencies exposed the problem.
