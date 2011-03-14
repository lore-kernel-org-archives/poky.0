Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1C704C800BE
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 13:01:30 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PzC5C-00061e-3t from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 14 Mar 2011 11:01:30 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Mon, 14 Mar 2011 11:01:24 -0700
Received: from [172.30.80.14] (147.34.91.1) by svr-orw-fem-05 (147.34.97.43)
	with Microsoft SMTP Server id 14.1.270.1;
	Mon, 14 Mar 2011 11:01:23 -0700
Message-ID: <4D7E57E5.3070803@mentor.com>
Date: Mon, 14 Mar 2011 11:01:09 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1299891748.git.sgw@linux.intel.com>	<4D7ACD9C.3010002@linux.intel.com>	<20110312023140.GA4829@sakrah.homelinux.org>	<201103141151.12235.paul.eggleton@linux.intel.com>	<46D5E03C-9927-4F57-A6AC-7024B8478E1C@dominion.thruhere.net>
	<1300107304.30423.12.camel@rex>
In-Reply-To: <1300107304.30423.12.camel@rex>
X-OriginalArrivalTime: 14 Mar 2011 18:01:24.0779 (UTC)
	FILETIME=[D54A4FB0:01CBE271]
Subject: Re: [PATCH 0/1] gnu-config make sure we use perl-native
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
X-List-Received-Date: Mon, 14 Mar 2011 18:01:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2011 05:55 AM, Richard Purdie wrote:
> On Mon, 2011-03-14 at 13:18 +0100, Koen Kooi wrote:
>> Op 14 mrt 2011, om 12:51 heeft Paul Eggleton het volgende geschreven:
>>
>>> On Saturday 12 March 2011 02:31:40 Khem Raj wrote:
>>>>> Back to the drawing board on why the miss-match is occuring in
>>>>> Config.pm then.
>>>>
>>>> somewhere there is /usr/bin/perl referred may be a cross recipe ?
>>>
>>> I've hit this issue this morning, and have filed a bug report:
>>>
>>>   http://bugzilla.pokylinux.org/show_bug.cgi?id=866
>>>
>>> Not sure if it helps but at least it should be easy to reproduce.
>>
>> I haven't checked if the OE .dev and OE core gnu-config are similar, but have a look at:
>>
>> http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=be21179c5321bd0afb9221f020ac12ad75c86a3b
>> http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=edcdefbf6e0675c1bcc1fc4f464f654223380e50
>
> There are a few related patches to this floating around and I know Tom
> did some work in OE.dev to make perl-native an early bootstrap
> dependency.
>
> I've been giving this some thought and given the various goals we have,
> I think the long term best solution is going to be to place perl into an
> isolated bin directory in sysroots, then for anything using really using
> perl-native, add that directory to PATH. This is similar to what we now
> do with the bootstrap toolchains in OE-Core. This way the dependencies
> are deterministic and either perl is or isn't required but we don't
> instantly need to build perl-native or run the risk of nasty loops in
> the early bootstrap. Anything requiring perl-native would add the
> directory to PATH, probably using a tiny class file.
>
> The above patches still would make sense of course.

So, as background, there's a few cases of problems we have to deal with. 
  The ones Koen pointed out are fall-out from switching to making 
perl-native be part of the early bootstrap.

I would encourage someone to look at solving this problem in another way 
but I ended up finding that honestly, getting perl-native to build 
before we did almost anything else wasn't as hard as I feared (based on 
a previous attempt at doing it) and unless we can get things to the 
point where only perl needs perl-native (which should possibly be 
perl-cross) you can still hit some nasty corner cases.  And yes, doing 
this would mean changing the libperl-foo-native things into installing 
with host cpan into the TMPDIR which may or may not be easier said than 
done.

-- 
Tom Rini
Mentor Graphics Corporation

