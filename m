Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0357C4C805A8
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 11:00:55 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 65C4B166035F; Tue, 26 Apr 2011 10:00:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DD510166032A;
	Tue, 26 Apr 2011 10:00:53 -0600 (MDT)
Message-ID: <4DB6EC35.4030806@mlbassoc.com>
Date: Tue, 26 Apr 2011 10:00:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <BANLkTinq5uWMF2pPC4-udTVAYCxXqwNDJg@mail.gmail.com>
In-Reply-To: <BANLkTinq5uWMF2pPC4-udTVAYCxXqwNDJg@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error while pulling in "nss" package
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
X-List-Received-Date: Tue, 26 Apr 2011 16:00:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2011 11:03 PM, v sailaja wrote:
>
>
> Hi,
>
>
> I get an error while pulling nss package into poky.
>
> *ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.*
>
> I found some solution in poky list and I modified according to the following steps. Still I am facing the same error.
> I am sending error log file. Please find the attachment.
> Please Can anyone tell me how to track this error.

Is this really an error?  I've seen it before and the build carries on.

What version of Poky are you using (git branch & rev)?  The pseudo stuff
has had quite a lot of change in recent weeks/months, so if you're not
using a recent tree perhaps you should try to upgrade.

Note: I've built nss_3.12.6 from OE in Poky with only cosmetic changes.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

