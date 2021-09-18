Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web08.1664.1631988026463847696
 for <poky@lists.yoctoproject.org>;
 Sat, 18 Sep 2021 11:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bsV43EAs;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id a194-20020a1c98cb000000b0030b41ac389fso4359988wme.2
        for <poky@lists.yoctoproject.org>; Sat, 18 Sep 2021 11:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=DTauN/5Rhb+nAlp54K0Ir+h6faE9oyrsbgu204N2Ubw=;
        b=bsV43EAsoHH/JPc9dpnjMrqfXCzY0Bue/tetxNFv7xuxoSuXrJYUbV6fYY+9awQuD0
         224acb8KccmG/TfczKdEUm5zFTMLHIkitbV71hjFm5B8jAYcEKvlkK8KDf6PEZiaoiAk
         XuPkCs2fHQy+kIPjAwefjq/FNc4bwnpU97zj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=DTauN/5Rhb+nAlp54K0Ir+h6faE9oyrsbgu204N2Ubw=;
        b=abD9qT4BCIa4U6668IOaMxbSmyAikzgEv+8GG382pU0EwTMMjbfOlAFF7KVGagKBu0
         4fZ6XR24IRZSCBFPOkcFpgaTItLlpCcAqcA7YDuy07ui/LYKgzUjweXCyaGAJiYOk2eA
         581z4gT6KJeyrmMiypEBoIXpk70jQ2AYj3CV6wV57oz9NSTi8igfkMkmJKEc3fnV9/OF
         0yqIQpckDy2OI6IXpAW7NU5eyMM1zyCq3CYXd2HmefjBw3AS62//Id9NME/E5anFc+Az
         klvc8kid6d5PtLEBTtku7YhoWlA5icAcd+9UtzfFc8VuEdYYGqZfdYe0FSS1Ixfxuu7N
         VVXw==
X-Gm-Message-State: AOAM530bCcM2FcU7yMH/uTIa+NRQ9wnKHAGr5dTohM/zpAP2AN7KB865
	Y1yriG4FzvalwYKie4QG3Hv+KA==
X-Google-Smtp-Source: ABdhPJwFcGaesMWWAD/fH4LGKvlBXMhGvy3ZvX7TLAebJhguz6qeGUalMj4iSO4hH7lx+nkD3WYwnw==
X-Received: by 2002:a1c:a942:: with SMTP id s63mr21044022wme.45.1631988024937;
        Sat, 18 Sep 2021 11:00:24 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.config (5751ab90.skybroadband.com. [87.81.171.144])
        by smtp.gmail.com with ESMTPSA id u23sm13486224wmc.24.2021.09.18.11.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Sep 2021 11:00:24 -0700 (PDT)
Message-ID: <49a713b084d9dded441000550f79960b927cc198.camel@linuxfoundation.org>
Subject: Re: [poky] Hard to read error for multiconfig starting with a number
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: jaskij <jaskij@gmail.com>, poky@lists.yoctoproject.org
Date: Sat, 18 Sep 2021 19:00:23 +0100
In-Reply-To: <CAGRymWVmn2ad+kUqJKpcx=O39UGJ7809bDikC__WMrLjw52TVw@mail.gmail.com>
References: 
	<CAGRymWVmn2ad+kUqJKpcx=O39UGJ7809bDikC__WMrLjw52TVw@mail.gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-09-17 at 23:19 +0200, jaskij wrote:
> When moving from Dunfell to Hardknott, I got a somewhat cryptic error message:
> 
> ```
> ERROR: Unable to register event handler '504sstate_eventhandler_stalesstate':
> Traceback (most recent call last):
>   File "/home/jaskij/yocto/layers/poky/meta/classes/sstate.bbclass", line 1
>     def 504sstate_eventhandler_stalesstate(e):
> ```
> 
> As it turned out, one of my multiconfigs was named "504". Seems like there's a
> function declared with a name starting with my multiconfig name.
> After consulting on Matrix, RP pointed out this patch as the source:
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=8b792d4f75b451f9e08fdb13464a0b66c11bc075
> 
> Preferred behavior would probably be adding a check and returning a human-
> readable error earlier in the process.

Thanks for the report, I agree this should give a better error.

I've sent a patch to bitbake-devel which does that and queued
it in master-next.

Cheers,

Richard

