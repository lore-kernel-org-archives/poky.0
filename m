Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.21027.1636976634494921054
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 03:43:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=acqmN6Wl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id u1so30071697wru.13
        for <poky@lists.yoctoproject.org>; Mon, 15 Nov 2021 03:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=sB8gF9wNIHKKpBxINGV0ND7z6j+KUv1YDCmrT91Jbig=;
        b=acqmN6Wluw8wwqdACEJdYVxxMJ6rUwqCuYS5r8G9Eokf5AlKY55xsBqjzwyrWrB+Su
         lrkY05mZeD60sILEom32xaCJPqzScrKuYWFl1oGwQ6+DIdl2v5GNghX9PDa0DqtBkMbB
         ID44KnUbv2iPJyu6ueprlUj+bktIhuS1vqo6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sB8gF9wNIHKKpBxINGV0ND7z6j+KUv1YDCmrT91Jbig=;
        b=sUhpJe8jx4C/0DdnSEk7JDPWiA/Z4Xvxs4AIQLNMP4M57rX4lI83W5QvzK57QcwpOj
         laUgbtlPQGT5Az42XzPaT1+/I4Xhel9NQ1TdxBssQpFbb5MFK0Vrs6aH2M+QvF7EAFGg
         wDfCRzJX7mP3SshasXyEFSglE/ivaNVCPDqaYxIX+C9s4tOWTz9LJzAmyFqgA0dn22/F
         McfTVNuaVHRrosf0TXW1W7wiK82Y8pRgF8ZYjbNSI4FeG4WfZel88SDVzqAc+294WkL6
         yB+9ywU2EMXOYOoddSpYUOzntOyGI5Qdk9n2pLqm9L/9iKaaXFmxrlQ5dsZg54nuxWNk
         4o9A==
X-Gm-Message-State: AOAM530KLcjsKQwK4+p0ax2oQQgFOI1QP4cr9QjKnN5F9PmhoFbWL3dZ
	vQGJBaEJ70G+1jazZb7xHpV8rA==
X-Google-Smtp-Source: ABdhPJyG9RMXmOcV+wNtpmM4K7C/bs5X/C/LKbAiWPt6dhnB1WV7gAnBoZb2lLWDW2srGdFo4ReJOw==
X-Received: by 2002:adf:dc52:: with SMTP id m18mr36270088wrj.216.1636976633014;
        Mon, 15 Nov 2021 03:43:53 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c4af:9769:123a:c249? ([2001:8b0:aba:5f3c:c4af:9769:123a:c249])
        by smtp.gmail.com with ESMTPSA id ay21sm844956wmb.7.2021.11.15.03.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 03:43:52 -0800 (PST)
Message-ID: <47b551262b6db0c2771a037aceb257322d17eae7.camel@linuxfoundation.org>
Subject: Re: [poky] create separate tarball for /opt or /home partition
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve <star@gmx.li>, "poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Mon, 15 Nov 2021 11:43:49 +0000
In-Reply-To: <126011b7-e495-b7cf-fd75-59934c0f0f28@gmx.li>
References: <126011b7-e495-b7cf-fd75-59934c0f0f28@gmx.li>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2021-11-15 at 12:39 +0100, Steve wrote:
> Can I control Poky/Yocto in a way to create not just a single rootfs but
> lets say 3 tarballs, one for / /opt and /home? And if so - how?
> I know wks can be scripted, but that's not creating the splitted tar.bz2
> (as example), so that seem not the solution.
> Thanks in advance for any helping hint.

The output generation functions are customisable so you could replace
IMAGE_CMD:tar in image_types.bbclass with something which generated three
different tarballs for example.do_image_tar

If you wanted to do this generically where the system would then do something
with the three different pieces such as place them into separate partitions that
is where you start to need something like wic.

So your example is easily changed but your end result might not be, it all
really depends.

Cheers,

Richard

