Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 089E94C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 08:28:42 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5765B166026A; Tue,  3 May 2011 07:28:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9CE9B166023D;
	Tue,  3 May 2011 07:28:41 -0600 (MDT)
Message-ID: <4DC00309.6040709@mlbassoc.com>
Date: Tue, 03 May 2011 07:28:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DBFE86B.7090702@mlbassoc.com> <1304429108.21461.109.camel@rex>
In-Reply-To: <1304429108.21461.109.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't share build trees?
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
X-List-Received-Date: Tue, 03 May 2011 13:28:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2011 07:25 AM, Richard Purdie wrote:
> On Tue, 2011-05-03 at 05:35 -0600, Gary Thomas wrote:
>> I have a system which has both PowerPC and ARM/OMAP components.
>> They share a common Poky/Yocto layer, so I thought I'd be able
>> to also share a build tree.  So, I tried something like this:
>>     % . /opt/poky/oe-init-build-env my_target
>>     % MACHINE=MY_OMAP bitbake omap-image
>>     % MACHINE=MY_PPC bitbake ppc-image
>>
>> All seemed fine the first time through.  The images were built
>> as expected and worked well.
>>
>> Sadly, when I tried to build something else, e.g.
>>     % MACHINE=MY_OMAP bitbake some-package
>> it set off rebuilding the entire cross tool chain :-(
>>
>> Should this work?  or should I just be aware it does not (and mostly
>> tell my customers not to expect it to work)?
>
> It should work and its the way I use Poky. Did you update the metadata
> between these builds changing the toolchain version for example (e.g.
> gcc 4.6.0 testing)?

No changes, just changed the MACHINE

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

