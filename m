Return-Path: <paul.eggleton@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20FB64C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 10:09:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Dec 2010 08:09:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,293,1288594800"; d="scan'208";a="356686321"
Received: from unknown (HELO helios.localnet) ([10.255.16.36])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 08:09:04 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation (UK)
To: "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 3 Dec 2010 16:09:03 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <201011191023.58154.paul.eggleton@intel.com>
	<4CF7E972.6070308@intel.com>
In-Reply-To: <4CF7E972.6070308@intel.com>
MIME-Version: 1.0
Message-Id: <201012031609.03784.paul.eggleton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: PATCH: openssl: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Fri, 03 Dec 2010 16:09:07 -0000
Content-Type: Text/Plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thursday 02 December 2010 18:46:10 you wrote:
> On 11/19/2010 02:23 AM, Paul Eggleton wrote:
> > openssl: disable execstack flag to prevent problems with SELinux
> >
> > The execstack flag gets set on libcrypto.so by default which causes SEL=
inux
> > to prevent it from being loaded on systems using SELinux, which includes
> > Fedora. This patch disables the execstack flag. (Note: Red Hat do this =
in
> > their openssl packaging.)
> >
> Should this be a native only CFLAG change?
>=20
> Since we are not SELinux on the target (that might be a layer someone=20
> else might provide).

AFAICT there's no benefit to leaving the execstack flag enabled for this li=
brary. However if we want to take the conservative approach and leave it as=
-is for the target that's fine. Let me know if that's the case and I will p=
roduce a new patch.

Cheers,
Paul
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


