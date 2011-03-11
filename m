Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4910E4C800A3
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 06:13:35 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 067DC166032C; Fri, 11 Mar 2011 05:13:35 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E6DC6166034D;
	Fri, 11 Mar 2011 05:13:30 -0700 (MST)
Message-ID: <4D7A11EA.4050306@mlbassoc.com>
Date: Fri, 11 Mar 2011 05:13:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<4D7A052A.2050400@mlbassoc.com>
In-Reply-To: <4D7A052A.2050400@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Problems adding native support packages
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
X-List-Received-Date: Fri, 11 Mar 2011 12:13:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 04:19 AM, Gary Thomas wrote:
> On 03/10/2011 09:57 PM, Tian, Kevin wrote:
>>> From: Gary Thomas
>>> Sent: Friday, March 11, 2011 11:29 AM
>>>
>>> I'm trying to import a native package from OE for which the
>>> main package depends on libiconv. This seems to imply that
>>> when I extend to the native package using BBCLASSEXTEND, the
>>> native package depends on virtual/libiconv-native
>>>
>>> I can't figure out how to provide this. Any clues?
>>
>> I'm not sure about the problem here. do you want virtual/libiconv-native dependency
>> or not? If target recipe already has a DEPENDS = "libiconv", then with BBCLASSEXTEND
>> you have libiconv-native automatically.
>>
>> Or if you only want to add libiconv-native for native recipe exclusively, then:
>>
>> DEPENDS_virtclass-native = "virtual/libiconv-native"
>
> Actually, the problem is that such a dependency was added automatically by BBCLASSEXTEND.
> virtual/libiconv is provided by eglibc package, but it's not clear if it can provide
> virtual/libiconv-native

It comes from this dependency which seems very hard to satisfy:
   meta/recipes-graphics/pango/pango.inc:DEPENDS = "glib-2.0 fontconfig freetype zlib virtual/libiconv virtual/libx11 libxft gtk-doc-native cairo"

It looks like I can side-step this by adding
   ASSUME_PROVIDED += " virtual/libiconv-native "

>
> The other problem is that there is a meta/recipes-support/libiconv/libiconv_1.9.2.bb recipe
> in the tree which does not build at all, native or target.
>
>>>
>>> n.b. the recipe from OE is librsvg and importing it seems to be
>>> pretty invasive. To build the native package, I needed to add
>>> native support for all of these packages:
>>>
>>> # modified: meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
>>> # modified: meta/recipes-gnome/gtk+/gtk+.inc
>>> # modified: meta/recipes-graphics/cairo/cairo.inc
>>> # modified: meta/recipes-graphics/pango/pango.inc
>>> # modified: meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
>>> # modified: meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
>>> # modified: meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
>>> # modified:
>>> meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
>>> # modified:
>>> meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
>>> # modified: meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
>>> # modified: meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
>>> # modified:
>>> meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
>>> # modified:
>>> meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
>>> # modified: meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb
>>> # modified: meta/recipes-support/atk/atk.inc
>>> # modified: meta/recipes-support/libcroco/libcroco_0.6.2.bb
>>> # modified: meta/recipes-support/libgcrypt/libgcrypt.inc
>>> # modified: meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
>>>
>>> I also ran into a problem when I added native to atk, I get this error
>>> which makes no sense at all to me:
>>> NOTE: package atk-native-1.32.0-r0: task do_fetch: Started
>>> ERROR: Function 'Fetcher failure for URL:
>>> 'http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2'.
>>> Unable to fetch URL
>>> http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2 from
>>> any source.' failed
>>> This seems to be the only package in the set above that wants to fetch a
>>> -native
>>> tarball (there are no such files in the sources repository as far as I can tell)
>>>
>>> Thanks
>>>
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas | Consulting for the
>>> MLB Associates | Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

