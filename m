Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F9F54C800A3
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 10:23:13 -0600 (CST)
Received: from [192.168.0.11] (unknown [107.25.26.216])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 1336C12EC11A
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 11:06:41 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D7A11EA.4050306@mlbassoc.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<4D7A052A.2050400@mlbassoc.com>  <4D7A11EA.4050306@mlbassoc.com>
Date: Fri, 11 Mar 2011 08:23:04 -0800
Message-ID: <1299860584.2533.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
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
X-List-Received-Date: Fri, 11 Mar 2011 16:23:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-11 at 05:13 -0700, Gary Thomas wrote:
> On 03/11/2011 04:19 AM, Gary Thomas wrote:
> > On 03/10/2011 09:57 PM, Tian, Kevin wrote:
> >>> From: Gary Thomas
> >>> Sent: Friday, March 11, 2011 11:29 AM
> >>>
> >>> I'm trying to import a native package from OE for which the
> >>> main package depends on libiconv. This seems to imply that
> >>> when I extend to the native package using BBCLASSEXTEND, the
> >>> native package depends on virtual/libiconv-native
> >>>
> >>> I can't figure out how to provide this. Any clues?
> >>
> >> I'm not sure about the problem here. do you want virtual/libiconv-native dependency
> >> or not? If target recipe already has a DEPENDS = "libiconv", then with BBCLASSEXTEND
> >> you have libiconv-native automatically.
> >>
> >> Or if you only want to add libiconv-native for native recipe exclusively, then:
> >>
> >> DEPENDS_virtclass-native = "virtual/libiconv-native"
> >
> > Actually, the problem is that such a dependency was added automatically by BBCLASSEXTEND.
> > virtual/libiconv is provided by eglibc package, but it's not clear if it can provide
> > virtual/libiconv-native
> 
> It comes from this dependency which seems very hard to satisfy:
>    meta/recipes-graphics/pango/pango.inc:DEPENDS = "glib-2.0 fontconfig freetype zlib virtual/libiconv virtual/libx11 libxft gtk-doc-native cairo"

virtual/libiconv is set in the *libc.conf included by the distro:
meta/conf/distro/include/poky-eglibc.inc:PREFERRED_PROVIDER_virtual/libiconv ?= "eglibc"
meta/conf/distro/include/poky-eglibc.inc:PREFERRED_PROVIDER_virtual/libiconv-nativesdk ?= "eglibc-nativesdk"

I guess we need a PREFERRED_PROVIDER_virtual/libiconv-natives ?=
"eglibc-native" entry in this file?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


