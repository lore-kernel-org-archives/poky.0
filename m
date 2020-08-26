Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web11.10718.1598442920556607889
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 04:55:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SSx2W6RM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id o21so1490834wmc.0
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 04:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=961F+C0oAzN6m52/vr5hwhj9GFcC1qx0Fx32Ks6HFts=;
        b=SSx2W6RMim5JYpC7soNbrxFSix8PzzUy/+Fg8/aBW96M49eiDqamQFg+BHh4zapbnB
         g3FJzIgUlEp4vUYxJYiBpSXJXMlAu3c9ov+S748oSbQO5Km4+7Jgowb4FkGDWI1+gw5+
         zCN5V06FgvdILPapsaslkTx588XPOffs20hRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=961F+C0oAzN6m52/vr5hwhj9GFcC1qx0Fx32Ks6HFts=;
        b=QaQSUrw4/zjckzp9taTPBUZwnDH07yiQbdqMl2P6C3RW+w1mHn0mbIX1fbpD99xemK
         pvso71RGtwLdEpu53vAsAE0jsJGxbuT5kUvMPXOTdyp1NjmTRlg9M9Q6ELZ//YRapkdV
         P2GSF5GQyi5+vlqg17VvMr+Rgqg781FApuYryZ6tO2fNwOpybJRzuua7HmWkjGFxkXVl
         2XAOQdSZ6u1UHLt/tzUoDIptLoVcz0TeOBHdbyVG28slqe9KubDPsIrQ4ZjsvwThIeKC
         syo1mrGvf7jUI/LVupzSU+5B7EJS8Y1WJcI60cjJzhtrqBTKW8NMOjBVjSFRgXM0TCG9
         pZQg==
X-Gm-Message-State: AOAM530H7ABVD60UUyXg5LjURSwSf2axQ9gAsUXPRRK+1ES/VCZ2YXZ7
	GV3j5PF7mrt2ogEnuUQwQfRbZA==
X-Google-Smtp-Source: ABdhPJxdk7NzxEkhXmnchUlTeYvM56s4AA088ExbbYgT318ZXoPlIMqWegaE5KBOSTeo+AtXB5eMCQ==
X-Received: by 2002:a05:600c:c7:: with SMTP id u7mr7013425wmm.135.1598442918916;
        Wed, 26 Aug 2020 04:55:18 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id g70sm5295209wmg.24.2020.08.26.04.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 04:55:18 -0700 (PDT)
Message-ID: <76f212f4f397343b36c7cf955a6b7b889859b89b.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: do not force packagegroup-core-device-devel into all qemu images
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 12:55:17 +0100
In-Reply-To: <20200826113318.14604-1-alex.kanavin@gmail.com>
References: <20200826113318.14604-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 13:33 +0200, Alexander Kanavin wrote:
> The packages in the group are not at all essential or required, 

Certainly that packagegroup is misnamed, elderly, should be in poky
rather than OE-Core and is probably not that useful any more.

> and there is no way to switch it off , if they are unwanted, other
> than create a new distro that is independent of poky.

apart from simply setting POKYQEMUDEPS = "" ?

> The group, if someone is still using it, should be added to specific
> images instead.

I do agree its likely time to retire this, I disagree with the wording
of the commit though and if we do this, we need to get rid of that
packagegroup from OE-Core as its horrible.

I'm not sure what the implications are for our testing which is my
bigger worry.

Cheers,

Richard

