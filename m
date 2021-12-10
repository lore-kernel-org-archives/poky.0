Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.5795.1639133881327898557
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 02:58:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112 header.b=CT8PDZfV;
 spf=pass (domain: burtonini.com, ip: 209.85.221.54, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f54.google.com with SMTP id a18so14250389wrn.6
        for <poky@lists.yoctoproject.org>; Fri, 10 Dec 2021 02:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3K6K07UdoAK/YfH1DG1lOC9ZZTdJVb1IA8QROSMM/rU=;
        b=CT8PDZfVFt4bTx52FKwo6ob86CXM8U+o6mEl8yJGYa2KGVo0qlUUQ8NeA1N2z9EK9f
         JzQghZRipoNmsCEzYRzAc+MsE+i8WMBsV5xOo2JQ8FW6OvJatbvXmVWYvm4nXhCxrC16
         sNH7NZlgf/KbZ+ddJJ+PapSFb7sV0EuBaBsqXMGGZt0G42kTOuCq8ZE4hZz5MORdwsgh
         jSt8EE0qWg2Lccc4AQP1SGeobwFH0H6VNLJ549D6rqRgSk+ub98poHcz3XsQveybM/IR
         vp01O0SIY4CTNKuR7/eOLUjX/+G+NAqcenAKw4QiWC/5WSYCFeSSfwaV187/p1CpFT+R
         3mxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3K6K07UdoAK/YfH1DG1lOC9ZZTdJVb1IA8QROSMM/rU=;
        b=VYYy9/4yFhBoRvrg0CFbHeMbnIixpwKJ98gWFEnKDIOiS5Mpbj2NlJSmnVQWVZhNpT
         mI9ZD53IJXyf7n7QgOtngRpFzVT0dmx4YKDxxvwl/igzC79n3xbyEdDLDuXzwLq54b+5
         h9QrIZFY1Cx8sIpNcDcFaacRArXGEtqIXGfUoB6o5IV4FtvqYcpjJFmb0lc/sAGHRHMY
         UGSHy3+Mlmstn/OfQ/cn6qGclwFBD1AehwycLv7uP6WIyFG9vXYAYgKR6tfvSO1JMLU5
         VH0WN/VkgR+M5nNVooEyCOJQwHajjsq82ZN2j5T1R8tmU81vrA17p5PQa1rw2cecWxlq
         /1jA==
X-Gm-Message-State: AOAM533lpOpylq1lsWrJ4+RHy0KXwwD2JIZ6MubLQFbKZdjJGbMndvUW
	9z5g2/sWQOQBt7UjLwt0+/kRpoJbKTbcgj2qD223Ag==
X-Google-Smtp-Source: ABdhPJxiiGZTq4rmXeBzFwxmFJvCTUHcvLJkwInQl+rl61TYTNTRVDLfh1mHZmTXoQpeoa1Z8D8FGnPicgN8y+vDsMM=
X-Received: by 2002:adf:fe81:: with SMTP id l1mr13349266wrr.522.1639133879628;
 Fri, 10 Dec 2021 02:57:59 -0800 (PST)
MIME-Version: 1.0
References: <CANJvwR9F1Dpw6WUwXm1vV=0V_u51Y7huoAZiBP4YpF56L_peKg@mail.gmail.com>
In-Reply-To: <CANJvwR9F1Dpw6WUwXm1vV=0V_u51Y7huoAZiBP4YpF56L_peKg@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 10 Dec 2021 10:57:18 +0000
Message-ID: <CAAnfSTtpC58iCUGto9-kmf5WDj9SVpwE0PX2HxPMjrtEURhRSg@mail.gmail.com>
Subject: Re: [poky] Linux time is initialized as build time
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 10 Dec 2021 at 09:24, Sathishkumar Duraisamy
<bewithsathish@gmail.com> wrote:
> The time in the hardware is initialized as build time. How to change this, say set it to 1970/01/01 during yocto build.

The init scripts do this by reading /etc/timestamp, so remove
rootfs_update_timestamp from ROOTFS_POSTPROCESS_COMMAND and
/etc/timestamp won't be created.

Ross
