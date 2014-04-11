Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 543CAE00CE8
	for <poky@yoctoproject.org>; Fri, 11 Apr 2014 05:46:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Apr 2014 05:46:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,842,1389772800"; d="scan'208";a="519123819"
Received: from pmeel-ivm.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.171])
	by orsmga002.jf.intel.com with ESMTP; 11 Apr 2014 05:46:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Denys Dmytriyenko <denis@denix.org>,
	Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
Date: Fri, 11 Apr 2014 13:46:50 +0100
Message-ID: <3193549.HUX5aTZCbJ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <20140410214318.GV3370@denix.org>
References: <72fd694877e24e5a95574a18a2e31d09@BLUPR05MB037.namprd05.prod.outlook.com>
	<CABwVrCq7Z_0NgYv2H7JfW1O+w+Ld5pGy3OsBC6L9wmeOwOKgsg@mail.gmail.com>
	<20140410214318.GV3370@denix.org>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: openssl: Need PRINC+1 in recipe?
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
X-List-Received-Date: Fri, 11 Apr 2014 12:46:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 10 April 2014 17:43:18 Denys Dmytriyenko wrote:
> On Fri, Apr 11, 2014 at 12:30:31AM +0300, Alexandru Vaduva wrote:
> > Sorry to hijack this conversation but I believe in the next version of
> > poky
> > the package openssl should be updated and and for the rest of the version
> > a
> > patch should be applied to solve the newly appeared exploit.
> > More info here:
> > http://thehackernews.com/2014/04/heartbleed-openssl-zero-day-bug-leaves.ht
> > ml https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160

Just for reference this bug has been fixed in master (by an upgrade to 1.0.1g) 
and both dora and dylan. For dora and dylan only the patch to fix the bug was 
backported rather than the full upgrade (along with three other OpenSSL CVEs).

> > On Thu, Apr 10, 2014 at 11:20 PM, Bryan Evenson 
<bevenson@melinkcorp.com>wrote:
> > > All,
> > > 
> > > I was previously on dylan-1.4.1 and today I upgraded to poky/dylan HEAD
> > > to
> > > take in the openssl security patches.  Things are rebuilding, but I
> > > noticed
> > > that the built package version is openssl-1.0.1e-r15.0, which is the
> > > same
> > > version currently installed on my system.  Shouldn't the PR line change
> > > to:
> > > 
> > > PR = "${INC_PR+1}.0"
> > > 
> > > For the packaging systems to take in the update?
> 
> Well, I guess people are so used to not caring about tracking PRs anymore,
> they forget to bump them when backporting fixes to older branches. Paul?

It seems to me that we already decided for dylan not to bump PR values as part 
of standard procedure on changes - I am struggling to find a citation for this 
though. However, given the severity of this bug, for people's peace of mind I 
have sent out a PR bump patch for openssl for both dylan and dora, so it's a 
little easier to tell you have the patch applied.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

