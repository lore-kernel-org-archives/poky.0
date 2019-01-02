Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B67C2E00CEA; Wed,  2 Jan 2019 13:17:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A567E00C71
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 13:17:37 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id l9so31762286wrt.13
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 13:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=ZlLEfVgD5k0pC5AajRpFT/tSPUUN1DOf/08mYDThjP0=;
	b=bkVfYVkb0QjO1cd0b0Ikr4z54cPjZnAJwyj4fxm0ACFMLDr1/fAj7YSI2O/HjR+b3k
	SlklrGQExodw+6BumEXmpq0LTF6puIMHVDM7AXL0lPYzeMGvDlAekVLw5wMTg2bT9oLo
	21oarSwYH+sVkhX+5OmSLL9MfiUfd8afc1wgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=ZlLEfVgD5k0pC5AajRpFT/tSPUUN1DOf/08mYDThjP0=;
	b=rQYVwfGp7G1rQo0UVIzyzQ6hO/1zkVJPQgI9MnjE8YXiZD6GCL8TjJYCCUTUsuwP9Y
	yOZ+eOrba5PgWX7Wdmr7kuNKBu3w0ZYmxDZQ4nWA1jwGSW7/OF4yBxtYOzeX+i5oMGe0
	bNv2h9RztOsWomk7HdrCLVB/eit/Yy9DBoZa7NcQxOg2effvJneVm9x/GxgVw7gVUHM3
	+nu1pJ17SbW8vm7g7cwZPq1+jXj4buI5kreEKsPJP0pRY8PpbaCRVIzAcTyxUwcyP2vC
	17UA3Sni4tpQjCxazTqLI528nyl+fo8GptFOm68cN4NK4wZG0AXDIPKosgn6rNaF5xHv
	ay1Q==
X-Gm-Message-State: AJcUukeLS5FULr1BLtNuo5/D1rm2yFbeT0QYEITEXeQwfw8tJmZ1Pbgu
	DD94QoLQEeKjvR3Q5ZCoMwygsA==
X-Google-Smtp-Source: ALg8bN5hyD/xycS4uMYEjGVPr1dh5wsbYuoW9KBS08Md4qdkYMabjxkIazpdUzrEU1mhsn6n4jhVLw==
X-Received: by 2002:adf:8143:: with SMTP id 61mr38379885wrm.47.1546463856571; 
	Wed, 02 Jan 2019 13:17:36 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c1sm21193496wmb.14.2019.01.02.13.17.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 02 Jan 2019 13:17:35 -0800 (PST)
Message-ID: <19502b0e7af03d079fba940f817c355dd5d2c1de.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matthew Stanger <matthew_stanger@trimble.com>, poky@yoctoproject.org
Date: Wed, 02 Jan 2019 21:17:34 +0000
In-Reply-To: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Jan 2019 21:17:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-01-02 at 13:37 -0700, Matthew Stanger wrote:
> I'm getting a build failure under Thud when trying to use the
> following tune in my machine.conf:
> #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
> require conf/machine/include/at91sam9.inc
> DEFAULTTUNE = "arm926ejs"
> 
> 
> When doing a fresh build 'glibc-initial' config stage fail's with:
> > checking for broken __attribute__((alias()))... yes
> > configure: error: working alias attribute support required
> > WARNING: exit code 1 from a shell command.
> > ERROR: Function failed: do_configure (log file is located at
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-
> gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)
> ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-
> core/glibc/glibc-initial_2.28.bb:do_configure)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to
> be
> rerun and 1 failed.
> 
> Summary: 1 task failed:
>   /home/matt/renew_thud/build/../oe/poky/meta/recipes-
> core/glibc/glibc-initial_2.28.bb:do_configure
> 
> Can give follow on config.log's and such as required.
> 
> If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
> change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc builds
> fine. GCC tuning is totally outside my expertise so I'm hoping
> someone
> can confirm if '-mcpu' is really desired over '-mtune'? And also if
> this look like a Poky issue or something else?

Are you using thud's default gcc version? I have some memory this issue
may be gcc version specific.

The mcpu verses mtune is open to debate, it depends what your priority
is, feed compatibility across multiple processors or potential micro
optimisation for the processor.

Cheers,

Richard


