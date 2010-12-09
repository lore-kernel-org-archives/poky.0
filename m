Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f180.google.com (mail-iw0-f180.google.com
	[209.85.214.180])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9AB714C81225
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 00:55:24 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn37 with SMTP id 37so2984044iwn.25
	for <poky@yoctoproject.org>; Wed, 08 Dec 2010 22:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=FoHxYvUPC/qvefd631aCd4tY6b3vj4OHK9C6NVX4Mjg=;
	b=pes3Jkr/BQFXbnaMfq+lkWCEjgZOPZ6GhMPDR1HVoPKjxiQHRsWa/Jai4QRa22ims6
	Bk0/Esj6cZtLq7KPdYx1jPfc42w5sF7TrJ57mEp0lFQg6xS8j2b5kXJZS11Xvo2dkT1s
	lE/1EstxLnR5cMxZTkddTtDtDQ1HrY+4uEBbc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=lQwktVlMX/ULfGapK2YqQq16g6k5RpooLDhQLQv0emd4UKDLL86/H3QFuNae/6IPzt
	3l1oF94cfIQDqPDx2SK35/G8tpVZySrj+KX/hPNxxy+zPo6xubJt+JL+ntk8iplnx4sk
	BrrE/NsHjE/DxRSeqmtpPMM8AZX5Bvl7d07aU=
MIME-Version: 1.0
Received: by 10.231.173.67 with SMTP id o3mr131800ibz.29.1291877724307; Wed,
	08 Dec 2010 22:55:24 -0800 (PST)
Received: by 10.231.207.5 with HTTP; Wed, 8 Dec 2010 22:55:24 -0800 (PST)
In-Reply-To: <1291874945.18502.109.camel@elmorro>
References: <cover.1291703954.git.tom.zanussi@intel.com>
	<4CFFC5DB.8060009@linux.intel.com>
	<1291874945.18502.109.camel@elmorro>
Date: Thu, 9 Dec 2010 01:55:24 -0500
Message-ID: <AANLkTimho1tqKVHaESTdTrkMYis4119iC8NY=VX90Bd4@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Add meta-crownbay
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
X-List-Received-Date: Thu, 09 Dec 2010 06:55:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 9, 2010 at 1:09 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Wed, 2010-12-08 at 09:52 -0800, Darren Hart wrote:
>> On 12/06/2010 10:39 PM, Tom Zanussi wrote:
>> > Adds a new layer for Tunnel Creek/Topcliff systems.
>> >
>>
>> I'm concerned about the long-term sustainability of this approach of
>> adding a new layer for each "platform". Just Intel platforms alone will
>> make 'ls meta-*' unwieldy in fairly short order, add to that the other
>> architectures and we're looking at a lot of layers.
>>
>> We support a lot of platforms under the existing machine types. Is the
>> primary reason for this being a layer to accomodate the EMGD bits? if
>> so, are those specific to crownbay, or can they somehow be shared across
>> multiple platforms?
>>
>
> Yes, like meta-emenlow, it's a layer mainly because of the special needs
> of the graphics hardware, and yes, there may be other platforms that
> could share the EMGD 1.5 bits - my assumption would be that any common
> factoring for sharing would happen when a second user came along...
>
> But anyway, you hit on a good point, that simply adding new meta-<bsp>
> layers to the top-level could become unwieldy after awhile. =A0It seems t=
o
> me that that problem could be easily solved by arranging them in a
> directory hierarchy, arranged by TARGET_ARCH, e.g.
>
> /meta-bsp/i586/meta-emenlow
> =A0 =A0 =A0 =A0 =A0 =A0 =A0/meta-crownbay
>
> (the meta- in front of emenlow, crownbay is redundant, but there just to
> make it clear that the same layers are just being moved around).
>
> And rather than moving away from layers, why not go even further and
> take the existing machine confs, put each into its own layer too:
>
> /meta-bsp/i586/meta-emenlow
> =A0 =A0 =A0 =A0 =A0 =A0 =A0/meta-crownbay
> =A0 =A0 =A0 =A0 =A0 =A0 =A0/atom-pc
> =A0 =A0 =A0 =A0 =A0 =A0 =A0...
>
> /meta-bsp/arm/beagleboard
> =A0 =A0 =A0 =A0 =A0 =A0 /cm-x270
> =A0 =A0 =A0 =A0 =A0 =A0 /depicture
> =A0 =A0 =A0 =A0 =A0 =A0 ...
>
> /meta-bsp/arm/routerstationpro
> =A0 =A0 =A0 =A0 =A0 =A0 ...
>
> /meta-bsp/arm/mpc8315e-rdb
> =A0 =A0 =A0 =A0 =A0 =A0 ...
>
> Each directory (layer) would at least have its machine.conf and its
> associate formfactor, which is currently also in a separate location, so
> it wouldn't be just a directory containing a single file. =A0This would
> also be a nice place for a board-specific README, so we could get rid of
> things like a global README.hardware and put the README info in that
> file into the directory for the specific board.
>
> It seem to me something like this would be a nice unification of all the
> current 'BSP' support in poky, and would also get rid of the confusion I
> know people have when it comes to deciding whether to use a layer or
> just add a new machine conf - everything would be a layer so there's
> nothing to think about. =A0And you'd see all the BSPs 'at-a-glance' -
> everything would be located in the same place under a single /bsp (or
> whatever sounds right) location.
>
> Another advantage of this scheme would be that since each BSP would be
> implemented as its own layer within its own directory structure, each
> layer could be easily packaged as a stand-alone tarball or git repo that
> we could then make available here:

