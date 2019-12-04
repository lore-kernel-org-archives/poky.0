Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web09.7610.1575479022739424497
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 09:03:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CtxEBUk0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id p9so495985wmc.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Dec 2019 09:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=iH1BpRcINnwESq08+L5TIyWvmz3frdWmOCo90S+V5SA=;
        b=CtxEBUk0CQMijldKJZaJrSBYchg/2Ct3EBCPXFOPonAS3KVm+FqZUbt/C7LEf2PdgI
         zJCGhq6XCqHj0IXx/WKR4GG5q8DElY7rPg6MqXq/3nygyipOcZX/R+YIjRzXGFvHTP7A
         MXcQZp4YKsSyq+//15c6g8V2KB5baJSPQfTxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iH1BpRcINnwESq08+L5TIyWvmz3frdWmOCo90S+V5SA=;
        b=WeMT5T2R9LxnUjkzN0vwGrUjHGevpkIkneC0sxk8EEqzw9hnqVJcaOlHOq15FUXfYq
         rOQbWOLiBAIlNHo9J4YaKTLWAJo0Dkg8o/jHFAYOPMosoBJmFKWgEsCZ1XEU/vaOLjAx
         quiVwDWO2wxSk1mHQB6NjO4pxCsu/l3pmllbraf6s/gSPwmDA/K3VbHp8XHJ+lFuu0xN
         0G0po+c7cQmj7Xv8slqQCflHcqfCdMqKXnm49KbJDrDbmw9nU9T/c1dsRfSE6Spei0D4
         v/raZkCxDzcrskLsz9PQF3fC0mWrPFcTcYN+XN7KRDSwyWiQBAJZbGjPynp3sHnmqjrL
         +Glg==
X-Gm-Message-State: APjAAAUHfTCJdIJZKCkJk/gd+ADXq9yOMOzku5OUJZb3ZDBfduOxSzaF
	ahO1B/Avf+qQ/EaM2ssRt0f+0g==
X-Google-Smtp-Source: APXvYqyVhwd6prCP91n5USc0sePD5r/OSqMk8TLxozAtFyYS5g0FDBNuF+mQtroDtLzVI+qHYvMJdQ==
X-Received: by 2002:a1c:3cd4:: with SMTP id j203mr549575wma.90.1575479021260;
        Wed, 04 Dec 2019 09:03:41 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id l15sm8967986wrv.39.2019.12.04.09.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2019 09:03:40 -0800 (PST)
Message-ID: <a3bb8d81c0c7e252bab9faeb27438429f1e221c3.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: Default to enabling a local hash equivalence server
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org
Date: Wed, 04 Dec 2019 17:03:39 +0000
In-Reply-To: <26c58eb9-008b-fe10-8046-90e3e3d59b66@kernel.crashing.org>
References: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
	 <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
	 <3ac065fe5611aa5d7007f5438fbbd5b4dfd78477.camel@linuxfoundation.org>
	 <26c58eb9-008b-fe10-8046-90e3e3d59b66@kernel.crashing.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-12-04 at 08:23 -0600, Mark Hatle wrote:
> 
> On 12/4/19 8:18 AM, Richard Purdie wrote:
> > On Wed, 2019-12-04 at 08:04 -0600, Mark Hatle wrote:
> > > It does seem to cause issues w/ PR Server usage and packagefeed
> > > stability.  (I'm not saying don't do this, I think we absolutely
> > > SHOULD have it enabled.. we but we will need to figure out the
> > > issues.)
> > 
> > Right, there are potential interactions which we need to resolve.
> > That said, I think the benefit is significant to the majority of
> > users and most don't use PRServ so this is the right direction.
> > 
> > > PR Service, when this is enabled, even if the hash is equivalent
> > > a
> > > new package version is produced (at least locally) in all cases.
> > 
> > Should it? I don't think that is what you want. If its not changed,
> > you don't want to rebuild it? If you don't rebuild it, you don't
> > need a new PR number?
> 
> If do_install was shown to be equivalent, and there is no metadata
> change (not sure how there could be if it was equivalent) then no
> reason to do_package.

The function would run at the do_package level since its the nearest
sstate task. If the output from do_package is the same as some previous
run, it is by definition binary identical and therefore doesn't need to
bump PR (which would make it non-identical).

Multiple metadata input task hashes can give identical output, for
example if the description in a patch header changes, the output
wouldn't be expected to.

Thinking about this, the hard part may be a chicken and egg problem
where we need PR to stay the same for the input so that when we build
the output we can compare it and this may be the root of the issue
you're seeing. The input hash for do_package would change which would
mean a new PR each time. The output would then never match so hashequiv
is bypassed.

One possible option may be to put do_install under sstate control. We
never did that previously as it wasn't particularly useful taking build
time and disk for little win. That may be different now.

> > I suspect we reworked parts of rootfs generation and this hasn't
> > been tested with packagefeed-stability unfortunately.
> > 
> > I still hope we could obsolete packagefeed-stability with
> > hashequiv.
> 
> I'm not sure if there are cases where packagefeed-stability would
> kick in that hash equivalency wouldn't.

I'm not entirely sure but I think with the do_install tweak above, I
think hashequiv will perform *much* better and in the real world, I'm
not sure what packagefeed-stability will add.

Cheers,

Richard


