Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C31BE01516; Mon, 18 Jun 2018 11:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C557E01095
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 11:19:51 -0700 (PDT)
Received: by mail-ot0-f174.google.com with SMTP id c15-v6so19598118otl.3
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 11:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to;
	bh=0DzaJyKHI/CEga3Y2c4eo2EfoGPy4gDThd0iUZI7dO8=;
	b=Rq6W9esedik4KlHROkAWFc//aq5ZG8t0tzSinVmjXtCi3uvMUPx6iq4uMeRnuYbmT7
	TwAY2uYahEpeFXMlMQ4IWLShM9oVR8/jjAtDcrJxUn47xF2r8ExYnISrc4wBuU2JwCDb
	hIqFYNq+dGql10u6FVguVmuAUrLTvOHGrQJec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to;
	bh=0DzaJyKHI/CEga3Y2c4eo2EfoGPy4gDThd0iUZI7dO8=;
	b=pUdrTt34o3RM/UqmAlFf8+5KXRFDEQ+c/xYVrsQWrClaWvI2HDILGjk3iy5JiXnZS+
	AsMle6LUEN+Lkpu40WSFs7b82Gpx5pCkFGMiRDpqqppNrrnpuJM1q5pjrQOz3/8Wcq68
	n4xzXzpQDCkrc0qH1tcCfTVZAsGIEPzG0Wrq455Ey+4OYNUaMJTUy4rQG+OSoJb/q9Qk
	Qs0aQOR08CjD4DVBZZT6djfZtdD8gBID32uR3rmhSdnHKzGcMZ0qe6KPqUzYkYiANx71
	LiqA1eVaQz8BItc8RpkMtvSCLsMuOPQeM3CzvDAHoAiEALw/TLQXfsQUfc+Ox9pD0iNg
	091Q==
X-Gm-Message-State: APt69E36rfj3iTQJ+jhswDLZi/lukSVPmF0eZ1R0ZdLte/al3jN+3FYJ
	RzU0xJLfeibaj0mG+hwySy4P4RKfMdc0Rs+espuUhQ==
X-Google-Smtp-Source: ADUXVKI+K2piglpeo57z0S89u1kaiSm2EAYLQQQwq7PmghCDz5NzK6s53VkMsndji7oqDuhwseII2p9530yJpInj8o4=
X-Received: by 2002:a9d:55d9:: with SMTP id
	z25-v6mr7964498oti.131.1529345991294; 
	Mon, 18 Jun 2018 11:19:51 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <edfcc2fef994870b3be5ea062fc8fabe@mail.gmail.com>
	<9f074122b5166d526708fb1707e56da884ce39b6.camel@linuxfoundation.org>
In-Reply-To: <9f074122b5166d526708fb1707e56da884ce39b6.camel@linuxfoundation.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQEX547JCysRxWgqbhO1vW8tJVc5cQKVKRXfpcnpLYA=
Date: Mon, 18 Jun 2018 11:19:50 -0700
Message-ID: <3a9ed47b9a6074e1d3b5ef4957f4c462@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
Subject: Re: how to submit patches
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
X-List-Received-Date: Mon, 18 Jun 2018 18:19:53 -0000
Content-Type: text/plain; charset="UTF-8"

That's clear, thanks Richard.

-----Original Message-----
From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
Sent: Friday, June 15, 2018 2:56 PM
To: Jonathan Richardson; poky@yoctoproject.org
Subject: Re: [poky] how to submit patches

On Fri, 2018-06-15 at 14:42 -0700, Jonathan Richardson wrote:
> What is the procedure for submitting changes to poky? Can we just
> send the patches to this mailing list? Is there any policy on adding
> new recipes to meta, new features, or fixes?

It depends which component of poky. README.poky has details:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta-poky/README.poky

You can also see this wiki page for more information:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Its likely OE-Core you want to send patches to, or perhaps meta-
openembedded for new recipes as core has a fairly high bar for new
recipes.

Cheers,

Richard

