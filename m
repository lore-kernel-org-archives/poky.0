Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A25294C80052
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 07:29:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Dec 2010 05:29:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,293,1288594800"; d="scan'208";a="356619422"
Received: from unknown (HELO [10.255.16.46]) ([10.255.16.46])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 05:29:50 -0800
From: Joshua Lock <josh@linux.intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CF7ED8F.6070203@intel.com>
References: <cover.1290790131.git.josh@linux.intel.com>
	<b35d224ec6ee86dd9623103d4020c9e7895a6ccb.1290790131.git.josh@linux.intel.com>
	<4CF7ED8F.6070203@intel.com>
Date: Fri, 03 Dec 2010 13:29:44 +0000
Message-ID: <1291382984.2728.8.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] local.conf.sample: Note extra variables required when disabling en_US locale
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
X-List-Received-Date: Fri, 03 Dec 2010 13:29:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-02 at 11:03 -0800, Saul Wold wrote:
> On 11/26/2010 06:23 AM, Joshua Lock wrote:
> > When changing which locales are generated for libc it may also be neccessary to
> > change IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
> >
> > Signed-off-by: Joshua Lock<josh@linux.intel.com>
> > ---
> >   meta/conf/local.conf.sample |    7 ++++++-
> >   1 files changed, 6 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
> > index fae949c..4ba250d 100644
> > --- a/meta/conf/local.conf.sample
> > +++ b/meta/conf/local.conf.sample
> > @@ -158,8 +158,13 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
> >
> >   # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
> >   # wish to perform the time-consuming step of generating all LIBC locales.
> > +# NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
> > +# appropriate values for IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
> >   # WARNING: this may break localisation!
> > -#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"
> > +#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8"
> > +# See message above as to whether setting these is required
> > +#IMAGE_LINGUAS ?= "en-gb"
> > +#LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
> >
> Should these LOCALES be en_US, en_GB or BOTH?  I know we have had 
> discussion on this in the past.
> 
> Let's be consistent on this please.

Good catch. I think the GLIBC_GENERATE_LOCALES should be both as it was
before but as the IMAGE_LINGUAS and LIMIT_BUILT_LOCALES only need
changing if en_US.UTF-8 is removed they should not include en_US

Updated patch follows and branch fixed:

From 6d532f464a897f28da4c7dcb72ddcad0bcc65f6c Mon Sep 17 00:00:00 2001
Message-Id:
<6d532f464a897f28da4c7dcb72ddcad0bcc65f6c.1291382830.git.josh@linux.intel.com>
In-Reply-To: <cover.1291382830.git.josh@linux.intel.com>
References: <cover.1291382830.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 26 Nov 2010 14:23:16 +0000
Subject: [PATCH 1/2] local.conf.sample: Note extra variables required
when disabling en_US locale

When changing which locales are generated for libc it may also be
neccessary to
change IMAGE_LINGUAS and LIMIT_BUILT_LOCALES

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/conf/local.conf.sample |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index fae949c..9bff292 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -158,8 +158,13 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should
you not
 # wish to perform the time-consuming step of generating all LIBC
locales.
+# NOTE: If removing en_US.UTF-8 you will also need to uncomment, and
set
+# appropriate values for IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
 # WARNING: this may break localisation!
 #GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"
+# See message above as to whether setting these is required
+#IMAGE_LINGUAS ?= "en-gb"
+#LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
 
 # Default to not build 32 bit libs on 64 bit systems, comment this
 # out if that is desired
-- 
1.7.3.2



