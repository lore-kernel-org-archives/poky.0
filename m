Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web09.4674.1575469136454746869
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 06:18:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ri2KhAO0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id g17so8846366wro.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Dec 2019 06:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Q5Ww53ovnyxEgFmIzR+C2a2Nqw2/jK8Oq+dV/JTKOt4=;
        b=Ri2KhAO0tnKUVTKvpwIi7I7h5A98Vh6BJGwfjGwB/h0cLHwF0yFT4i0+6VMv0408zQ
         r2S3xuZLDuNN1PmXiB2tFz44g3++jqXEBJUHqwqQoZfnLUAsVije6NX7y7k4obeRKgdz
         Guj0MZfJylkrrElsEcMdDAPyH6pnKzeQw61nU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Q5Ww53ovnyxEgFmIzR+C2a2Nqw2/jK8Oq+dV/JTKOt4=;
        b=K0p19OmZIJKZCdbc+QCcUbLXrdJchFMaPW+hZakLQsnfgmPy6Bm2+w+cn2MG5JfI7N
         L21xLNHkIDG8Rk27F0C9AUk2TwWnOWjUs9pXWl8b+Mq/qfiuo/GzyGW9CS6/sbEypwJA
         TBxxH8Zrk52CT27RmzsWNlomzpdoRZhETNyXm8n1R6P4aoXVt5koGR6pj40mMkbmUj+H
         Dxf8AkD7/+TGoPxaKz7QwG2QQkuJ868Eny9i91RATbPmDPM8hKOKuLqyJgdGBj/Woznh
         MaDrxY/g15g0peDXCdDTcu21wY6yBUMSTU+0FwKLU1SGy0AiR4E/2HZRl+rEYtcmAvM/
         BoQg==
X-Gm-Message-State: APjAAAUij466EoBqXwvj74bu2JJKlidcyjYCKHGZ8walHfNq+4fDN0HT
	5g9G4GiQlGc1U0HPvWBkfz2WTQ==
X-Google-Smtp-Source: APXvYqzYh/Lv0jaqhPTa1CWeo0DKgx/RA4Y+Ne0PgbBgAHjntwSDw9NApJH/isjZEmfvvZa00bueqA==
X-Received: by 2002:adf:d183:: with SMTP id v3mr4350997wrc.180.1575469134882;
        Wed, 04 Dec 2019 06:18:54 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p9sm7303562wmg.45.2019.12.04.06.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2019 06:18:54 -0800 (PST)
Message-ID: <3ac065fe5611aa5d7007f5438fbbd5b4dfd78477.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: Default to enabling a local hash equivalence server
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org
Date: Wed, 04 Dec 2019 14:18:53 +0000
In-Reply-To: <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
References: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
	 <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-12-04 at 08:04 -0600, Mark Hatle wrote:
> It does seem to cause issues w/ PR Server usage and packagefeed
> stability.  (I'm not saying don't do this, I think we absolutely
> SHOULD have it enabled.. we but we will need to figure out the
> issues.)

Right, there are potential interactions which we need to resolve. That
said, I think the benefit is significant to the majority of users and
most don't use PRServ so this is the right direction.

> PR Service, when this is enabled, even if the hash is equivalent a
> new package version is produced (at least locally) in all cases.

Should it? I don't think that is what you want. If its not changed, you
don't want to rebuild it? If you don't rebuild it, you don't need a new
PR number?

You only want a new PR number if it rebuilds?

Fixing this could be as simple as ensuring its the unihash the PRServ
sees rather than taskhash.

> Adding in packagefeed-stability and the image is generated with the
> new package versions that don't actually end up existing in the
> feed.  (This might just be a packagefeed-stability bug and not hash
> equivalency.)

I suspect we reworked parts of rootfs generation and this hasn't been
tested with packagefeed-stability unfortunately.

I still hope we could obsolete packagefeed-stability with hashequiv.

Cheers,

Richard

