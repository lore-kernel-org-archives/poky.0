Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2124CE00D68; Fri, 31 May 2019 02:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACACE00D61
	for <poky@yoctoproject.org>; Fri, 31 May 2019 02:00:09 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id f204so1540440wme.0
	for <poky@yoctoproject.org>; Fri, 31 May 2019 02:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=9DzMgmCnxuHb8OZRQwP18I7i9c+VQ9uSE9Jaz5Cx/T0=;
	b=Kw56bk3wq4xUBxOx5cwEebG/2DH+stSEfZpuRFaOm9QVpA1U9PMaeUsIRJeOhBJklw
	Hci5neANEnHjYS0VRwVH7S1VWOn3bXtdtjSnRG30lvLjfKSoaI4Uog1z6e3cA+TvaAOV
	UNgsOq3cc1Kq4TsomPBFzWLdSQIG8tdMObWmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=9DzMgmCnxuHb8OZRQwP18I7i9c+VQ9uSE9Jaz5Cx/T0=;
	b=jswfkzOeVo0QxZYGC27i5+cBlSlNZ7vM8m9nXECeFFGK+GDZWV0gdlTUNXvm65ul8b
	RpI/bRjON3TJxGNdeUk9pt6CY5kKSsW5ydKMj2JAO0rGdypRkoByKoIdqMs6NmrV6SQK
	Bx5nQE4g5pdFy6ktJeQdr+VnatDG1X7lO6KzbieOU4X7ODSxbeTbeDcqSpi/GQmiVrPq
	kLFLM6w2JlGrFKjCk9T7Q7OVLXENho3aAEHsXUvJTKioZDGSk+SN5SVeV92uxoc02+rt
	5FX/ldJYQr+KTs5yZmoStfPhhJnQRm1dLb5qtix9J+HPFsuMVFiK9Z5CL9u8jDWco9Sd
	TkBA==
X-Gm-Message-State: APjAAAUHt/yTlUv8CJ8rsLn73ZeifRFHd6Uxhe0ScCSfFg2sNoDR9L8W
	tfSmowzySmIyrEMsyi5WVLBOMA==
X-Google-Smtp-Source: APXvYqwL7naxNxYMxvK/5+Sh/UnL/5imj1X+xx0H/1B2EJWDP7pekbUOt/A1O9uHwmg7kPmDPcXREw==
X-Received: by 2002:a1c:c108:: with SMTP id r8mr5120371wmf.78.1559293208672;
	Fri, 31 May 2019 02:00:08 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	r16sm4381843wmh.17.2019.05.31.02.00.07
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 31 May 2019 02:00:08 -0700 (PDT)
Message-ID: <cfb5ffc25d8a5d7c378b196807c984661b0bd606.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Kang Kai <Kai.Kang@windriver.com>
Date: Fri, 31 May 2019 10:00:06 +0100
In-Reply-To: <068b03a0-b96b-eee3-0dc5-9ddfde048066@windriver.com>
References: <20190530092232.169453-1-kai.kang@windriver.com>
	<20190530092232.169453-2-kai.kang@windriver.com>
	<39d1e5c522b70d7c6dad4cb37641c0c1ae7cbd41.camel@linuxfoundation.org>
	<068b03a0-b96b-eee3-0dc5-9ddfde048066@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [meta-poky][PATCH v4 1/3] poky.conf: make systemd as default init manager
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
X-List-Received-Date: Fri, 31 May 2019 09:00:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2019-05-31 at 10:07 +0800, Kang Kai wrote:
> On 2019/5/30 下午7:44, richard.purdie@linuxfoundation.org wrote:
> > On Thu, 2019-05-30 at 05:22 -0400, kai.kang@windriver.com wrote:
> > > From: Kai Kang <kai.kang@windriver.com>
> > > 
> > > Move configurations from local.conf.sample.extended to poky.conf
> > > to
> > > make
> > > systemd as default init manager for poky. Introduce a new
> > > variable
> > > 'POKY_INIT_MANAGER' whose value should be either 'systemd' or
> > > 'sysvinit'
> > > to configure the init manager setting.
> > > 
> > > For users who still want to use sysvinit, set in local.conf or
> > > any
> > > other
> > > configure file with:
> > > 
> > >    POKY_INIT_MANAGER = "sysvinit"
> > > 
> > > [YOCTO #13031]
> > > 
> > > Signed-off-by: Kai Kang <kai.kang@windriver.com>
> > > ---
> > >   meta-poky/conf/distro/poky.conf           | 10 ++++++++++
> > >   meta-poky/conf/local.conf.sample.extended |  9 ---------
> > >   2 files changed, 10 insertions(+), 9 deletions(-)
> > Thanks for working on this patchset, I think its nearly there. I'm
> > wondering if we should set
> > 
> > POKY_INIT_MANAGER_libc-musl = "sysvinit"
> > 
> > since I am worried about what I read about musl and systemd from a
> > security perspective.
> 
> OK. I'll add it.
> 
> 
> > I'm also wondering what we need to do with the autobuilder init
> > system
> > tests, I think those may need rewriting to add some sysvinit tests.
> 
> Something likes meta/lib/oeqa/runtime/cases/systemd.py? I think it
> is better to do in next milestone and create a defect to address it.
> If it is ok, I'll create one.

No, I mean:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/tree/config.json#n813

which corresponds to steps 5-7 of 'qa-extras2' on the autobuilder.

We're going to need to update the test configuration on master to cover
the things we no longer test and remove the duplication.

> > Does POKY_INIT_MANAGER = "sysvinit systemd" work for the mode where
> > we allow old sysvinit scripts for compatibility?
> 
> I am afraid only one value could be set for POKY_INIT_MANAGER. And I 
> believe that most packages have been supporting systemd. If there is,
> we can add a systemd service file for it.

This isn't the point, we support 3 different configurations of this and
the variable needs to reflect that.

How about a slightly different approach. We define POKY_INIT_MANAGER to
take three different values, sysvinit, systemd and systemd-compat.

We do something like:

require conf/distro/include/init-template-${POKY_INIT_MANAGER}.inc

and then put the appropriate configuration in each .inc file?

> BTW, POKY_INIT_MANAGER doesn't consider the case of mdev/busybox. If 
> want to use mdev/busybox for init, just set DISTRO with poky-tiny and
> everything have been set properly in poky-tiny.conf.

This might be an opportunity to have another setting for
POKY_INIT_MANAGER which covers this too through an additional .inc?

Cheers,

Richard



