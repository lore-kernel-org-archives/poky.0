Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web11.15236.1585931135633114315
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 09:25:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: paul.gortmaker@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 033GPRBE028410
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 3 Apr 2020 09:25:27 -0700 (PDT)
Received: from yow-pgortmak-d1.corp.ad.wrs.com (128.224.56.57) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Fri, 3 Apr 2020 09:25:21 -0700
Received: by yow-pgortmak-d1.corp.ad.wrs.com (Postfix, from userid 1000)	id
 78BFC2E0361; Fri,  3 Apr 2020 12:25:21 -0400 (EDT)
Date: Fri, 3 Apr 2020 12:25:21 -0400
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Denys Dmytriyenko <denis@denix.org>
CC: <poky@lists.yoctoproject.org>, Ross Burton <ross.burton@intel.com>
Subject: Re: [poky] [PATCH] sanity.bbclass: echo current SDK_VENDOR if it is invalid
Message-ID: <20200403162520.GP6244@windriver.com>
References: <20200403153151.15242-1-paul.gortmaker@windriver.com>
 <20200403154402.GV1578@denix.org>
MIME-Version: 1.0
In-Reply-To: <20200403154402.GV1578@denix.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

[Re: [poky] [PATCH] sanity.bbclass: echo current SDK_VENDOR if it is invalid] On 03/04/2020 (Fri 11:44) Denys Dmytriyenko wrote:

> Why Poky? Should this go to OE-Core?

Probably.  Maybe after another 10y with yocto/oe-core/poky I'll finally
manage to get the right mailing lists for the right components...?

Anyway, thanks - resent to oe-core.

Paul.
--
> 
> On Fri, Apr 03, 2020 at 11:31:51AM -0400, Paul Gortmaker wrote:
> > It can be frustrating if this sanity check triggers, but you
> > don't know why; you haven't explicitly set any SDK vars, or
> > similar.
> > 
> > At least echo out the offending value, so the end user has
> > a bit more information to go on.
> > 
> > Before:
> >   SDK_VENDOR should be of the form '-foosdk' with a single dash
> > After:
> >   SDK_VENDOR should be of the form '-foosdk' with a single dash; found '-overc-sdk'
> > 
> > Cc: Ross Burton <ross.burton@intel.com>
> > Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> > 
> > diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> > index 88888e814a48..c823b49c03b0 100644
> > --- a/meta/classes/sanity.bbclass
> > +++ b/meta/classes/sanity.bbclass
> > @@ -823,7 +823,7 @@ def check_sanity_everybuild(status, d):
> >      # If SDK_VENDOR looks like "-my-sdk" then the triples are badly formed so fail early
> >      sdkvendor = d.getVar("SDK_VENDOR")
> >      if not (sdkvendor.startswith("-") and sdkvendor.count("-") == 1):
> > -        status.addresult("SDK_VENDOR should be of the form '-foosdk' with a single dash\n")
> > +        status.addresult("SDK_VENDOR should be of the form '-foosdk' with a single dash; found '%s'\n" % sdkvendor)
> >  
> >      check_supported_distro(d)
> >  
> > -- 
> > 2.17.1
> > 
> 
> > 
> 
