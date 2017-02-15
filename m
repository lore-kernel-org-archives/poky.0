Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52429E0095F; Wed, 15 Feb 2017 10:53:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01DC7E006D8
	for <poky@yoctoproject.org>; Wed, 15 Feb 2017 10:52:59 -0800 (PST)
Received: by mail-qt0-f181.google.com with SMTP id x49so145095474qtc.2
	for <poky@yoctoproject.org>; Wed, 15 Feb 2017 10:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fgp/TsRgXADdd3mWGY3T1/I3mbseK/fo1DdkTcew9VM=;
	b=bLoGUCcX/tkfXEe5d6Z7D2YuQLcQwHUs6RTQA5QNrYvm7Ig1svcKWsaaNIPlogxvcT
	sLWlY+4p3/uRmJ8augPOBVllgdC4jp9qxk7F2t8NA80MdKFhATVgvCtIudsciAG8yQ2B
	Bpndd3KV88MXs+R/gkOceTMyXiZQp8HB5Z/3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fgp/TsRgXADdd3mWGY3T1/I3mbseK/fo1DdkTcew9VM=;
	b=GXm79HP1JsfoMCHVLzNVBTWXAulpM143GVZ7CBSeR3WasYIS2EKQL1GB7XQVBoWQ0i
	2CTYPjI/4XIiWg078Q1JK6xG4TkJx9Xq64OrKUlGvmTXTQBRhMxTG9CsHtNHnSkWFaEI
	BKqaCI0k7ujS7jTS8fYrxK1JPjy9xSGZn6OSeUcgubyOLY6wIlHPSgoWsBY1ilnbg+/v
	IJcx5R7zjFO6qhiv9HASnRz7QsnWg48/hGEqswSN0SYIC9NY8QVg2C561FrQKc3i1STB
	gZRC3SIERKa/lGisn4PECXhdmh58LT2XyHvLDzpvBzfypxb2Ia1edCc8GdPn/swjt75h
	4A4g==
X-Gm-Message-State: AMke39lsSA8AfBgeCr0MhcMqfLN/I7XV8Hxkan4RiA63xLkFKYO+YVPdwD956DPXLXcSnA==
X-Received: by 10.237.34.125 with SMTP id o58mr33331927qtc.95.1487184778715;
	Wed, 15 Feb 2017 10:52:58 -0800 (PST)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133])
	by smtp.gmail.com with ESMTPSA id n2sm2848620qtf.18.2017.02.15.10.52.57
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 15 Feb 2017 10:52:57 -0800 (PST)
Date: Wed, 15 Feb 2017 13:53:05 -0500
From: Tom Rini <trini@konsulko.com>
To: Joshua Lock <joshua.g.lock@intel.com>
Message-ID: <20170215185305.GF26129@bill-the-cat>
References: <20170215133800.17329-1-joshua.g.lock@intel.com>
MIME-Version: 1.0
In-Reply-To: <20170215133800.17329-1-joshua.g.lock@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 15 Feb 2017 18:53:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 15, 2017 at 01:38:00PM +0000, Joshua Lock wrote:

> Remove several old/untested distros from the list:
> * poky-1.8 and poky-2.0 are no longer supported releases
> * ubuntu-14.04 is an LTS but we plan to remove it from the
>   project's autobuilder cluster as the kernel is old and
>   it doesn't use systemd -- therefore this will no longer
>   be tested.
> * ubuntu-14.10 and ubuntu-15.10 are no longer supported
> * fedora-22 and fedora-23 are EOL
> * opensuse-13.2 is discontinued
> 
> Add opensuse-42.2, it's the openSUSE version we run on the Yocto
> Project autobuilder cluster.
> 
> The distro support plan is documented on the Yocto Project wiki:
> 
> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan
> 
> they are easily summarised as:
> - Fedora: most recent 2 releases
> - Ubuntu: most recent LTS and latest release, unless they are the same
>   in which case the most recent 2 releases
> - CentOS: latest release
> - openSUSE: latest release
> 
> Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>

Reviewed-by: Tom Rini <trini@konsulko.com>

-- 
Tom

