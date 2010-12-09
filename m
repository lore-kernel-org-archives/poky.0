Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B821C4C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 13:18:53 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 464911660591; Thu,  9 Dec 2010 12:18:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 106891660595;
	Thu,  9 Dec 2010 12:18:01 -0700 (MST)
Message-ID: <4D012B68.1000201@mlbassoc.com>
Date: Thu, 09 Dec 2010 12:18:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc13
	Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4CFF8C70.7010803@mlbassoc.com> <1291921712.6078.48.camel@scimitar>
In-Reply-To: <1291921712.6078.48.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: README.hardware
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
X-List-Received-Date: Thu, 09 Dec 2010 19:18:54 -0000
Content-Type: text/plain; charset=KOI8-R; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2010 12:08 PM, Joshua Lock wrote:
> On Wed, 2010-12-08 at 06:47 -0700, Gary Thomas wrote:
>> This file seems quite out of date, in fact it's not been updated
>> for 9 months :-(
>>
>> I don't know enough details to suggest a patch, but I think it
>> would be useful to update it to reflect "today's Poky/Yocto" world,
>> especially with the new visibility of the project.
>>
>
> I agree, although I'm also wondering if it would be better to have this
> information on the wiki where it can be more easily maintained by the
> community.
>
> Or a balance? any machine in meta/conf/machine documented in
> README.hardware and anything else on the wiki.
>

Wikis are great, but I tend to think of the Poky "checkout" tree
as self-sufficient.  It has the full manual, etc, already so forcing
the user to have to go to the Wiki for such information (which is
really only overview anyway) would not be ideal.  A combination
of hard files and Wiki would be OK as long as the README.hardware
at least mentions the "well sanctioned" ports, which right now
it does not.

I also tend to err on the side of my [sadly] many customers
that may have to work in non-internet-connected environments,
so making them have to get to a Wiki to find such answers is
not really acceptable.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

