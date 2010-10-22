Return-Path: <gary@mlbassoc.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id C57564C8101B
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 09:04:16 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 0583712EC302; Fri, 22 Oct 2010 09:39:51 -0500 (CDT)
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by pug.o-hand.com (Postfix) with ESMTP id D5B1C12EC27E
	for <poky@o-hand.com>; Fri, 22 Oct 2010 09:39:50 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1F1BF1660777; Fri, 22 Oct 2010 08:04:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4F3031660785;
	Fri, 22 Oct 2010 08:04:01 -0600 (MDT)
Message-ID: <4CC199D1.3000309@mlbassoc.com>
Date: Fri, 22 Oct 2010 08:04:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CADD32A.9010908@mlbassoc.com>	<1286462951.15840.6345.camel@rex>
	<4CADE06F.6040308@mlbassoc.com>	<4CADFA77.3070305@mlbassoc.com>
	<1286475616.15840.6565.camel@rex>	<4CAE54A1.1080803@mlbassoc.com>
	<1287755439.16386.736.camel@rex>
In-Reply-To: <1287755439.16386.736.camel@rex>
Cc: poky@o-hand.com
Subject: Re: SVN woes persist
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 14:04:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 07:50 AM, Richard Purdie wrote:
> On Thu, 2010-10-07 at 17:15 -0600, Gary Thomas wrote:
>> I updated to include these changes and gave it a try.  Here's what I did:
>>
>>     % mkdir /work/new_build
>>     % cd /work/poky_tree
>>     % . poky-init-build-env /work/new_build
>>       ... adjust DL_DIR, etc in conf/local.conf
>>           SSTATE_MIRRORS is not defined yet
>>     % bitbake some-image
>>
>>     % mv sstate-cache sstate
>>     % mv tmp tmp.old
>>       ... adjust conf/local.conf to set SSTATE_MIRRORS like this
>>           SSTATE_MIRRORS ?= "\
>>           file://.* file:///work/new_build/sstate/"
>>
>>     % bitbake some-image
>>
>> First of all, it took an incredible length of time (maybe a minute on my fast machine)
>> to even move past the resolve step.  Then it went off spewing lines about the state files
>> (sadly I didn't save them).  It then proceeded to run through some 322 steps, telling me
>> more about state files.  This took quite some time.  Then it seemed to just start the
>> normal build all over, apparently without regard to any of the sstate info.
>>
>> Did I miss something?  Is this how it should work?
>>
>> Sorry to be such a pain over this, but I'd really like to see this part working.
>> If there's something I can help with it, please let me know - I know my way around
>> Python code, but I don't know all the internals of how you expect this to work.
>
> Sorry not to get back to you sooner, I'm being pulled in a few different
> directions and we're coming up to release.
>
> In my own tests I've noticed a few issues and I've just pushed a number
> of fixes into the master branch which should help in various areas.
>
> With regard to your specific test and problem, it shouldn't rebuild
> everything. It turns out that I'd tested with http:// mirror urls and
> not file:// ones which needed and extra piece of code to handle them
> correctly.
>
> Have another try with master and see if things are better this time!

Will do.

Should this address the similar issue with GIT packages.  These seem
to be updating every time as well:
   git_github.com.wrpseudo.pseudo.git.tar.gz
   git_git.pokylinux.org.wr-kernel-tools.git.tar.gz
   git_git.pokylinux.org.prelink-cross.git.tar.gz

I'm still hoping for a way to have a static (no network needed) setup
soon.  I have to provide such in a training for some of my customers
in about a month :-)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

