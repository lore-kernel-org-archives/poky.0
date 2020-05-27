Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.1703.1590566420643033854
 for <poky@lists.yoctoproject.org>;
 Wed, 27 May 2020 01:00:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F//ZMhHk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id u188so2094173wmu.1
        for <poky@lists.yoctoproject.org>; Wed, 27 May 2020 01:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=lDFaysXEbtnzD46CZ7yqpXNuOK6Hv+4RygROqKLHM68=;
        b=F//ZMhHk5nGd2xFJ05DqiUvJH2zKpja0A+a+xPue6wxQy/q7AEAQ3CH5t8JD3VArMG
         365okyzXauZlU2mMqqS+ICv0IYQkzPuvej0Xxy2GR9VBRcSh4OOJlNJ2L7aF3fye1flj
         jd4ApoEhd6NXgBlswonDwpMzhuAdPTaLmpo3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=lDFaysXEbtnzD46CZ7yqpXNuOK6Hv+4RygROqKLHM68=;
        b=FtsmKu8UzXusRdE/PROjhkZVgJmWup1SczKfFPgUOpicQmzZplUI1gBVr6BkhzwB2w
         qPZfHC5doGx/6S/rWXJwg54LPApZhaFFGfnp3Xf8GED/JKgPTBPH9gYBb8pE+vbk8fJj
         vB6B91pMpEA4H3+y8ndxUeEomuGffRmK41nTJqGqnmltqyraYIDmv9+yBED9xqAiYzFP
         xGCqafHVv61LfapJaMKmqtAf2eAmAwiQzH+WfgA0sMc7eT4bet1qGFL/kenO2qgNwv3k
         bJJcu4AB4NtVfABb/pUfVgbNmP2Ol2xfF+ueINsgE566p8lS3wtdq2g1cCYmN1kgU/Bz
         bFwg==
X-Gm-Message-State: AOAM5326mTigBpEq+xeDmEjMvBGm7UXaRH+0uWjJ7pdbhoEBfvgpJkSE
	fIi3WTgnJTv8pF1XBISWuWE7lg==
X-Google-Smtp-Source: ABdhPJyWToZcBEoBt4zL7okvdGc2G1OxRJRwWywgq1V9M7092k89nXTAg0hkcIVltRW+EUXiG1rNJw==
X-Received: by 2002:a1c:3286:: with SMTP id y128mr3015872wmy.119.1590566419091;
        Wed, 27 May 2020 01:00:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id d13sm1961160wmb.39.2020.05.27.01.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 01:00:18 -0700 (PDT)
Message-ID: <622f7d6b61d769259883ec89b815c2966ac6c5d0.camel@linuxfoundation.org>
Subject: Re: [poky] about when poky check sstate_cache #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: zhangyifan46@huawei.com, poky@lists.yoctoproject.org
Date: Wed, 27 May 2020 09:00:17 +0100
In-Reply-To: <GPG8.1590560968516047795.1WrB@lists.yoctoproject.org>
References: <GPG8.1590560968516047795.1WrB@lists.yoctoproject.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-05-26 at 23:29 -0700, zhangyifan46@huawei.com wrote:
> I read the codes about sstate_cache. Let me briefly talk about how it
> work . I am not sure if it is right.
> Example,we have setscene tasks A_setsscene, B_setcene.
> and Task C ,D are not setscene task.
> After we bitbake something, runqueue started,and it check A , B to
> see if the sstate_caache exists and if exist, the poky does unpacking
> the cache and then ,ordinary build process starts and it will skip A
> and B.
> So checking the existence and validation of sstate_cache is before
> ordinary build process instead of right before execcuting A and B(for
> example, we have a dependency tree, A,depend on X ,checking is before
> X instead of between X and A)
> that's the result of my reading codes.

This is correct. Its because if A depends on B and A is present in the
cache, we can skip B entirely in some cases. This means the checking
has to happen at the start of the build.

>  And i did a small experienment that, in the middle of a clean
> bitbake project, i copied  all sstae_caches to the sstate_cache
> directory and it seemed the bitbake skips no task and unpacking did
> not happen.

Correct.

> Finally, i have a question. Can we move the checking and unpacking
> to, like the example above, right before executing A ,between X and
> A. it means a lot to me. Cause the sharing of sstate_cache may be
> helpful to a more efficent parallel make(instead of just parallel
> make gcc jobs)

You can share the sstate cache directory amongst multiple machines over
NFS. The dependency cannot be moved just before A though for the reason
I mention above.

Cheers,

Richard

