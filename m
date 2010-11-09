Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3968C4C80815
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 10:12:04 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D17B8166088C; Tue,  9 Nov 2010 09:12:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6CBD11660876;
	Tue,  9 Nov 2010 09:12:03 -0700 (MST)
Message-ID: <4CD972D3.6070305@mlbassoc.com>
Date: Tue, 09 Nov 2010 09:12:03 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4CD9456C.7090907@mlbassoc.com> <4CD968B0.2050505@windriver.com>
In-Reply-To: <4CD968B0.2050505@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: New staging error
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
X-List-Received-Date: Tue, 09 Nov 2010 16:12:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2010 08:28 AM, Mark Hatle wrote:
> On 11/9/10 6:58 AM, Gary Thomas wrote:
>> With the new staging (master of 2010-11-08), I'm seeing lots of these
>> messages
>> when I build from scratch:
>>
>> NOTE: Running setscene task 81 of 364
>> (/local/poky-amltd/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_populate_sysroot_setscene)
>>
>> NOTE: package netbase-4.41-r1: task do_populate_sysroot_setscene: Started
>> NOTE: Staging package
>> /home/local/poky-new2/sstate-cache/sstate-netbase-ppc603e-poky-linux-4.41-r1-ppc603e-1-83766f23e3f9013cb26b768478638f1d_populate-sysroot.tgz
>> does not exist
>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
>> preloaded: ignored.
>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
>> preloaded: ignored.
>>
>> Questions:
>> * What does this mean? Can I fix it somehow?
>> * If it's ignored, it should be a WARNING, not an ERROR
>>
>
> It is an error, but unfortunately not one that can caught. (The error
> comes from ld.so, which will happily ignore a failed preload. If someone
> knows how to make it fatal, we should do so!)
>
> I've normally seen the libpseudo.so failed to preload when either you
> are running as root (as a safety precaution against tampering), you've
> upgraded your host's libc since pseudo was built, or suddenly you are
> running 64-bit (or 32-bit) binaries when pseudo is built for the other
> architecture type.

None of these are the case.  I was simply trying to test/verify the staging
mechanism.  I think the error happens because LD_PRELOAD=libpseudo.so seems
to be set, even before the sysroots tree where it lives has been populated.

> I'd suggest checking to see if you can figure out what caused the
> message so we can get it fixed. But if you are unable to figure it out,
> you'll need to clean and rebuild pseudo-native. (I don't remember the
> clean target to ignore the sstate cache... or maybe we're planning on
> adding one and haven't yet.) You may need to 'rm' pseudo from the sstate
> cache. To force it to build fresh.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

