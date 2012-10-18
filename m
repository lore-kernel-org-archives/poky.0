Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8443E013D2
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 09:44:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9D4BCF8121F; Thu, 18 Oct 2012 10:44:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AF6F6F811F2;
	Thu, 18 Oct 2012 10:44:09 -0600 (MDT)
Message-ID: <50803202.2040002@mlbassoc.com>
Date: Thu, 18 Oct 2012 10:44:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5080305D.2060001@mlbassoc.com>
	<CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
In-Reply-To: <CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Issue with git fetcher
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
X-List-Received-Date: Thu, 18 Oct 2012 16:44:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-10-18 10:41, Burton, Ross wrote:
> On 18 October 2012 17:37, Gary Thomas <gary@mlbassoc.com> wrote:
>> I ran across an issue with this with a recipe I imported from
>> meta-openembedded/meta-oe.  It contained these lines:
>>    SRCREV = "2fb4be9a99a2c2a9435339830e3d940171cc0d9b"
>>    SRC_URI = "git://git.libav.org/libav.git;protocol=git;branch=release/0.8"
>
> Specifying a revision *and* specifying a branch doesn't make sense
> with git.  Presumably the SRCREV is the correct reference and the
> branch parameter is just causing network traffic for no reason.
>
> Removing the branch parameter sounds like exactly the right thing to do.

That's pretty much what I thought.

Maybe a warning or some such would be useful here.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

