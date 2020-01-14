Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web12.1328.1579039230905054149
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:00:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cXNcyrE5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id q9so15617711wmj.5
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2020 14:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=eoXkA1qAWDNZ5j2/+qP9Ad/PsXV/yQAnGmQqFlaOmCA=;
        b=cXNcyrE5kG64R1LmHDmi2lsznxhDnKG3Oq8meZ+/Z2BfFZxXHTsGrrAmF072d5qTD1
         CRZFNl25jCln6Mnga/MNjXCBJgtCpVBHikQUkNDwxxkvRJAyArVcGIkvqr36+RKDZtNX
         1ia/qIFuubH+zso+5WvcDj8Ms8M77ljVgsE2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=eoXkA1qAWDNZ5j2/+qP9Ad/PsXV/yQAnGmQqFlaOmCA=;
        b=UwM9XT607AeuMH61RlGNqp6AwNCb8Q+oYtkyUTpqgatab7ytWbJCYLG6cP7ptAJXoK
         whl9o4/nf/5qmRMqhIzZjftHvuCapyQPy1bggBdBhr8Alc5CTHnKFRkcUdxTlL9tyZw2
         SkzrzCL85AYW1bOV5xAKZfIx+hqGMckcZvq8lAIDWgNLekrrP05qZ143I0ANDCQboHIV
         UdVc8cHIsY8J6iHZOjTfr1slvw100Bxfyz/ZHacQI37S1CzQcm3aOJH8+L1dIjqmzR0d
         FpUWacbzKkSxmB7pl5s2QwmCVcmDHNbAn19Esx5K+VAECz/Z3RCe7CxOX/QLCCpGOTH2
         N3NA==
X-Gm-Message-State: APjAAAUBouXC84R25wHhDV7sjiMyCwjjq1iQ63Bsf0H1Kk1/v8t72HXu
	EWpQjvBNGUev9uqnrmayApmZfQ==
X-Google-Smtp-Source: APXvYqyZyObPIFvYimdr8wZepTpol9suASqTtYEb4BkPZrqYQb+NXGp+cKI1yyAHTJZSlfpuhRKHJQ==
X-Received: by 2002:a1c:964f:: with SMTP id y76mr29261141wmd.62.1579039229378;
        Tue, 14 Jan 2020 14:00:29 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u1sm20495643wmc.5.2020.01.14.14.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 14:00:28 -0800 (PST)
Message-ID: <7faae3ea985bc8b09af3a25e6270152b64f45677.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steven Walter <stevenrwalter@gmail.com>, Ross Burton
 <ross.burton@intel.com>
Cc: poky@lists.yoctoproject.org
Date: Tue, 14 Jan 2020 22:00:27 +0000
In-Reply-To: <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
References: <20200114190707.4260-1-stevenrwalter@gmail.com>
	 <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com>
	 <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-01-14 at 16:43 -0500, Steven Walter wrote:
> That seems... byzantine.  I don't see any repos matching that
> description on git.yoctoproject.org; can you point me in the right
> direction so I can generate proper git patches against those
> repositories?

https://git.openembedded.org/bitbake/
https://git.openembedded.org/openembedded-core/

It should be mentioned in the README. I appreciate this is all a little
suboptimal, there is a plan to change things but that isn't
straightforward, there are limited resources and other bigger fires
right now :/.

Cheers,

Richard

