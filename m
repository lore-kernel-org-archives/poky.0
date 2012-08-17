Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA13FE002A5
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 11:36:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Aug 2012 11:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,785,1336374000"; d="scan'208";a="210005972"
Received: from unknown (HELO helios.localnet) ([10.252.121.90])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2012 11:36:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Fri, 17 Aug 2012 19:36:05 +0100
Message-ID: <1678065.OJgFiFFamQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
References: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: update distro ID string for Ubuntu 12.04.1 LTS
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
X-List-Received-Date: Fri, 17 Aug 2012 18:36:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 17 August 2012 18:32:31 McClintock Matthew-B29882 wrote:
> On Fri, Aug 17, 2012 at 5:55 AM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > If you have 12.04 LTS it will now have been updated to 12.04.1.
> > 
> > Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> > ---
> > 
> >  meta-yocto/conf/distro/poky.conf |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/meta-yocto/conf/distro/poky.conf
> > b/meta-yocto/conf/distro/poky.conf index cc9fa6c..711087b 100644
> > --- a/meta-yocto/conf/distro/poky.conf
> > +++ b/meta-yocto/conf/distro/poky.conf
> > @@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
> > 
> >              Yocto (Built by Poky 7.0) 1.2 \n \
> >              Ubuntu 10.04.4 LTS \n \
> >              Ubuntu 11.10 \n \
> > 
> > -            Ubuntu 12.04 LTS \n \
> > +            Ubuntu 12.04.1 LTS \n \
> 
> Wait, wouldn't you keep the old one too? Or do we just validate poky
> for the latest only?

The thing is, you would only have the old version if you never ran the normal 
update process - the minor version update comes down automatically as part of 
that, it's not a distro upgrade.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

