Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 910544C80132
	for <poky@pokylinux.org>; Fri,  5 Nov 2010 11:14:33 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA5GEW7k012809;
	Fri, 5 Nov 2010 09:14:32 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 5 Nov 2010 09:14:31 -0700
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 5 Nov 2010 09:14:31 -0700
Message-ID: <4CD42D66.9040700@windriver.com>
Date: Fri, 05 Nov 2010 11:14:30 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CCE94E0.50903@windriver.com> <4CCF15BA.6070108@windriver.com>
	<1288964076.28481.15860.camel@rex>
In-Reply-To: <1288964076.28481.15860.camel@rex>
X-OriginalArrivalTime: 05 Nov 2010 16:14:32.0173 (UTC)
	FILETIME=[87CA89D0:01CB7D04]
Cc: poky@pokylinux.org
Subject: Re: [PULL]Fix adding GDBM_File module for perl
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
X-List-Received-Date: Fri, 05 Nov 2010 16:14:34 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/5/10 8:34 AM, Richard Purdie wrote:
> On Mon, 2010-11-01 at 14:32 -0500, Mark Hatle wrote:
>> I've been doing some thinking about how various perl and related components
>> should be implemented if they do potentially optional things.
>>
>> My concern is that by adding gdbm to the build, that other components will
>> change and potentially require more disk space.  We really need a way to
>> optionally use gdbm, if available in these configurations.  I'm really not sure
>> if there is currently a way to tell bitbake:
>>
>> I really want gdbm, but if nothing else wants it.. I don't want it.  Then for
>> LSB specific builds, we manually require gdbm as an LSB requirement (due to the
>> gdbm perl module requirements.)
>>
>> Richard, any suggestions on how to work with this?
>
> The trouble is the configuration is entirely deterministic by design. At
> this point people start talking about Gentoo USE flags and how we should
> add them and how wonderful the world would be.
>
> To talk through the use case, I run "bitbake poky-image-sato" which lets
> say doesn't need gdbm so perl is built without gdbm.
>
> I then "bitbake poky-image-sdk" which does include it. Does perl get
> rebuilt?

In our (WR) environment with the checksums, yes it would get rebuilt as the 
referenced source packages available changes, so the "dynamic build-time 
dependency" set will also change.

> Another issue is the perl packages themselves. These can differ
> depending on whether gdbm was included or not. If I hand you two perl
> package rpms, how do you tell the difference?

We only provide the right set for the filesystem we're constructing.  Obviously 
Poky is different in this regards as there is no single set of available 
packages for a particular build set.. it's all packages.  This is something that 
will have to be figured out.

The only thing that comes to the top of my head right now is the dynamic PR 
numbers in how the git checks do their numbering when things change.  Not 
exactly deterministic though.

> Obviously you can mark them somehow or embed data into them but there is
> no mechanism for this in some packaging systems. It makes maintenance of
> feeds very hard as the build order can drastically change the contents
> of the feeds.
>
> One "middle ground" solution I've considered is extended use of the
> DISTRO_FEATURES variable. By default this would be a pretty inclusive
> list of things like "gdbm". The perl recipe would only include gdbm if
> it was included in the list. The user can then customise the
> DISTRO_FEATURES list and remove things they don't care about. Presumably
> under this scenario, gdbm itself could exit with an error if someone
> tried to build it and it wasn't listed.

I think this is likely the best approach for the way things are done by Poky.  A 
set of known features that have system wide affects.  These features are static 
and allow someone to develop what they want, vs what is "discovered" by the 
dependency mechanisms.

For instance, the following items come to mind as being able to be switched on 
an off "easily" for many systems:

SE Linux
PAM
Berkley DB
gdbm
readline
ncurses
perl
python
Xorg
tcp_wrappers

but unfortunately you start looking at that list, and you think of other things 
like mysql, postgresql, gnutls, openssl... etc..

So whatever mechanism is selected needs to be able to be extended easily.  Even 
if Poky and the Poky recipes don't directly support those extensions, someone 
will want a way to say "I don't want foo", and then in turn go through and 
remove foo from anything that can do it dynamically.

> Checksums will allow us to handle dynamically rebuilding anything that
> changes when you edit that variable.
>
> Does that give us a solution that would work for you?

Ya, the distro_feature list is good.. it gives us a more workable set to develop 
and test against.. but we'll need to have guidelines as to what is appropriate 
(or not) to add to that set.

And similar to the license filtering.. if the functionality is _off_, we should 
also figure out a way to block that component from coming into the build.

--Mark

> Cheers,
>
> Richard
>
>
>


