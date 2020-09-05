Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.8001.1599340941205630828
 for <poky@lists.yoctoproject.org>;
 Sat, 05 Sep 2020 14:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VdS+WfQc;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1131C38C0848
	for <poky@yoctoproject.org>; Sat,  5 Sep 2020 14:22:20 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id s13so9762637wmh.4
        for <poky@yoctoproject.org>; Sat, 05 Sep 2020 14:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0VfvcmmYl9qMhr+GKMjm9r/meqRSEZfXwgAARjgVjxY=;
        b=VdS+WfQcg5Pwpd556ADlwWsY0stXTdCcwee0kOWZTFS7DsXOgQNCDsygvGvqm6QpES
         K660GznNIZU4IP6VN2OEuuTvTSdKQG5V6uf4SP+PJlHG6eukHJ1QIZidAbaSYpyLkmm2
         +bW6ICcoEw7fLrqpWlp13/USC6Wj5/6SXh6tU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0VfvcmmYl9qMhr+GKMjm9r/meqRSEZfXwgAARjgVjxY=;
        b=kvz/Gsu3DOMwg9P370az0PTBXJHaaHV+Uf7Wq4kDLjWWQD7iXeyd8D7VGvOQxJI5dS
         VZhT5QyiECD0RjpLSN0KrpKQXfwhNrpoH8LJqE+LAMm9YRkuNuTjLQY7l8SD/1Qs0ZHB
         Ojbi2vMW+XzslLH36W/DX7JbTH+OIUl4AdFw+VX5DPcQv/9c3MD91MXWAsiklw+yXZcG
         uOH9hYq7puwdzaDpiZN9anB9zTn7Jv41z7qfVpEjKZTs/jUyzVi8jxIwWpbC+ZvJLy3k
         iqxJPlHaJeMG1ubl8ivs+0hyXOg+szmUxkQEjumvH7DsM464Soc8+E91EFwIM7hvluX1
         Tehg==
X-Gm-Message-State: AOAM531dQEjyTFXGVcOl9aAKqvmJrh+rCcJ1sLgms9NjruzIHhgpN2GF
	zVoPn6xnmQcB0DKwJIdYJg7TFw==
X-Google-Smtp-Source: ABdhPJyQ9CMAD9VOI2Hy4a3Ehj3Bx4Q4raaEUkZOQOVoYafQIEyjUVSkxBzXgVTheFozaPUUyzbYSw==
X-Received: by 2002:a05:600c:28d:: with SMTP id 13mr13260110wmk.69.1599340938626;
        Sat, 05 Sep 2020 14:22:18 -0700 (PDT)
Received: from d.f.d.f.5.0.6.0.0.2.6.1.6.b.c.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.f.d.f.5.0.6.0.0.2.6.1.6.b.c.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7cb6:1620:605:fdfd])
        by smtp.gmail.com with ESMTPSA id s11sm19988137wrt.43.2020.09.05.14.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 14:22:18 -0700 (PDT)
Message-ID: <cc8b56a611d8767b5a50b35df15b738f54aa79df.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample.extended: remove help2man reference
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, Ross Burton <ross@burtonini.com>
Cc: Poky Project <poky@yoctoproject.org>
Date: Sat, 05 Sep 2020 22:22:16 +0100
In-Reply-To: <CAMKF1soP_fRjjWCLF9GE+KX2p7aVsUO=xxCFy2OF_jFr4gwhyw@mail.gmail.com>
References: <20200903130227.496348-1-ross.burton@arm.com>
	 <CAMKF1soP_fRjjWCLF9GE+KX2p7aVsUO=xxCFy2OF_jFr4gwhyw@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-09-05 at 06:42 -0700, Khem Raj wrote:
> FWIW This patch would be needed for oe-core as well.Perhaps post it
> there as well and backport it here.

I've pulled it into both poky and OE-Core.

Cheers,

Richard

