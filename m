Return-Path: <paul.eggleton@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FE464C810B1
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 11:38:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 09:38:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,243,1288594800"; d="scan'208";a="680307067"
Received: from unknown (HELO helios.localnet) ([10.255.16.147])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 09:38:17 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: poky@yoctoproject.org
Date: Tue, 23 Nov 2010 17:38:13 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <0d30dc$k8jjru@orsmga001.jf.intel.com>
	<4CEBE73A.5050502@mentor.com>
In-Reply-To: <4CEBE73A.5050502@mentor.com>
MIME-Version: 1.0
Message-Id: <201011231738.14133.paul.eggleton@intel.com>
Subject: Re: [PATCH 5/5] poky.conf: whitelist shell variables which are	volatile to build system
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
X-List-Received-Date: Tue, 23 Nov 2010 17:38:20 -0000
Content-Type: Text/Plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tuesday 23 November 2010 16:09:30 Tom Rini wrote:
> Looking over our signature code you may also need:
> FILE_DIRNAME PARALLEL_MAKE MIRRORS PREMIRRORS SSH_TTY SSH_CLIENT=20
> SSH_CONNECTION SESSION_MANAGER GTK_RC_FILES GREP_OPTIONS
> and you have SSH_AUTH_SOCK listed twice (can I suggest splitting this=20
> into more lines?).

I've split it onto multiple lines and added your vars to the list in the co=
ntrib/paule/sstate branch.

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


