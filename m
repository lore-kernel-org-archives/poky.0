Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7E5E01363
	for <poky@yoctoproject.org>; Fri, 21 Oct 2011 05:02:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EF2486AACB5; Fri, 21 Oct 2011 06:02:53 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 102ED6AACB2;
	Fri, 21 Oct 2011 06:02:53 -0600 (MDT)
Message-ID: <4EA15F6D.7080005@mlbassoc.com>
Date: Fri, 21 Oct 2011 06:02:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4EA15C8B.1050504@mlbassoc.com>
In-Reply-To: <4EA15C8B.1050504@mlbassoc.com>
Subject: Re: Error managing features
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Oct 2011 12:02:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-21 05:50, Gary Thomas wrote:
> In my $DISTRO, I have a default set of image features:
> IMAGE_FEATURES ?= "package-management debug-tweaks "
>
> I'd like to build a minimized image which leaves out the package stuff, so
> I added this line to my <image>.bb:
> IMAGE_FEATURES := "${@oe_filter_out('package-management', '${IMAGE_FEATURES}', d)}"
>
> Sadly, this gives me this error:
> ERROR: Failure expanding variable IMAGE_FEATURES[:=], expression was ${@oe_filter_out('package-management', 'package-management debug-tweaks ${EXTRA_IMAGE_FEATURES}', d)} which
> triggered exception SyntaxError: EOL while scanning string literal (IMAGE_FEATURES[:=], line 1)
>
> Any idea what I've done wrong?

Note: I noticed that EXTRA_IMAGE_FEATURES is only set in a few Yocto
images (no default/fallback), so I added
   EXTRA_IMAGE_FEATURES ?= ""
to $DISTRO.conf and the syntax error went away.

I guess there must be some difference inside bitbake that manages
to ignore unset variables when expanding, but not in this case?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

