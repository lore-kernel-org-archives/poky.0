Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD1F74C800A4
	for <poky@lists.pokylinux.org>; Tue,  8 Feb 2011 09:49:07 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5A50116601EA; Tue,  8 Feb 2011 08:49:02 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9963816601BD;
	Tue,  8 Feb 2011 08:49:01 -0700 (MST)
Message-ID: <4D5165ED.3090806@mlbassoc.com>
Date: Tue, 08 Feb 2011 08:49:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D514E45.3020506@mlbassoc.com> <4D516415.1060206@windriver.com>
In-Reply-To: <4D516415.1060206@windriver.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Configure error
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
X-List-Received-Date: Tue, 08 Feb 2011 15:49:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 08:41 AM, Mark Hatle wrote:
> On 2/8/11 8:08 AM, Gary Thomas wrote:
>> A package I imported from OE (long ago) no longer builds
>> with this error:
>> | ERROR: This autoconf log indicates errors, it looked at host includes.
>>
>> It's not obvious to me what the problem is nor how to fix it.
>> Can someone help with this, please?
>>
>> See the logs at
>>      http://www.mlbassoc.com/poky/ConfigureFailure/config.log
>>      http://www.mlbassoc.com/poky/ConfigureFailure/log.do_configure
>>
>> Thanks
>>
>
> The check looks at the config.log.  It is looking for instances where unsafe
> compilation or include usage occurs.  In this case it wasn't actually host
> includes.. so there is a bug in the error message.  From the config.log:
>
>> configure:7139: ccache powerpc-poky-linux-gcc -mcpu=603e  -mhard-float --sysroot=/home/local/my_ppc_poky/tmp/sysroots/my8379 -o conftest -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed conftest.c -ldlpi -L/lib -lpcap>&5
>> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: warning: library search path "/lib" is unsafe for cross-compilation
>> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: cannot find -ldlpi
>> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: skipping incompatible /lib/libgcc_s.so.1 when searching for libgcc_s.so.1
>> collect2: ld returned 1 exit status
>
> In the above snippet you'll see 'warning: library search path "/lib" is unsafe
> for cross-compilation'.  This indicates that the package passed in a -L/lib, and
> the linker caught this and issued a warning.
>
> The fix is to figure out why the configuration file attempted to pass -L/lib,
> and stop it from occurring.
>
> Please file a bug on the log message being confusing and I'll attempt to get
> that fixed.. (or a patch)  ;)

Done, thanks.  http://bugzilla.pokylinux.org/show_bug.cgi?id=702

Now to figure out how to fix it :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

