Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D27C4E006CA;
	Sat, 28 Dec 2013 02:19:44 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 55F888A2; Sat, 28 Dec 2013 11:19:56 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.1.28] (AReims-652-1-238-43.w83-198.abo.wanadoo.fr
	[83.198.181.43])
	by mail.free-electrons.com (Postfix) with ESMTPSA id D669383D;
	Sat, 28 Dec 2013 11:19:55 +0100 (CET)
Message-ID: <52BEA5BE.2020107@free-electrons.com>
Date: Sat, 28 Dec 2013 11:19:42 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
In-Reply-To: <20131228083238.GY3706@jama>
X-Enigmail-Version: 1.5.2
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
Subject: Re: X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Sat, 28 Dec 2013 10:19:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi Martin,

On 28/12/2013 09:32, Martin Jansa wrote:
> On Fri, Dec 27, 2013 at 10:22:43PM +0100, Alexandre Belloni wrote:
>> Hi,
>>
>> When using core-image-sato (latest dora), I encountered again an issue
>> that I once solved by hacking around it. It has the following symptoms:
>>  - touchscreen calibration doesn't start the first time the board is
booted
>
> see
>
http://git.openembedded.org/meta-openembedded/commit/?id=98bfe33760acb74b67eba9d58ea7cac8cad6d810
>
> I'll backport it to dora

That won't be enough, if you backport that to dora, the target will
simply hang when executing 80matchboxkeyboard.shbg as it will wait
forever. The file extensions have a special meaning in the Xsession
script coming from x11-common.

That's why I'm suggesting migrating all the poky recipes to the
xserver-common style and use xserver-common instead of x11-common. I
don't have the history but it seems that x11-common is quite outdated
(I'm getting that feeling from the xtscal dependency). Do we still want
to support kdrive ? Also, something is clearly wrong as
xserver-common_1.34.bb has:
RCONFLICTS_${PN} = "xserver-kdrive-common x11-common"
And both x11-common and xserver-common get installed.

>
>
>>  - matchbox-keyboard doesn't come up when touching the keyboard icon in
>> the panel
>>  - matchbox-panel is ugly (compare
>>
http://www.ossystems.com.br/images/blog/boards/boundarydevices-nitrogen6x-hdmi-screenshot-fsl-image-gui.jpg
>> with http://free-electrons.com/~alexandre/matchbox-panel.jpg)
>>
>> This time, I decided to investigate that issue a bit more. Here is what
>> I found:
>> The cause is the /etc/X11/Xsession script which at some point does:
>> ==
>>
>> What is really happening is that xserver-nodm-init is provided both by
>> poky/meta/recipes-graphics/x11-common/xserver-nodm-init.bb and
>>
meta-openembedded/meta-oe/recipes-graphics/xserver-nodm-init/xserver-nodm-init_2.0.bb
>>
>> layer                 path                                      priority
>>
==========================================================================
>> meta                  /home/alex/fsl/sources/poky/meta  5
>> meta-yocto            /home/alex/fsl/sources/poky/meta-yocto  5
>> meta-oe               /home/alex/fsl/sources/meta-openembedded/meta-oe  6
>>
>> The meta-oe one is selected ! That one can't actually work with the
>> current
>> poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb recipe
>> because of the "ls -X" sorting and it doesn't know how to handle shbg
>> files this will hang trying to use 80matchboxkeyboard.shbg
>>
>> So my next step was to remove the meta-oe layer (or simply mask
>> /meta-openembedded/meta-oe/recipes-graphics/). The final result is
>> better but touch screen calibration (xtscal instead of
>> xinput-calibrator) fails with:
>> XCALIBRATE extension missing: Resource temporarily unavailable
>> XCALIBRATE extension missing: Resource temporarily unavailable
>> XCALIBRATE extension missing: Resource temporarily unavailable
>>
>>
>> So, questions:
>>  - How do we solve that cleanly ?
>>  - Why doesn't xserver-common conflicts with x11-common despite
>> RCONFLICTS_${PN} = "xserver-kdrive-common x11-common" ?
>>  - Shouldn't we stop using xtscal and use xinput-calibrator instead ?
>>  - Should we update the Xsession script from the poky recipes and stop
>> using x11-common ?
>>
>> On my side, what I do is masking
>> /meta-openembedded/meta-oe/recipes-graphics/ and replacing xtscal by
>> xinput-calibrator as a dependency of x11-common but I believe we can do
>> better.
>>
>> --
>> Alexandre Belloni, Free Electrons
>> Embedded Linux, Kernel and Android engineering
>> http://free-electrons.com
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


- -- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iQIcBAEBCAAGBQJSvqW9AAoJEKbNnwlvZCyzPHIQAMoQfqBZbk8xW5V+craTyEAR
ViIXkcxjk5P5g8lKsiy9ZqHlimwvIAx3QBZCXXAIagXy5O75oHH7NriGyqVOI9UO
17s1n3w/JesP3zaF2dedGrTj6AX+tvI3P6LNElulQ7DlDoZJJ1RXTqhMNJI8SR2B
BH35DJ9e7S+0yby5AIrCxnf4UGGDBzhngRfSwL6iVOPQR+WEWoEwgooo+TwDIhCl
adE+zCTMOuw8eGZvW82TQLcxI/qjaWy7KhmVwdDdMw9O/KoSF2HeVpmYT8j2CbbL
mTPjZYYYZMtja0crq9DsbtojEu4iNtXGg38ff9qx3Wp6sOD9WAYy+3SVquwzB6Nw
f25BNkOoLQBuyibsg0yCdNInahWZn3W4GQe9PS0qj9bx0DReI7yXvyONsSBksJWK
rQV43bKiOPKTUVck1Axi5k0MeTiZGr0MoJOByLq8MPTF7zeXT7/nBhKgnrznq5Ar
PcfMjye3hD4jDdG4z1bLbWzoVTlTuxQ0QNMdx1uk4Ss1mcjLSgufRcSKr1JLv7i/
DepCVg4ea9Ic5tANoSIkUGOFgAnEWGgb0Mr4sunkdY20t7JaoHdaRD7zRpUjqEXm
zPMpZd+7pkuPK9w9lW+qOP656ubu75B/MhCXuAKQQFh8DV//WA9wFE8eIqDK/kbd
keJtxwKqBib8i29JXZyR
=gcbW
-----END PGP SIGNATURE-----


