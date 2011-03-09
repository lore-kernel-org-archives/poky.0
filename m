Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DFA44C800A0
	for <poky@lists.pokylinux.org>; Wed,  9 Mar 2011 12:42:04 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 87F52166053A; Wed,  9 Mar 2011 11:42:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A711E166021E;
	Wed,  9 Mar 2011 11:42:01 -0700 (MST)
Message-ID: <4D77C9F9.4040309@mlbassoc.com>
Date: Wed, 09 Mar 2011 11:42:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D6675E0.2040703@mlbassoc.com> <4D6B3BA3.9050303@intel.com>	
	<4D6F9018.1000605@mlbassoc.com> <4D704768.2090100@intel.com>	
	<4D70CE46.7040104@mlbassoc.com> <1299634187.602.546.camel@rex>
In-Reply-To: <1299634187.602.546.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Wed, 09 Mar 2011 18:42:04 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/11 18:29, Richard Purdie wrote:
> On Fri, 2011-03-04 at 04:34 -0700, Gary Thomas wrote:
>> On 03/03/2011 06:59 PM, Zhai, Edwin wrote:
>>> Gary Thomas wrote:
>>>> On 02/27/2011 11:07 PM, Zhai, Edwin wrote:
>>>>> Thanks for trying this.
>>>>> sstate function is a little bit fragile recently. I'll look at it after fixing some other bugs.
>>>>
>>>> Any progress on this?
>>>>
>>>> Should I file this as a bug?
>>>>
>>>
>>> We have one http://bugzilla.pokylinux.org/show_bug.cgi?id=788
>>
>> Yes, that addresses the random errors (which don't seem to have any affect)
>>
>> However, even without those errors, the sstate information is not being
>> used at all.  In my experiment, a new tree (with the old sstate pointed
>> to by SSTATE_MIRRORS) is executing a full build every time.
>>
>> Did I miss something?
>
> This should be fixed by the couple of recent changes in master, if you
> could check this is working I'd appreciate it as we are getting close to
> the release and I'd like this to be working.

I updated to master (fab742bd4693ed3092690a20dd32d53fe27c3d4c) and tried again.
I don't see any difference - the run using the sstate cache as a mirror
seems to do all the same work as without.  Here's how I tested it.

* Build original tree
   % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step1
   ... adjust conf/local.conf
   % bitbake amltd-console-image

* Rebuild, using previous result for SSTATE_MIRRORS
   % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step2
   ... adjust conf/local.conf
   % bitbake amltd-console-image

The only difference between the two runs is enabling SSTATE_MIRRORS in local.conf
   %  diff -u /local/p60_step?/conf/local.conf
    --- /local/p60_step1/conf/local.conf    2011-03-09 08:28:18.266933061 -0700
    +++ /local/p60_step2/conf/local.conf    2011-03-09 09:57:51.365932951 -0700
    @@ -53,4 +53,7 @@
     IMAGE_LINGUAS ?= "en-us"

     # Minimize feature set
     DISTRO_FEATURES ?= "alsa"
    +SSTATE_MIRRORS ?= "\
    +file://.* file:///local/p60_step1/sstate-cache/"

The results seem to have gone through all the same steps (or nearly so).  The output
from the runs is at
   http://www.mlbassoc.com/poky/build.step1
   http://www.mlbassoc.com/poky/build.step2

Comparing the two build trees:
   % ls /local/p60_step1/tmp/work/*/*/temp/log.do_compile | wc
     144     144   12521
   % ls /local/p60_step2/tmp/work/*/*/temp/log.do_compile | wc
     143     143   12427
   % du -s /local/p60_step?
   15229296        /local/p60_step1
   15162760        /local/p60_step2

I know this procedure used to work (or at least close).  Am I doing
something wrong?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

