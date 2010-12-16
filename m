Return-Path: <paul.eggleton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A032C4C81110
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 03:49:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 01:49:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="687724793"
Received: from unknown (HELO helios.localnet) ([10.255.16.84])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 01:49:50 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Thu, 16 Dec 2010 09:49:48 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1292430240.git.josh@linux.intel.com>
	<c5ab4d56f97a0e45b124d40c9f536541be04c201.1292430240.git.josh@linux.intel.com>
	<4D0916F4.9060703@linux.intel.com>
In-Reply-To: <4D0916F4.9060703@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201012160949.49288.paul.eggleton@intel.com>
Subject: Re: [PATCH 01/14] openssl-native: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Thu, 16 Dec 2010 09:49:52 -0000
Content-Type: Text/Plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wednesday 15 December 2010 19:28:52 Darren Hart wrote:
> > -	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
> > +	-DTERMIO ${FULL_OPTIMIZATION}"
>=20
> Why do we need to remove -Wall? Doesn't that reduce our visibility into=20
> potential issues?

We don't - actually this was a mistake that I was sure had I removed from t=
he original patch. -Wall should be put back in.

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


