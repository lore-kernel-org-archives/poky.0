Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22028E00746;
	Sat, 12 May 2012 05:30:54 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C0080F8124D; Sat, 12 May 2012 06:30:53 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E48E2F811E8;
	Sat, 12 May 2012 06:30:43 -0600 (MDT)
Message-ID: <4FAE57F3.5070409@mlbassoc.com>
Date: Sat, 12 May 2012 06:30:43 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4FADA8C4.6020605@mlbassoc.com> <1336808085.2494.243.camel@ted>
	<4FAE512E.8070004@mlbassoc.com> <1336825256.2494.252.camel@ted>
In-Reply-To: <1336825256.2494.252.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>,
	Michael Halstead <michael@yoctoproject.org>
Subject: Re: Stuck fetching latest Yocto kernel?
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
X-List-Received-Date: Sat, 12 May 2012 12:30:54 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-12 06:20, Richard Purdie wrote:
> On Sat, 2012-05-12 at 06:01 -0600, Gary Thomas wrote:
>> On 2012-05-12 01:34, Richard Purdie wrote:
>>> On Fri, 2012-05-11 at 18:03 -0600, Gary Thomas wrote:
>>>> This task has been stuck for ~12 hours now
>>>>      0: linux-yocto-3.0.24+git2+34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23_2+8fd5a8eb4067c7032389e82d54f0e54e1e27f78c-r4 do_fetch (pid 4665)
>>>>
>>>> Is something stuck?
>>>
>>> There was a DDOS attack against servers in the same location at the
>>> Yocto Project servers yesterday which causes a number of problems. I
>>> suspect that this may have caused it to hang :(
>>
>> Doesn't look to have improved yet - I can't even connect to the mirror
>>     http://downloads.yoctoproject.org/mirror/sources/
>>
>
> Hmm, Michael, is there a problem with that address?

I don't know if you can ping (ICMP) it, but at least from here in the US
I can't get to it.  Here's a traceroute from my location:
  Host                                                                         Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. 177-241-234-64.skybeam.com                                                 0.0%     2   14.9  12.9  10.9  14.9   2.8
  2. 221-253-73-208.skybeam.com                                                 0.0%     2   14.7  16.4  14.7  18.2   2.5
  3. g-0-2-rtr-bkl.nco.skybeam.net                                              0.0%     2   14.4  15.7  14.4  17.0   1.8
  4. g-0-3-rtr-mck-core.nco.skybeam.net                                         0.0%     2   16.7  16.7  16.7  16.7   0.0
  5. teng2-4-rtr-mkh-core-1.nco.skybeam.net                                     0.0%     2   13.9  14.0  13.9  14.0   0.0
  6. 62-255-73-208.skybeam.com                                                  0.0%     2   23.7  22.5  21.3  23.7   1.7
  7. teng2-2-den-rtr-1670-bdr-1.skybeam.net                                     0.0%     2   13.5  14.8  13.5  16.1   1.9
  8. xe-8-3-3.edge3.Denver1.Level3.net                                          0.0%     1   18.4  18.4  18.4  18.4   0.0
  9. vlan52.ebr2.Denver1.Level3.net                                             0.0%     1   20.6  20.6  20.6  20.6   0.0
10. ae-2-2.ebr2.Seattle1.Level3.net                                            0.0%     1   57.9  57.9  57.9  57.9   0.0
11. ae-21-52.car1.Seattle1.Level3.net                                          0.0%     1   52.7  52.7  52.7  52.7   0.0
12. 4.53.150.46                                                                0.0%     1   45.0  45.0  45.0  45.0   0.0
13. corv-car1-gw.nero.net                                                      0.0%     1   52.2  52.2  52.2  52.2   0.0
14. ???

I get to the same point if I start the trace in the UK

Trying a simple fetch just hangs:
$ wget http://downloads.yoctoproject.org/mirror/sources/
--2012-05-12 13:29:57--  http://downloads.yoctoproject.org/mirror/sources/
Resolving downloads.yoctoproject.org... 140.211.169.118
Connecting to downloads.yoctoproject.org|140.211.169.118|:80... connected.
HTTP request sent, awaiting response...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

