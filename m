Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F3014C80815
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:31:39 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5F6141660940; Mon,  8 Nov 2010 14:31:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id A7546166093D;
	Mon,  8 Nov 2010 14:31:37 -0700 (MST)
Message-ID: <4CD86C39.6080005@mlbassoc.com>
Date: Mon, 08 Nov 2010 14:31:37 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D190FD631@shsmsx502.ccr.corp.intel.com>	<1289162495.28481.16096.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D190FD851@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D190FD851@shsmsx502.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] two sstate fixes
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
X-List-Received-Date: Mon, 08 Nov 2010 21:31:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2010 05:49 PM, Tian, Kevin wrote:
>> From: Richard Purdie [mailto:rpurdie@linux.intel.com]
>> Sent: Monday, November 08, 2010 4:42 AM
>>
>> On Fri, 2010-11-05 at 15:53 +0800, Tian, Kevin wrote:
>>> meta/classes/package.bbclass |    1 +
>>>   meta/conf/distro/poky.conf   |    2 +-
>>>   2 files changed, 2 insertions(+), 1 deletion(-)
>>>
>>> commit bb9d4efa4076cfcf0998ecafb6d6b0969b97d224
>>> Author: Kevin Tian<kevin.tian@intel.com>
>>> Date:   Fri Nov 5 15:16:50 2010 +0800
>>>
>>>      poky.conf: add PWD to BB_HASHBASE_WHITELIST
>>>
>>>      Without doing this I can't reuse prebuilts generated from one directory in another
>>>      build directory which is really not comfortable for developers. Due to difference
>>>      on PWD variable, base hash becomes different for every sstate package.
>>>
>>>      So here PWD is added to the hase base whitelist, which makes most prebuilts reusable
>>>      now in a different build directory. However there still remains one issue about
>>>      do_populate_sysroot sstate package. Absolute path is encoded in this task which
>>>      then blocks reuse on them. Perhaps we need some redesign for do_populate_sysroot
>> into
>>>      two stages, with all absolute path related operations moved to the 2nd stage. This
>>>      way then the 1st stage can be reused.
>>
>>>      Partially fix [BUGID #522]
>>>
>>>      Signed-off-by Kevin Tian<kevin.tian@intel.com>
>>>
>>> commit 599ccdfa9d53e43fb2e44fdfd57de5d91868428b
>>> Author: Kevin Tian<kevin.tian@intel.com>
>>> Date:   Tue Oct 26 15:54:43 2010 +0800
>>>
>>>      package.bbclass: make sure 'sysroots' created before lockfile
>>>
>>>      package sstate requires a lock under sysroots/, which however may not be
>>>      created when sstate_setscene functions are executed and then causes failures.
>>>      here we make sure 'sysroots' created before do_package_setscene is executed.
>>>
>>>      Signed-off-by: Kevin Tian<kevin.tian@intel.com>
>>> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master
>>
>> Good catches, I've merged these, thanks!
>>
>> You're right btw, we shouldn't be using hardcoded paths and we should
>> fix that. Can you confirm you were using staging packages from a recent
>> poky build though (0.9 release at least) as there were some bugs fixed
>> in that area coming up to release.
>>
>
> I forgot the exact commit after the rebase before sending pull request, but I know
> it's around the 0.9 release. So I'll make another build to make sure it's still the problem. :-)

These changes seem to have vastly improved this mechanism.  I'm still
testing, but I was [finally] able to actually use the sstate info to
make a new build.

Hooray :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