For what it is worth, this layering, grouping and flexibility it
provides is the approach we are using at the moment and
it works well. Having the single 'bsp' containing directory
makes all the difference.

It is then trivial to couple packages and special configuration
to any BSP.

>
> http://www.yoctoproject.org/download/board-support-package-bsp-downloads
>
> The Black Sand BSP that's the example there currently can't be
> downloaded as a separate tarball or git repo - you have to download the
> entire yocto release that contains the Black Sand BSP to get it. =A0Some
> developers might not want to start with a new release, they're already
> using their own modified version, they just want to download support for
> a specific BSP. =A0To do that for a current non-layer machine, they'd hav=
e
> to download the release containing the new machine support, and move the
> applicable files from the release to their own working version. =A0Having
> it packaged as a modular unit would make things much easier. (BTW all
> the text on that page about how to set up the Black Sand once it's build
> would fit nicely into the atom-pc layer's README).
>
> I think this scheme also more closely matches what Bruce has been trying
> to do for the kernel...

It does match pretty well, yes :)

>
> But anyway, I'm thinking that this plus making the internal structure of
> the current BSPs match what's in the BSP Developer's Guide (either by
> changing the internal structure of the existing layers (and following it
> for the new/converted ones), or changing the doc to how we decide it
> should be) would be a good (and necessary) step towards making BSP
> development for Yocto relatively painless and less confusing.
>
> I know this is probably exactly the opposite of what you were thinking,
> but it seems to me to have a lot of advantages, and I don't see much
> downside, unless I'm missing something. =A0What do you think?

I think its a good approach, and there's no reason why the two
approaches (many files in the single machine directory) can't
be coupled to the layers .. some layers can always have multiple,
similar BSPs, some wont.

I'm very familiar with this discussion, since I've had the very same
one in the past and we ended up with what you are suggesting Tom.

Cheers,

Bruce

>
> Tom
>
>> For instance, could the xf86 patches be appended to the existing xf86
>> recipe using the SRC_URI_crownbay mechanism?
>>
>> --
>> Darren
>>
>> > Pull URL: git://git.pokylinux.org/poky-contrib.git
>> > =A0 =A0Branch: tzanussi/crownbay
>> > =A0 =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=
=3Dtzanussi/crownbay
>> >
>> > Thanks,
>> > =A0 =A0 =A0Tom Zanussi<tom.zanussi@intel.com>
>> > ---
>> >
>> >
>> > Tom Zanussi (1):
>> > =A0 =A0meta-crownbay: new layer for E6xx/EG20T systems
>> >
>> > =A0 meta-crownbay/COPYING.MIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 17 +++
>> > =A0 meta-crownbay/README.before.building =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0112 ++++++++++++++++++++
>> > =A0 meta-crownbay/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0 10 ++
>> > =A0 meta-crownbay/conf/machine/crownbay.conf =A0 =A0 =A0 =A0 =A0 | =A0=
 46 ++++++++
>> > =A0 .../formfactor/formfactor/crownbay/machconfig =A0 =A0 =A0| =A0 =A0=
3 +
>> > =A0 .../recipes/formfactor/formfactor_0.0.bbappend =A0 =A0 | =A0 =A03 =
+
>> > =A0 .../recipes/linux/linux-yocto_git.bbappend =A0 =A0 =A0 =A0 | =A0 =
=A03 +
>> > =A0 .../xserver-xf86-config/crownbay/xorg.conf =A0 =A0 =A0 =A0 | =A0 4=
7 ++++++++
>> > =A0 .../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A03 +
>> > =A0 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb | =A0 90 ++++++=
++++++++++
>> > =A0 .../xserver-xf86-emgd/crosscompile.patch =A0 =A0 =A0 =A0 =A0 | =A0=
 19 ++++
>> > =A0 .../fix_open_max_preprocessor_error.patch =A0 =A0 =A0 =A0 =A0| =A0=
 13 +++
>> > =A0 .../xserver-xf86-emgd/macro_tweak.patch =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 18 +++
>> > =A0 .../xorg-xserver/xserver-xf86-emgd/nodolt.patch =A0 =A0| =A0 12 ++
>> > =A0 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb =A0 =A0 | =A0 25 ++=
+++
>> > =A0 15 files changed, 421 insertions(+), 0 deletions(-)
>> > =A0 create mode 100644 meta-crownbay/COPYING.MIT
>> > =A0 create mode 100755 meta-crownbay/README.before.building
>> > =A0 create mode 100644 meta-crownbay/conf/layer.conf
>> > =A0 create mode 100644 meta-crownbay/conf/machine/crownbay.conf
>> > =A0 create mode 100644 meta-crownbay/recipes/formfactor/formfactor/cro=
wnbay/machconfig
>> > =A0 create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0=
.bbappend
>> > =A0 create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bba=
ppend
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-config/crownbay/xorg.conf
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-config_0.1.bbappend
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd-bin_1.7.99.2.bb
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd/crosscompile.patch
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd/fix_open_max_preprocessor_error.patch
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd/macro_tweak.patch
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd/nodolt.patch
>> > =A0 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86=
-emgd_1.7.99.2.bb
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>>
>>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

