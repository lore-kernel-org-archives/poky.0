Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C5764C8006D
	for <poky@lists.pokylinux.org>; Tue, 22 Feb 2011 09:12:54 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 903251660375; Tue, 22 Feb 2011 08:12:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F10AD16601A9;
	Tue, 22 Feb 2011 08:12:08 -0700 (MST)
Message-ID: <4D63D248.2010207@mlbassoc.com>
Date: Tue, 22 Feb 2011 08:12:08 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
References: <4D63B7A0.8070809@mlbassoc.com>
In-Reply-To: <4D63B7A0.8070809@mlbassoc.com>
Subject: Re: Impossible to build with BB_NO_NETWORK=1
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
X-List-Received-Date: Tue, 22 Feb 2011 15:12:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/22/2011 06:18 AM, Gary Thomas wrote:
> I get this error immediately. If I disable BB_NO_NETWORK, the parsing completes
> and no gypsy stuff is ever downloaded.
>
> ERROR: Error parsing /home/local/poky-amltd/meta/recipes-connectivity/gypsy/gypsy_git.bb: Network access disabled through BB_NO_NETWORK but access rquested with command git
> ls-remote anongit.freedesktop.org/gypsy master (for url None)
> ERROR: Command execution failed: Exited with 1
>
> Is this because of this line in the recipe?
> PV = "0.8+git${SRCPV}"
>
> Shouldn't one of these lines satisfy:
> ./meta/conf/distro/include/poky-default-revisions.inc:SRCREV_pn-gypsy ??= "147"
> ./meta/conf/distro/include/poky-floating-revisions.inc:SRCREV_pn-gypsy ?= "${AUTOREV}"
> or is the ??= causing a problem?
>

I imported change d5de6229f81ad2225e2e77341721824197b6d2b0, but this
doesn't solve the problem.  The only way I can get it to work is to
use ?= instead of ??=

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

