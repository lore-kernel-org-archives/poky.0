Return-Path: <ryan_d_phillips@dell.com>
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
	[143.166.85.206])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8EFB4C810CE
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 11:34:48 -0600 (CST)
X-Loopcount0: from 10.210.138.63
Message-ID: <4CD98638.8050306@dell.com>
Date: Tue, 09 Nov 2010 11:34:48 -0600
From: Ryan D Phillips <ryan_d_phillips@dell.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.8) Gecko/20100802 Thunderbird/3.1.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
	<20101109170207.GA8761@denix.org>
	<4CD98347.9070402@linux.intel.com>
In-Reply-To: <4CD98347.9070402@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Introduction and Request for HTTP Git Access
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
X-List-Received-Date: Tue, 09 Nov 2010 17:34:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/9/2010 11:22 AM, Darren Hart wrote:
> On 11/09/2010 09:02 AM, Denys Dmytriyenko wrote:
>> On Tue, Nov 09, 2010 at 10:31:37AM -0600, Ryan_D_Phillips@Dell.com wrote:
>>> Good Day!
>>>
>>> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux Developer,
>>> currently a software developer architecting an embedded firmware solution on
>>> OE for my employer. With the release of Yocto, we are extremely interested
>>> in trying it out and possibly contributing to the project. My cohort working
>>> with me is Sean Hudson (irc: darknighte), and is someone who you may see
>>> contributions from as well.
>>>
>>> A major stumbling block we must work around is the restrictive firewall and
>>> git checkouts. We have found out the git-http-backend works extremely well,
>>> and are requesting this support on git.pokylinux.org. We suspect other
>>> people within larger corporations would have a similar problem, and by
>>> adding this support would help the community at large.
>>
>> Ryan,
>>
>> It's nice to see another Gentooist!
>>
>> Have you looked at core.gitProxy setting or GIT_PROXY_COMMAND environment in
>> git-config(1)? People behind strict firewalls been using that for years to
>> tunnel their git access through proxies. Used together with things like
>> netcat, socat or corkscrew work miracles even with HTTP-only proxies!
>
> It is certainly sub-ideal (but so is git over http), but it should
> provide the functionality you need. Please give the above a shot and if
> for some reason it is insufficient, please let us know.
>

I don't understand the comment that git over http is sub-ideal (see 
github using https for git by default), but the issue we have is the 
proxy server restricts outbound ports to 80 and 443, and doesn't allow 
CONNECT.

Regards,
Ryan


