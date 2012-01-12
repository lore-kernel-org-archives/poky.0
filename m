Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79671E0123F
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 05:31:03 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2702AF811E6; Thu, 12 Jan 2012 06:31:02 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 59A93F811E5;
	Thu, 12 Jan 2012 06:31:01 -0700 (MST)
Message-ID: <4F0EE095.1090709@mlbassoc.com>
Date: Thu, 12 Jan 2012 06:31:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
In-Reply-To: <20120112131352.GC3452@jama.jama.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 13:31:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 06:13, Martin Jansa wrote:
> On Thu, Jan 12, 2012 at 02:57:21AM -0700, Gary Thomas wrote:
>> I'm trying to understand why sstate sometimes [most times in my case]
>> is not reusable.  Comparing some of the .siginfo files gives me some
>> info, e.g.
>>
>> $ bitbake-diffsigs p60_poky/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i686-2-66ad8e10f260d506d065831a738c04a3_populate-sysroot.tgz.siginfo
>> p60_test_pass1/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i686-2-c7e01d52b467bbe3af0556a43806521a_populate-sysroot.tgz.siginfo
>> Hash for dependent task virtual:nativepseudo_1.2.bb.do_install changed from 9edd41e331b29f08941225709c325a0d to 9865df7c4aa84fdb288c06faecf63426
>>
>> How do I figure out what went into the hash(es) that changed?
>
> Try to look in stamps directory
>
> something like:
> tmp-eglibc/stamps/x86_64-linux/pseudo-native-1.2-r4.do_install.sigdata.504f9aac443e1f135aa2d1cbcf84c614

How can I interpret the contents of that file?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

