Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 830ED4C80048
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 10:10:18 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1A14516603C9; Wed, 15 Dec 2010 09:10:18 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D77D016602D4;
	Wed, 15 Dec 2010 09:10:16 -0700 (MST)
Message-ID: <4D08E868.6090606@mlbassoc.com>
Date: Wed, 15 Dec 2010 09:10:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex>
In-Reply-To: <1292404338.26558.1582.camel@rex>
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Wed, 15 Dec 2010 16:10:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/2010 02:12 AM, Richard Purdie wrote:
> On Tue, 2010-12-14 at 21:40 +0800, Kevin Tian wrote:
>> This patch is to fix one weird issue I've keeping seeing recently when using sstate.
>> Even with a minimal build, there're around 50 recipes rebuilt from scratch even though
>> sstate packages in sstate_cache do match. Actually the end result is to just overwrite
>> sstate packages again with same sigature for those recipes.
>> https://lists.yoctoproject.org/pipermail/poky/2010-December/001063.html
>>
>> The cause for this mess is from misinterpretation of the index of a list, which then
>> points to wrong setscene tasks instead of desired ones. The end result is that some
>> tasks which don't need execution are scheduled while other setscene tasks which need
>> run are simply skipped.
>>
>> It's based on Paul's sstate branch.
>
> I've merged this patch into master, good catch and hopefully this gets
> sstate into a good working state.
>
> I've merged an updated version of Paul's sstate branch too.
>
> I'm hoping this makes sstate packages finally usable!

Mucho bettero (TM) :-)

I just tried this from master and at least on the same machine
but different build paths, it performed much as hoped.  My initial
build (step 1) took some 165 minutes, building the same target using
the sstate cache from step 1 took only 22.  The only packages rebuilt
during step 2 were the kernel and the image tasks (I tested this with
my own image+kernel recipes, so it's OK if this differs a little from
other's results).

Bottom line, it seems to be working much better now.

Note to Paul: I also still see lots of LD_PRELOAD messages like
   ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
but they did not seem to affect the result.

Note to Richard: I'm still seeing a ton of Noexec messages every time I rebuild
a package in this tree.  I thought I understood you to say they should happen
at most once?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

