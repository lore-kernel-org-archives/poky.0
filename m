Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A2304C808D8
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 11:33:35 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2LGXYHi008000
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 09:33:34 -0700 (PDT)
Received: from Macintosh-5.local (172.25.34.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 21 Mar 2011 09:33:34 -0700
Message-ID: <4D877DDB.2080308@windriver.com>
Date: Mon, 21 Mar 2011 11:33:31 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D86B0D2.2070004@mlbassoc.com>	<1300708651.30423.3434.camel@rex>
	<4D875A91.8000402@mlbassoc.com> <1300718577.30423.3649.camel@rex>
In-Reply-To: <1300718577.30423.3649.camel@rex>
X-Originating-IP: [172.25.34.4]
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Mon, 21 Mar 2011 16:33:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 3/21/11 9:42 AM, Richard Purdie wrote:
> On Mon, 2011-03-21 at 08:02 -0600, Gary Thomas wrote:
>> On 03/21/2011 05:57 AM, Richard Purdie wrote:
>>> rpm+zypper:
>>>
>>> * More of an industry standard
>>> * Emphasises correctness and robustness over speed (e.g. number of
>>>    fsync calls)
>>
>> Does this mean ipk/opkg fails along these lines in any way?
> 
> The opkg source code has certainly not been audited as thoroughly as the
> rpm codebase for those kind of issues. I'd say the two codebases each
> have their own set of problems though :).

From my recent experience with opkg, it appears that it's a very good packaging
system for small to medium sized devices.  It's small, efficient, but may not
have all of the features needed in desktop/enterprise type designs.

I see RPM has very useful in medium to very large installations...

These two are very complementary within Yocto, and I expect it to stay that way.

>>> * Has desktop/enterprise features
> 
> Off the top of my head, the ones I'm aware of are:
> 
> Possibility of DeltaRPM updates
> Various more advanced dependency calculations (which we're adding for
> the benefit of all packaging backends in Yocto) 
>    * per-file dependenies

This is something we enabled internally for all of the system to help develop
tools overtime to discover and display dependency maps of not only recipes, or
(run-time) packages, but of the files themselves.

>    * perl/python module dependencies
>    * directory ownership

RPM currently has directory ownership, but we do not use this in Yocto properly.
 This will be something we'll hopefully be added in the near future.  (Directory
ownership means specific package(s) and users/group/permissions are defined for
packages.  By default in most OE based systems it appears that the directories
just end up being a by-product of the installation of files.. and the default
0755 root:root is set.)

> Multilib support

Multilib support is one of the key reasons we needed RPM support, and not just
"rpm", but fully integrated rpm support.

The trick with multilib support is it's easy to have to packages, one that
problems /lib/libfoo.so, and one that provides /lib64/libfoo.so.  But what
happens when there is a corresponding /bin/foo?  Do you use alternatives, do use
cause a fatal conflict that must be resolved by the packaging of the system?  or
in the case of RPM, do you use preprogrammed policy to either conflict -- or
decide which of the two (or three) versions to use.

For larger systems, carrier grade specificall, the preprogrammed policy is the
mechanism of choice for most installations.

> Tighter integration with features like prelink.
> 
> I'm sure some of the more rpm literate people on the list can detail
> others.
> 
>>> * Not optimised for size (e.g. uses c++)

(Note, this is Zypper, not RPM.. RPM itself is written in C...)

>>> I'd not say one was better than the other, they're just different and
>>> suit different use cases.
>>
>> Pretty much what I thought, thanks.
>>
>> My only concern is that if rpm is the primary emphasis, ipk/opkg might
>> suffer from rot.
> 
> I want to see opkg continue to work well, if you do see any problems
> with it, let us know...

I have a vested interest in RPM, but I acknowledge that we need more then one
packaging mechanism.  RPM isn't the right answer for a lot of the devices people
are producing.. neither is deb or ipk/opkg.  (Deb support should work, but I'm
pretty sure that is the least tested of what is supported in Yocto.  It would be
nice for someone familiar with the Debian packaging mechanisms to step up and
help verify and improve the current implementation.)

--Mark

> Cheers,
> 
> Richard
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


