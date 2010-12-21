Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42CAC4C80050
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 10:52:53 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4F92316603F4; Tue, 21 Dec 2010 09:52:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B384C16603BF;
	Tue, 21 Dec 2010 09:52:51 -0700 (MST)
Message-ID: <4D10DB63.60408@mlbassoc.com>
Date: Tue, 21 Dec 2010 09:52:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D10CB88.4040308@mlbassoc.com> <1292949865.25087.6264.camel@rex>
In-Reply-To: <1292949865.25087.6264.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Tue, 21 Dec 2010 16:52:54 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 09:44 AM, Richard Purdie wrote:
> On Tue, 2010-12-21 at 08:45 -0700, Gary Thomas wrote:
>> In my quest for a well-packaged Poky that I can distribute
>> to my customers, I'd like to give them a pre-populated $DL_DIR
>> tree (also in response to those customers that have little or
>> no net access).  This would likely be in /opt/XYZ and practice
>> would dictate that it be read-only.
>>
>> Sadly, this doesn't work.  When I try to build Poky with a
>> read-only $DL_DIR, it simply hangs on every 'fetch' step.
>>
>> Note: I could avoid this problem (although I think it's a
>> bug even if it should never be experienced) by being able
>> to easily provide source mirrors for the packages.  So far,
>> I've not figured out how to do this; I'd like to add my
>> own mirror lists, similar to those in meta/classes/poky.bbclass
>> Would this be a way forward?  If so, how?
>>
>> Thanks for any ideas
>
> Make the readonly directory a file:// source in PREMIRRORS. You can use
> the SSTATE_MIRRORS syntax in local.conf to do this without a class file.
>
> It won't actually copy them to DL_DIR if they're already local.

This sounds good.  Do you have an example of what to put into
local.conf?  I'm not sure what you mean by using the SSTATE_MIRRORS
syntax above.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

