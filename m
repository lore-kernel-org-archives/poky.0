Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2DD9E00D71; Fri,  8 Dec 2017 08:49:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBCAEE00D19
	for <poky@yoctoproject.org>; Fri,  8 Dec 2017 08:49:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D59499C19CE;
	Fri,  8 Dec 2017 11:49:21 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id 0iB8NeziAB8q; Fri,  8 Dec 2017 11:49:21 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 533C19C3184;
	Fri,  8 Dec 2017 11:49:21 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id Nvlt8d-T5mPe; Fri,  8 Dec 2017 11:49:21 -0500 (EST)
Received: from archlinux (unknown [172.16.15.10])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 27F279C19CE;
	Fri,  8 Dec 2017 11:49:21 -0500 (EST)
Date: Fri, 8 Dec 2017 11:50:04 -0500
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20171208165004.zitx5l5klmamxio6@archlinux>
References: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
	<50cb4e0efe8ea9c4d1dbaea8f6d8cef418ea6564.1512685340.git.gael.portay@savoirfairelinux.com>
	<CAJTo0LYYxsx49=L9rfWkDyoTSqdNPYF+iTSJCMZLK95wM=Z08g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYYxsx49=L9rfWkDyoTSqdNPYF+iTSJCMZLK95wM=Z08g@mail.gmail.com>
User-Agent: NeoMutt/20171013-35-c06e73
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] util-linux: create nativesdk lib packages
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
X-List-Received-Date: Fri, 08 Dec 2017 16:49:23 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On Fri, Dec 08, 2017 at 04:34:55PM +0000, Burton, Ross wrote:
> On 7 December 2017 at 22:29, Ga=EBl PORTAY <gael.portay@savoirfairelinu=
x.com>
> wrote:
>=20
> > +python populate_packages_prepend_class-nativesdk() {
> > +    do_split_packages(d, '${libdir}', '^lib(.*)\.so\..*$',
> > +                      output_pattern=3D'nativesdk-util-linux-lib%s',
> > +                      description=3D'nativesdk-util-linux lib%s',
> > +                      extra_depends=3D'', prepend=3DTrue, allow_link=
s=3DTrue)
> > +}
> >
>=20
> The existing populate_packages is good, it should just use ${PN} instea=
d of
> util-linux.
>=20
> Ross

Well... I am not sure I get it :/

How can I solve the following issue:

	Collected errors:
	 * calculate_dependencies_for: Cannot satisfy the following dependencies=
 for nativesdk-packagegroup-sdk-host:
	 *     nativesdk-util-linux-libuuid *
	 * opkg_solver_install: Cannot install package nativesdk-packagegroup-sd=
k-host.

When I build the nativesdk image, the image needs this dependency
(nativesdk-util-linux-libuuid) but it is not build because of the
libuuid.so is located under /usr on nativesdk while it is located under
/ on cross.

Regards,
Gael

