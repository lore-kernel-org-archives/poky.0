Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by mx1.pokylinux.org (Postfix) with ESMTP id D48264C80BCF
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 12:07:02 -0600 (CST)
Received: from gandalf.denix.org ([unknown] [71.255.227.242])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LBM00ATGQBNYZH2@vms173017.mailsrvcs.net> for
	poky@yoctoproject.org; Tue, 09 Nov 2010 12:07:01 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id D891314AF6A; Tue,
	09 Nov 2010 13:06:58 -0500 (EST)
Date: Tue, 09 Nov 2010 13:06:58 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Ryan D Phillips <ryan_d_phillips@dell.com>
Message-id: <20101109180658.GB8761@denix.org>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
	<20101109170207.GA8761@denix.org> <4CD98347.9070402@linux.intel.com>
	<4CD98638.8050306@dell.com>
MIME-version: 1.0
In-reply-to: <4CD98638.8050306@dell.com>
User-Agent: Mutt/1.5.16 (2007-06-09)
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
X-List-Received-Date: Tue, 09 Nov 2010 18:07:03 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Nov 09, 2010 at 11:34:48AM -0600, Ryan D Phillips wrote:
> On 11/9/2010 11:22 AM, Darren Hart wrote:
>> On 11/09/2010 09:02 AM, Denys Dmytriyenko wrote:
>>> On Tue, Nov 09, 2010 at 10:31:37AM -0600, Ryan_D_Phillips@Dell.com wrote:
>>>> Good Day!
>>>>
>>>> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux 
>>>> Developer,
>>>> currently a software developer architecting an embedded firmware 
>>>> solution on
>>>> OE for my employer. With the release of Yocto, we are extremely 
>>>> interested
>>>> in trying it out and possibly contributing to the project. My cohort 
>>>> working
>>>> with me is Sean Hudson (irc: darknighte), and is someone who you may see
>>>> contributions from as well.
>>>>
>>>> A major stumbling block we must work around is the restrictive firewall 
>>>> and
>>>> git checkouts. We have found out the git-http-backend works extremely 
>>>> well,
>>>> and are requesting this support on git.pokylinux.org. We suspect other
>>>> people within larger corporations would have a similar problem, and by
>>>> adding this support would help the community at large.
>>>
>>> Ryan,
>>>
>>> It's nice to see another Gentooist!
>>>
>>> Have you looked at core.gitProxy setting or GIT_PROXY_COMMAND environment 
>>> in
>>> git-config(1)? People behind strict firewalls been using that for years 
>>> to
>>> tunnel their git access through proxies. Used together with things like
>>> netcat, socat or corkscrew work miracles even with HTTP-only proxies!
>>
>> It is certainly sub-ideal (but so is git over http), but it should
>> provide the functionality you need. Please give the above a shot and if
>> for some reason it is insufficient, please let us know.
>>
>
> I don't understand the comment that git over http is sub-ideal (see github 
> using https for git by default), but the issue we have is the proxy server 
> restricts outbound ports to 80 and 443, and doesn't allow CONNECT.

git-over-http used to be sub-ideal until version 1.6.6 of git, as it only 
provided "dumb" read-only access. Now, with git-http-backend(1) there is a 
"smart" transport available, which can also handle pushing over https...

http://www.kernel.org/pub/software/scm/git/docs/git-http-backend.html
http://progit.org/2010/03/04/smart-http.html

-- 
Denys

