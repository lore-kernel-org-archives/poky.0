Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF9FE01302
	for <poky@yoctoproject.org>; Tue,  9 Oct 2012 05:45:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 78A99F81204; Tue,  9 Oct 2012 06:45:38 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CC2B0F811FB;
	Tue,  9 Oct 2012 06:45:37 -0600 (MDT)
Message-ID: <50741C8A.2070400@mlbassoc.com>
Date: Tue, 09 Oct 2012 06:46:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <5072FBB8.9060703@mlbassoc.com> <1349735995.15658.156.camel@ted>
	<50741A47.1010107@mlbassoc.com> <2044692.De8MTCDQ8r@helios>
In-Reply-To: <2044692.De8MTCDQ8r@helios>
Cc: poky@yoctoproject.org
Subject: Re: Files missing from package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Oct 2012 12:45:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-10-09 06:41, Paul Eggleton wrote:
> On Tuesday 09 October 2012 06:36:23 Gary Thomas wrote:
>> On 2012-10-08 16:39, Richard Purdie wrote:
>>> PACKAGE_BEFORE_PN lets you put the package specifically after
>>> -dev/-dbg/-doc/-locale and so on but before PN.
>>
>> I needed to write this as
>>     PACKAGES_BEFORE_${PN} += "${PN}-tools"
>
> Just to be clear the variable is called PACKAGE_BEFORE_PN and not
> PACKAGES_BEFORE_PN; otherwise yes.

Indeed, that does work.  Sorry about my typo...

How did 'PACKAGES_BEFORE_${PN}' manage to work?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

