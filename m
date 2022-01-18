Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web10.1168.1642531697044457886
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 10:48:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GvU2JtJu;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id c190so22631qkg.9
        for <poky@lists.yoctoproject.org>; Tue, 18 Jan 2022 10:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GnOm0dpaLJ9XYkrpKI4NzXojXYQNftMw9pATdSJZUn8=;
        b=GvU2JtJu2dk2ieI8Dy5hGYOI11P/tMrKcnhjYLCrXJHqCQcwRPk57Z94BB6JxRNzUT
         Y/jldevJBahlSk7nA4JoEMMtgBHvs8vM7zjS/xk9ZRFGAmbv41mVyQcsf1vA6rwJbqT0
         92VWaAhyh0m5VdTximlL3mAB5l5L6IvlYzPmJ9wM17D6raBhRPtcSrzjRgBHi3/yhkCP
         qeWfe4b0zFlVKG2zyJau8zXU2feGSwa27/jduKdJJpcEVTIG6rUV5B3VfkcPcD1HfQxJ
         V6EWRgv6VkTjui5r/8QsVHKdO+0FGxo0PTFnAbY1ocX9445X1oSBXFg67FHXdpNLxr3r
         MFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GnOm0dpaLJ9XYkrpKI4NzXojXYQNftMw9pATdSJZUn8=;
        b=PqkDTstfr5kTp3+utAR9bMj+kuXesQlwuvGEywrqICw4zLYXvp9KjViSC/63c3NvP/
         oLgifLqnqjZ7nbLCKt7DBfeSxtIJ77609Go0R3LNnXMacBIbeN0lpeSvYv3r6F8OOwYA
         j9QL+BBxdG/OanekrzMp9mLJPGZTecI9dDUaAtjR/p8CEVZmCu2a3CIPUV9ykN0uoVt2
         UvEU7ZY4Y5e1Tgy3GcVmyDJxeFXXNUhMRm6p1iDOamt+e58mia8vUGS7bGOPnt9TgqM7
         fuf1zxhTsE3GPUERsFig8OSDpreb8eOtW47YYMR51AOQ4IoJh635I4tQZZyVfjiIZv03
         WV5Q==
X-Gm-Message-State: AOAM533fNahOXeBVXQVWFghc6fcX+Cw7vFjLu4f+pR0x2HTL0AXN4Lot
	24/k+6G+6JncwrLv9ISnvHhFqf7F7oWg60R3QVM=
X-Google-Smtp-Source: ABdhPJxXPQF8Hkp6SMm5FFTL3LRkHAWb4zSfw9Df6I1CEGTUU5Xxhq7I4/7tfOkR2beRL3abTNNIxm2CfEvBelMcZCY=
X-Received: by 2002:a37:a84:: with SMTP id 126mr19042187qkk.72.1642531696065;
 Tue, 18 Jan 2022 10:48:16 -0800 (PST)
MIME-Version: 1.0
References: <Ms2l.1642490995426090014.2h8a@lists.yoctoproject.org>
In-Reply-To: <Ms2l.1642490995426090014.2h8a@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 18 Jan 2022 10:47:50 -0800
Message-ID: <CAMKF1sobNaaG1X19XhJCecPKpZEiy9OPWiufdskhdN_iNwaDXA@mail.gmail.com>
Subject: Re: [poky] RISC-V baremetal SDK how to #sdk #riscv
To: Arun Ravindran <arunlee@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 17, 2022 at 11:29 PM Arun Ravindran <arunlee@gmail.com> wrote:
>
> Hi,
>
> There is meta-riscv which supports baremetal sdk for riscv64 and riscv32. Are there any examples on how to use the generated sdk?
>
> I am able to build the sdk successfully, but not really know how to start developing apps for a bare metal usage?
>

Look into https://github.com/aehs29/baremetal-helloqemu

> regards
> Arun
> 
>
