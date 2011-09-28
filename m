Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00621E011BA
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 19:25:14 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5E6E51660A10; Tue, 27 Sep 2011 20:25:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 50601166096C;
	Tue, 27 Sep 2011 20:25:11 -0600 (MDT)
Message-ID: <4E828587.70308@mlbassoc.com>
Date: Tue, 27 Sep 2011 20:25:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E81DC24.8020307@mlbassoc.com> <1317140228.26109.164.camel@ted>
In-Reply-To: <1317140228.26109.164.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Sharing sstate
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
X-List-Received-Date: Wed, 28 Sep 2011 02:25:15 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-27 10:17, Richard Purdie wrote:
> On Tue, 2011-09-27 at 08:22 -0600, Gary Thomas wrote:
>> I'd really like to be able to share sstate effectively.  One problem I have with
>> it is the size - for a build of my system (something similar to core-image-sato
>> on BeagleBoard), the sstate cache for a build-from-scratch is nearly 5GB!  Not
>> exactly simple to share across sites.
>>
>> It seems to me that maybe I don't need to share everything.  For example, the
>> webkit-gtk package:
>>
>> $ ls -l sstate-cache/*webkit-gtk*
>> -rw-rw-r-- 1 gary gary 331221793 Sep 23 16:21
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz
>> -rw-rw-r-- 1 gary gary     12740 Sep 23 16:21
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz.siginfo
>> -rw-r--r-- 1 gary gary 326376172 Sep 23 16:15
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz
>> -rw-r--r-- 1 gary gary     21652 Sep 23 16:15
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz.siginfo
>> -rw-r--r-- 1 gary gary 665832323 Sep 23 16:19
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz
>> -rw-r--r-- 1 gary gary     98746 Sep 23 16:19
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz.siginfo
>> -rw-rw-r-- 1 gary gary      3117 Sep 23 15:38
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz
>> -rw-rw-r-- 1 gary gary      8359 Sep 23 15:38
>> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz.siginfo
>>
>> Would it be possible to only share part of this, maybe the "package" file?
>> It seems to me that this could make the needed (shared) cache much smaller...
>
> The build will only use the pieces it needs. If your build only needs
> the deploy-ipk pieces and doesn't need to write new packages files it
> can survive without the package part. If it doesn't need to compile
> something against webkit, it won't use the populate-sysroot file.
>
> So what I'm saying is you likely could get away with not sharing the
> *_package files at least. The only downside is if you turn on rpm
> packaging it would have to rebuild.

I tried removing the *package* files and the build ended up rebuilding
most things, in particular the toolchain bits.  That's the part I really
want to be able to package the sstate for :-(

So then I tried having just a small subset of packages in the sstate
cache, but including all the pieces of each, like this:

rsync -auv sstate-cache/*eglibc-locale* \
   sstate-cache/*autoconf-native* \
   sstate-cache/*automake-native* \
   sstate-cache/*bzip2-native* \
   sstate-cache/*gettext-native* \
   sstate-cache/*gnu-config-native* \
   sstate-cache/*help2man-native* \
   sstate-cache/*libtool-native* \
   sstate-cache/*libxml2-native* \
   sstate-cache/*m4-native* \
   sstate-cache/*ncurses-native* \
   sstate-cache/*openssl-native* \
   sstate-cache/*pkgconfig-native* \
   sstate-cache/*pseudo-native* \
   sstate-cache/*python-native* \
   sstate-cache/*quilt-native* \
   sstate-cache/*readline-native* \
   sstate-cache/*sqlite3-native* \
   sstate-cache/*tar-replacement-native* \
   sstate-cache/*zlib-native* \
   sstate-cache/*gcc* \
   sstate-cache/*binutils* \
   sstate-cache/*eglibc* \
   /tmp/sstate-test

This also fails, but differently:

ERROR: Task 756 (/home/local/poky-multi/meta/recipes-devtools/libtool/libtool-cross_2.4.bb, do_configure) failed with exit code '1'

looking at the config.log:

/home/local/p60_sstate_test/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-amltd-linux-gnueabi/../../libexec/armv7a-vfp
-neon-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi/4.6.1/cc1: error while loading shared libraries: libmpc.so.2: cann
ot open shared object file: No such file or directory

Filed as http://bugzilla.pokylinux.org/show_bug.cgi?id=1536

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

