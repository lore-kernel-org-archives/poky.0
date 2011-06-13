Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFD084C80052
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 16:18:42 -0500 (CDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 13 Jun 2011 14:18:41 -0700
Received: by pzd13 with SMTP id 13so540811pzd.25
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 14:18:41 -0700 (PDT)
Received: by 10.143.62.8 with SMTP id p8mr951101wfk.328.1307999921280;
	Mon, 13 Jun 2011 14:18:41 -0700 (PDT)
Received: from [10.6.18.227] (c-71-193-189-117.hsd1.wa.comcast.net
	[71.193.189.117])
	by mx.google.com with ESMTPS id o16sm6365683wff.1.2011.06.13.14.18.39
	(version=SSLv3 cipher=OTHER); Mon, 13 Jun 2011 14:18:40 -0700 (PDT)
Message-ID: <4DF67EAE.809@intel.com>
Date: Mon, 13 Jun 2011 14:18:38 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>	
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>	
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
In-Reply-To: <1307999666.15712.286.camel@rex>
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 21:18:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2011 02:14 PM, Richard Purdie wrote:
> On Mon, 2011-06-13 at 14:09 -0700, Saul Wold wrote:
>> On 06/13/2011 02:04 PM, Jeff Mitchell wrote:
>>> On 06/13/2011 04:42 PM, Saul Wold wrote:
>>>> Understood, but not fixed yet!
>>>>
>>>> The workaround at this point is to
>>>>
>>>> "bitbake -c cleansstate autoconf-native automake-native"
>>>>
>>>> Thanks should resolve this issue.
>>>
>>> Running that now, seems to be working. Would a simple revision bump to
>>> those two packages fix the problem for any others?
>>>
>> That's my thought, but this issue is that it now uses the host perl, not
>> any perl built by poky, so I am concerned that it also really need to
>> inherit perlnative and I have not completely tested that yet.
>
> No, everything is fine and working as intended and they should not need
> perl-native. We should have bumped PR in hindsight and still could do
> so, that would be fine.
>
Thanks for that confirmation with all the perl machinations I was not 
sure which perl those tools should really be using.  Given that, if you 
have not already got a commit for that I will offer one up.

Sau!

> Cheers,
>
> Richard
>
>


