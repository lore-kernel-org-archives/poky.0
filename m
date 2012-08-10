Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6526E0034A
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 07:58:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 49C60F81242; Fri, 10 Aug 2012 08:58:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 800B2F81239;
	Fri, 10 Aug 2012 08:58:39 -0600 (MDT)
Message-ID: <502521A9.5030700@mlbassoc.com>
Date: Fri, 10 Aug 2012 08:58:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: "Luke A. Guest" <laguest@archeia.com>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
	<1344610399.4828.31.camel@rogue>
In-Reply-To: <1344610399.4828.31.camel@rogue>
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Fri, 10 Aug 2012 14:58:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-10 08:53, Luke A. Guest wrote:
> On Thu, 2012-08-09 at 11:32 -0600, Gary Thomas wrote:
>
>> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
>> it again.  The error you are seeing is related to reusing the same tree
>> with [somewhat] different target machines.
>
> I did this and did it get further, failed somewhere else though.
>

Without more information, it will be hard for anyone to help you out :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

