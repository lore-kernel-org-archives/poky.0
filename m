Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E56714C80BEF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 06:35:55 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id DE4DD16603F6; Wed, 24 Nov 2010 05:35:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D8FA516603C5;
	Wed, 24 Nov 2010 05:35:53 -0700 (MST)
Message-ID: <4CED06A9.8060806@mlbassoc.com>
Date: Wed, 24 Nov 2010 05:35:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4CECEF5D.2040702@mlbassoc.com> <4CECF7F0.3080303@mlbassoc.com>
	<1290599248.2799.16.camel@scimitar>
In-Reply-To: <1290599248.2799.16.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: bitbake package-index broken?
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
X-List-Received-Date: Wed, 24 Nov 2010 12:35:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 04:47 AM, Joshua Lock wrote:
> On Wed, 2010-11-24 at 04:33 -0700, Gary Thomas wrote:
>> On 11/24/2010 03:56 AM, Gary Thomas wrote:
>>> With a recent build, bitbake package-index doesn't seem to do anything.
>>> e.g. if I look at tmp/deploy/ipk/*/Packages.gz before and after, there
>>> are no changes.
>>>
>>> I tried to build a simple package and add it to my database. Sadly,
>>> it's not being updated at all, so the new package does not appear on
>>> the board.
>>>
>>> Any ideas what might be wrong?
>>
>> A quick check shows that do_build() in the package-index recipe is never
>> really run!
>>
>> I found a workaround by just building an image which has a root file system.
>> This also forces a package database rebuild.  It would be nice to figure out
>> what's broken though (it certainly _used_ to work)
>>
>
> I'm not really familiar with the ipk classes so can't offer a quick
> solution, could I ask you to file a bug so that we can track this issue
> and assign resources to fix?

Done - bug #544

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

