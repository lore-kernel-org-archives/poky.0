Return-Path: <SRS0=BzwM9V=CR=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout09.eigbox.net (bosmailout09.eigbox.net [66.96.187.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9167E013A8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 17:52:01 -0700 (PDT)
Received: from bosmailscan06.eigbox.net ([10.20.15.6])
	by bosmailout09.eigbox.net with esmtp (Exim) id 1SHlmy-0002lo-Lo
	for poky@yoctoproject.org; Tue, 10 Apr 2012 20:52:00 -0400
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan06.eigbox.net with esmtp (Exim)
	id 1SHlmx-0004yN-1W; Tue, 10 Apr 2012 20:51:59 -0400
Received: from bosauthsmtp06.eigbox.net ([10.20.18.6])
	by bosimpout01.eigbox.net with NO UCE
	id wQry1i00407rX7u01QrygZ; Tue, 10 Apr 2012 20:51:58 -0400
X-Authority-Analysis: v=2.0 cv=eq1oOPVX c=1 sm=1
	a=ca8V9l48i+6lF+TbartITQ==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=Lk7aQFya1KUA:10 a=IkcTkHD0fZMA:10 a=2gMqQXS_AAAA:8
	a=0s0_Gu_BMERRWhyt10wA:9
	a=QEXdDO2ut3YA:10 a=WgOm5YoSbN4A:10 a=fIc3/5IyPUehxkj7BpkQ7Q==:117
X-EN-OrigOutIP: 10.20.18.6
X-EN-IMPSID: wQry1i00407rX7u01QrygZ
Received: from pool-108-11-41-42.atclnj.east.verizon.net ([108.11.41.42]
	helo=[192.168.1.3]) by bosauthsmtp06.eigbox.net with esmtpa (Exim)
	id 1SHlmw-0000W3-KI; Tue, 10 Apr 2012 20:51:58 -0400
Message-ID: <4F84D5A9.3080509@mindchasers.com>
Date: Tue, 10 Apr 2012 20:51:53 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4F7B3409.8000905@mlbassoc.com>
	<CABcZANkiFDcOdLfJy5y0OZTkQzUEaC3ip_CF84iZKp6MV3aZYQ@mail.gmail.com>
In-Reply-To: <CABcZANkiFDcOdLfJy5y0OZTkQzUEaC3ip_CF84iZKp6MV3aZYQ@mail.gmail.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.11.41.42
X-EN-OrigHost: pool-108-11-41-42.atclnj.east.verizon.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: ccache
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
X-List-Received-Date: Wed, 11 Apr 2012 00:52:02 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2012 01:36 PM, Chris Larson wrote:
> On Tue, Apr 3, 2012 at 10:31 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> Why is ccache being used for Poky/Yocto builds?  My understanding is
>> that it's a win for _rebuilds_ of the same/related files, but there's
>> not a whole lot of that going on.
>>
>> If I build core-image-sato from scratch, I end up with ${BUILD}/tmp/ccache
>> which is 1.8GB - quite a bite!  Is there some way to disable this?, other
>> than not have ccache on my host computer (not an option as it is useful
>> for other builds I do)
>
> I think the default behavior of using ccache when it's installed is
> extremely bad, and dangerous, in that the ccache object cache is of
> both limited usefulness, as you say, and the object cache can get
> corrupted, leading to extremely odd behavior (and it's rarely a place
> you think to look as a cause). At Mentor we disabled this behavior,
> and I really, really think we should do so in the default oe-core
> bitbake.conf.


It would be nice / cleaner to not build out the hollow ccache directory 
structure under tmp when ccache isn't installed or being used.  Seeing 
it there under tmp with levels of empty sub directories beneath it is 
somewhat confusing.






















