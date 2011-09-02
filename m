Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C35E00320
	for <poky@yoctoproject.org>; Fri,  2 Sep 2011 10:10:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 03D0E1660593; Fri,  2 Sep 2011 11:10:17 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 59EF4166055A;
	Fri,  2 Sep 2011 11:10:16 -0600 (MDT)
Message-ID: <4E610DF8.3090104@mlbassoc.com>
Date: Fri, 02 Sep 2011 11:10:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E610865.1000305@mlbassoc.com> <1314983074.5939.618.camel@rex>
In-Reply-To: <1314983074.5939.618.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Update poky-feed-config-opkg to generate a useful package setup
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
X-List-Received-Date: Fri, 02 Sep 2011 17:10:17 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-02 11:04, Richard Purdie wrote:
> On Fri, 2011-09-02 at 10:46 -0600, Gary Thomas wrote:
>> The current poky-feed-config-opkg package only generates a skeleton for the
>> opkg setups.  In particular, the base configuration file /etc/opkg/base-files.conf
>> is not filled in at all.
>>
>> The attached patch fills this file in, using variables set by the
>> user (local.conf, site.conf, etc).  If left unset, the behaviour will
>> be the same as current.
>>
>> One thing I found is that opkg is very noisy if there are databases
>> mentioned in base-files.conf that don't exist.  For example, on ARM
>> platforms, there are a large number of possibilities (arm, armv5, armv6, ...)
>> that are never populated in .../tmp/deploy/ipk.  The changes to this
>> recipe will prune the file to only include those ipk databases which
>> have actual files present.
>
> Your code is one big race unfortunately since the actual file generated
> will depend on whether any packaging task has run before it or not (and
> what package type that was). I'm not sure how to fix that but it can't
> go in as it stands due to that...

I agree :-)  That's what these lines are for:
   do_compile[depends] += "base-files:do_package"
   do_compile[depends] += "virtual/kernel:do_package"

They solve the problem for me, i.e. if I build an image which includes
this recipe from scratch, then the do_compile step is held off until
sufficient work has gone on to make the database useful.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

