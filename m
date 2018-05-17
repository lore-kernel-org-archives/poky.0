Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA01FE00C2B; Thu, 17 May 2018 03:49:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADBFE00BFF
	for <poky@yoctoproject.org>; Thu, 17 May 2018 03:49:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 9E26612B099;
	Thu, 17 May 2018 12:49:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id sSkP0CxuKr_M; Thu, 17 May 2018 12:49:25 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id EB7F112B0AD;
	Thu, 17 May 2018 12:49:25 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 17 May 2018 12:49:25 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Arno Steffens <star@gmx.li>
In-Reply-To: <trinity-ecca3500-7d71-44c4-83cf-1c6c394eb3a5-1526553333206@3c-app-gmx-bs33>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
	<trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
	<1fd67bfccb82049ff75349a65d5bc81c@basmevissen.nl>
	<trinity-bafd13ab-8a55-4361-9796-d4dec1738677-1526466175205@3c-app-gmx-bs71>
	<trinity-1da387ae-4287-4deb-9844-59c3a2016d56-1526479553134@3c-app-gmx-bs71>
	<bc174232c043d0844f2a95fc32ca2f9f@basmevissen.nl>
	<trinity-16addffd-a4be-4adb-8d17-45c6ef608732-1526540296031@3c-app-gmx-bs28>
	<ea06c8eca7b0ca720d98f9980076ddc5@basmevissen.nl>
	<trinity-ecca3500-7d71-44c4-83cf-1c6c394eb3a5-1526553333206@3c-app-gmx-bs33>
Message-ID: <53e5ffa91a89ac1b59194be87f481a7d@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: poky@yoctoproject.org
Subject: Re: Yocto 2.5 and problem with pseudo-native-1.9.0
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
X-List-Received-Date: Thu, 17 May 2018 10:49:29 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2018-05-17 12:35, Arno Steffens wrote:
>> Gesendet: Donnerstag, 17. Mai 2018 um 09:33 Uhr
>> Von: "Bas Mevissen" <abuse@basmevissen.nl>
>> An: "Arno Steffens" <star@gmx.li>
>> Cc: poky@yoctoproject.org, "Richard Purdie" 
>> <richard.purdie@linuxfoundation.org>
>> Betreff: Re: Aw: Re:  Re: [poky] Yocto 2.5 and problem with 
>> pseudo-native-1.9.0
>> 
>> On 2018-05-17 08:58, Arno Steffens wrote:
>> 
>> (...)
>> >
>> > Thanks Bas,
>> > indeed, that finally solves the issue - great! Thank you so much!
>> > Look what will happen next.
>> 
>> As you cannot download from git repos using the git protocol, you will
>> be dependent on the tar files that are hosted by the Yocto project.
>> 
>> > Not sure I understand Richards explanation, but if there are more
>> > problems like that - can/shall I report it here again?
>> 
>> I think so. As Richard indicated, they sometimes get outdated. As I
>> assume most people use git clones instead of the fallback tar files,
>> problems will go unnoticed for a long time otherwise.
>> 
>> Note that using the tar files is very bandwidth inefficient, as you 
>> need
>> to download a complete new tar file for every small change that you 
>> need
>> to pull in. So maybe that can give you some leverage to your employer 
>> to
>> open up git access.
> 
> 2.5 sumo is rather new ...
> 

Yocto versions in active support and especially shortly after release 
receive most updates. So one might expect to have regular updates to

> Our IT teams give signs to open the port. Is TCP-Port 9418 sufficient?

That should be fine. Ask them for outgoing port TCP/22 as well, see 
below.

> 
> I found an issue with
> ptest-runner-2.1.1.bb
> prelink-git.bb
> and finally (that is what I couldn't repair)
> mtd-utils.
> 
> There your workaround didn't do the job.

Information on http://git.infradead.org/linux-mtd.git indeed seems to 
indicate no http(s) support is available. You might try your luck with 
ssh.


-- Bas.

