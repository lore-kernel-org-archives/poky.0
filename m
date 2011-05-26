Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49B4E4C804F7
	for <poky@yoctoproject.org>; Thu, 26 May 2011 17:05:25 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BD8D116602FE; Thu, 26 May 2011 16:05:24 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4CED51660133;
	Thu, 26 May 2011 16:05:13 -0600 (MDT)
Message-ID: <4DDECE99.70109@mlbassoc.com>
Date: Thu, 26 May 2011 16:05:13 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DDBD90F.9080706@mlbassoc.com> <4DDECCE7.4010501@linux.intel.com>
In-Reply-To: <4DDECCE7.4010501@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Over-exuberant error printing?
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
X-List-Received-Date: Thu, 26 May 2011 22:05:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/26/2011 03:57 PM, Darren Hart wrote:
>
>
> On 05/24/2011 09:13 AM, Gary Thomas wrote:
>> Building from today's master (3504c3a9b1af5a3405e0a03a5ade50b82535b6dd)
>> if I get an error, I get two lines printed for each real line, e.g.
>> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
>> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
>> | ERROR:   File "sstate_task_postfunc", line 10, in<module>
>> | ERROR:   File "sstate_task_postfunc", line 10, in<module>
>> | ERROR:
>> | ERROR:
>> | ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
>> | ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
>> etc.
>>
>> This is new behavior - any ideas?
>>
>
> I've been seeing this as well and hadn't dug in to sort it out yet. You
> said it is new behavior, have you bisected to determine when it occured?
>

Not yet - I was mostly hoping that someone else had seen such behaviour
(as you obviously have) and verified that I'm not the only one :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

