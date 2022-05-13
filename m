Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.6538.1652437364583204731
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:22:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=c20rlFmd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso6690385wma.0
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=epCAp8KCPVY1mcbGao25gOA7KFMMWHB1XxBildIrIZs=;
        b=c20rlFmd6VneURwEv1LcsK6wRL/D6PQ0uueNRQjhAUruPIWTZnw6Gr7VvUgKOh9AVq
         vv3J2kM3ha802Ho5EfxeqxCu8FmWCsacx2D1OdnjIZztScSaFeg5a7HyW1uG8KIOmX7d
         CGiy6eNvlQqDceJfJnd7lr/YX9V+y5mgNp5QM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=epCAp8KCPVY1mcbGao25gOA7KFMMWHB1XxBildIrIZs=;
        b=Ez2PNWWz1wYYEWQPue69uk8CRfF6mq441v9d5v4JoEND7SYlqd984TTae3EWsAVDhk
         t3OrvYf1J5Ud0kguQJZBdXFTlmArVihAwPdhrUCy4mZu/ePvAqmVMwXWzboj2B7y6j/I
         t0ivhx3tRb3CPmic+v71/KGgyosPa3RJQ7KSb0SEzt2AaZvvwLZ2q8L1PvLP7Af6CHwK
         loAyA8zGpllWcus8ZOhWobGZ7ZpOgU9U6v14pbEtBIR7+biv0yDOluk8EHqWDPRYxbLM
         umKBbixzNN9o9Eo7Exc1KtsFOkWFSumZ3kDIg4WzZy5Fj2iJyqF5YXDu1o1qIY+gh4L7
         W5aA==
X-Gm-Message-State: AOAM531Wf4o8x/FwTeJSyED32fefFz4/ss7GFQF0t6/o2HmMtGb854AS
	mIeZpKKcqVWEiqR92XR3LRYQrg==
X-Google-Smtp-Source: ABdhPJwuIlaXeSpAlQxnq1qLN4jov8hR1FglS4UZ2C7DQtXzRn0/ORWAq5t2O48+VKAz63gh5rm2Dg==
X-Received: by 2002:a7b:c4c8:0:b0:394:26c5:b79e with SMTP id g8-20020a7bc4c8000000b0039426c5b79emr3980672wmk.15.1652437362788;
        Fri, 13 May 2022 03:22:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a1e1:9ec5:5b27:abc8? ([2001:8b0:aba:5f3c:a1e1:9ec5:5b27:abc8])
        by smtp.gmail.com with ESMTPSA id p26-20020adfa21a000000b0020c61af5e1fsm1746759wra.51.2022.05.13.03.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 03:22:42 -0700 (PDT)
Message-ID: <8e823cb8afde58dffeb4e79bcc2e3d04997def7f.camel@linuxfoundation.org>
Subject: Re: [poky] [PULL][PATCH 0/1] Do setuid before git operations
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jack (Szu-Chieh) Wang" <jackwa@google.com>, Steve Sakoman
	 <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org, Ryan O'Leary <ryanoleary@google.com>
Date: Fri, 13 May 2022 11:22:41 +0100
In-Reply-To: <CAGv+sjGDFDRnNXHWsxAe1PJh+msS-mogN3ojDsG3-TaaYgN-YA@mail.gmail.com>
References: <cover.1652432972.git.jackwa@google.com>
	 <0feb67b5ab444dc14b5b37f1eae761543f531079.camel@linuxfoundation.org>
	 <CAGv+sjGDFDRnNXHWsxAe1PJh+msS-mogN3ojDsG3-TaaYgN-YA@mail.gmail.com>
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-05-13 at 18:19 +0800, Jack (Szu-Chieh) Wang wrote:
> Hi Richard,
>=20
> Thanks for your prompt reply.
> We're using the dunfell branch and the git issues remain.
> I see the patch is only on master not on dunfell, is this correct?

We have a backport policy which means we fix on master, then fixes
cascade to the stable maintained releases. There is a review request
out here:

http://cgit.openembedded.org/openembedded-core-contrib/log/?h=3Dstable/dunf=
ell-next

which includes the patches and should hopefully merge in the next few
days.

Cheers,

Richard
