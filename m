Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.16325.1605653201567245576
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 14:46:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R9TnsJJx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id s8so25178905wrw.10
        for <poky@lists.yoctoproject.org>; Tue, 17 Nov 2020 14:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Gy/bvcuKhfKiH/1KVgEu5oNmqEMbrw46jLE1ZmmHMWw=;
        b=R9TnsJJxxWnp75edm6ujMcTUv6ucZCHYsQzATn2vdHGcSAtCbGTbC2rUpVHmMysKtp
         vhH8UPgMoDzTrXuCWPMZ7WlYmSAWr1q5mF59OMcOa3POSHzyh5FRtHB7Xm6HdZI/HZ2u
         j2kB8/jClYHAe1cWuCc6lufMkG0HsIRcIYzV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Gy/bvcuKhfKiH/1KVgEu5oNmqEMbrw46jLE1ZmmHMWw=;
        b=KHH/YRe+FEgEdMQ3R/y6iY7LFUeSMKPsEIW5zvqp6gDc2sQwo7IZYTXoDmljjcjY6a
         IgD5jc8yuhnwsjA0F29Z0XoywhGHOU3ma9gHYqzlBFBZaZnm2Yb/U05EOlZeOsu2vlio
         kAxEFgYnhq5iBagUWlxg501LHi7chsZAMd+G7KsNfdz6YjPxoBPjoPPlgAYSvZwoi4/N
         1Wfm5LCVOs1Lwr/lNIEY37YVWzhM7spsSmgZZXei2oVcXAbqThwAomlKLYsAJ0hHPSYr
         qZwJGWHI10w3mYMicy23llhRHgYZkCrimaQUtm3fvni5kb50q3f2yIdrTunP0TO8IFUT
         C4wg==
X-Gm-Message-State: AOAM531zkjQ41p9HZMZ/5Z/+IJAMdhk28xsHgfuRUIfI8mSQ1pFR9KhT
	2hvmPbY5JxZdOxbJGci7rMhepw==
X-Google-Smtp-Source: ABdhPJxASuTYruu24Qw7jTFimVLAbONpX5MVyF0+GhqlrepK5r9Okd9rzLJdyV+yhAr2uoN269EPAA==
X-Received: by 2002:adf:e74d:: with SMTP id c13mr1763128wrn.277.1605653199953;
        Tue, 17 Nov 2020 14:46:39 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:9497:ff63:1f37:222])
        by smtp.gmail.com with ESMTPSA id t17sm300740wmi.3.2020.11.17.14.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 14:46:39 -0800 (PST)
Message-ID: <180fe413f3599b58f37414351653b54edc244aec.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Date: Tue, 17 Nov 2020 22:46:37 +0000
In-Reply-To: <3ea5615c-f410-edf5-f042-7d7eff537324@kernel.org>
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
	 <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
	 <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
	 <3ea5615c-f410-edf5-f042-7d7eff537324@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-11-17 at 10:51 -0500, Sinan Kaya wrote:
> On 11/17/2020 10:49 AM, Richard Purdie wrote:
> > > How is v7 looking?
> > > 
> > > It built for me yesterday.
> > This version did pass on the autobuilder :)
> 
> Awesome, thanks.

Just to be clear, was the plan to merge this, or create an inc file in
OE-Core which poky-tiny then includes? I wasn't sure what the end
result of the discussion was...

Cheers,

Richard

