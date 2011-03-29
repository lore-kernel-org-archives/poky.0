Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCFD04C806FA
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 11:35:26 -0500 (CDT)
Received: by wyb40 with SMTP id 40so451745wyb.35
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 09:35:26 -0700 (PDT)
Received: by 10.216.230.153 with SMTP id j25mr4339058weq.22.1301416525855;
	Tue, 29 Mar 2011 09:35:25 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id d6sm2061230wer.26.2011.03.29.09.35.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2011 09:35:24 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
Date: Tue, 29 Mar 2011 18:35:22 +0200
Message-Id: <5ED14C2C-2E5B-492D-87A8-4AB26E65F6D5@dominion.thruhere.net>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
	<1301414580.24596.64.camel@rex>
	<AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
To: Colin Walters <walters@verbum.org>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 16:35:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 29 mrt 2011, om 18:15 heeft Colin Walters het volgende geschreven:

> On Tue, Mar 29, 2011 at 12:03 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>=20
>> So no, I'm not going to merge this patch at this time. If we were =
going
>> to do something like this I'd rather thrown out libtool entirely and
>> switch to something like dolt.
>=20
> Would you take an option, off by default then?  I definitely do not
> want these files in my OS; I could remove them in a
> ROOTFS_POSTPROCESS_COMMAND, but it'd be even better to do in after
> each build.
>=20
>> Also note in your gnome shell link above that its listed as required
>> because of "the dirty hacks that jhbuild plays to get it to sandbox =
your
>> system" which is hardly a glowing recommendation. We don't have this
>> problem.
>=20
> The core problem arises in that often for developers it's convenient
> to do partial builds; say only rebuild glib and gtk+, but not rebuild
> pango (which lies between them).  What the libtool pango.la file does
> is add -L/usr/lib which is 1) unnecessary and 2) forces the linker
> search first in /usr/lib instead of /opt/gnome like we want.

Isn't that why we have libtool sysroot support? Or does that break with =
the split you describe above?

regards,

Koen=

