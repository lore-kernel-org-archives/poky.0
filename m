Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.10713.1619188343214347658
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 07:32:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z5l2EGqt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id e7so39650313wrs.11
        for <poky@lists.yoctoproject.org>; Fri, 23 Apr 2021 07:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=6XOO5xX3HXE+PUT4u79/ipCocXNarYrkmEl0v1qnnt4=;
        b=Z5l2EGqtnt+CPnP/a5ICjlpmM986ZH9WNN5ckZ7ew3LQZbJ4XgM0/ToPBcQagy9epq
         bNNM6rhtUfEXo1dJkQw7o1epSg5meOXUDZ4coALwzZ9hieqAMrILZgx6smdUJStoaMo2
         UvILdDv7JYaS8kDMCGQdWVFXpDPVV5sZGasKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=6XOO5xX3HXE+PUT4u79/ipCocXNarYrkmEl0v1qnnt4=;
        b=NBhDQ17CcLWXf3Rd0w84CDnkPNiY+JHXEuH7zN41hx8sjQbMqocQz4tMwf6zzpmc1F
         MFd5l1Fsj2G0FV+6ZxH1C3AHqBqZMq8eqwNb9GPTzt/BFPS+ygOfFNNKLpR+jgFv6HAQ
         SAZ9Ul5/KRkVmFzWkxAWR7aPyDthQoFQ7QSKsehYNA7YrgZHLprlOJcxo9aCMwDh8jmx
         Z3jn0n+qSo3tlTp3SyLkYbP9TB7nul3ZYatvQ8GbnFdUBM3v3TP323eZyc4PEBb3/Brc
         bwyVtbjI2iNWRZKn55ljUqG9KOeGr760Qdjap9jaG1wfXmUd4nU+T04Gb20RjLZJvuDM
         yIBg==
X-Gm-Message-State: AOAM530TSihkE3woaWPmwQHr3jluQxwJEwbkNQ7yO/Rjv0QvKhqlL0JN
	mn1TIirKRhgaCyNqJLu2sAbKXw==
X-Google-Smtp-Source: ABdhPJzM3sgtZz0Hyg8PoDm80t46c9T6luhLiTvsjk/TqrdalrXLEI9k8tOOUG+GRK7AJg73L2Q31A==
X-Received: by 2002:adf:fa49:: with SMTP id y9mr5076114wrr.229.1619188341622;
        Fri, 23 Apr 2021 07:32:21 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9e5d:1acf:2dd2:29e6? ([2001:8b0:aba:5f3c:9e5d:1acf:2dd2:29e6])
        by smtp.gmail.com with ESMTPSA id h8sm7063290wmq.19.2021.04.23.07.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 07:32:21 -0700 (PDT)
Message-ID: <d261c84350b9ee7fd4bdf12cc9ebc80947c5a622.camel@linuxfoundation.org>
Subject: Re: [poky] ca-certificates busybox incompatibility
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Will Stott <w.stott@engineeredarts.co.uk>, poky@lists.yoctoproject.org
Date: Fri, 23 Apr 2021 15:32:19 +0100
In-Reply-To: <a347b2b6-3196-bb70-3cd4-99f51bb07ac9@engineeredarts.co.uk>
References: <a347b2b6-3196-bb70-3cd4-99f51bb07ac9@engineeredarts.co.uk>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-04-23 at 12:33 +0100, Will Stott wrote:
> The 
> meta/recipes-support/ca-certificates/update-ca-certificates-support-Toybox.patch 
> file replaces the use of mktemp -t with mktemp --tmpdir which is 
> incompatible with BusyBox's mktemp.
> 
> It seems to be to create compatibility with toybox - however toybox's 
> help online doesn't mention --tmpdir, only -t as used before the patch.
> 
> We've just created a bbappend to remove the patch but it seems like 
> something other people must have been coming across... it shows up like 
> this when we're using deb packages:
> 
> 
> Setting up ca-certificates (20210119-r0) ...
> mktemp: unrecognized option '--tmpdir'
> BusyBox v1.33.0 () multi-call binary.
> 
> Usage: mktemp [-dt] [-p DIR] [TEMPLATE]
> dpkg: error processing package ca-certificates (--configure):
> 
> 
> Has anyone else seen this issue? -t does seem to be deprecated in 
> coreutils but it is at least present in busybox and toybox.
> 
> Seems to me this patch could just be removed, and not cause any issues?

Sounds like it probably could/should be. Has someone asked upstream busybox 
about this? Would be useful to understand their direction here...

If they'd take a patch to use --tmpdir that would solve some of the issues.

Cheers,

Richard

