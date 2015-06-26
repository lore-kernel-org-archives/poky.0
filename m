Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 964E1E00A45; Fri, 26 Jun 2015 08:13:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B135CE00A2C;
	Fri, 26 Jun 2015 08:13:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Jun 2015 08:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,685,1427785200"; d="scan'208";a="753756602"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.143])
	([10.237.68.143])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2015 08:13:10 -0700
Message-ID: <558D6C19.5030409@linux.intel.com>
Date: Fri, 26 Jun 2015 18:13:29 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	openembedded-core@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, poky@yoctoproject.org
References: <558C5E43.6010709@linux.intel.com>
In-Reply-To: <558C5E43.6010709@linux.intel.com>
Subject: Re: Automatic Upgrade Helper Announcement
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
X-List-Received-Date: Fri, 26 Jun 2015 15:13:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/25/2015 11:02 PM, Aníbal Limón wrote:
> I'm glad to announce the enabling of Automatic Upgrade Helper (a.k.a.
> AUH), the AUH is a service
> that provides recipe upgrades and will be run on weekly basis.
>
> If you are a maintainer (listed in [1]) you will receive AUH emails with
> Recipe upgrades when AUH
> detects that upgrade is needed.

I'm currently doing a related activity - going through oe-core recipes 
in alphabetical order, and making sure that upstream version information 
for them is correct.

I've found a few cases where the upstream check is performed on a stale 
directory (so the recipe is reported 'up to date' even though it's not), 
or the reported upstream version is totally bogus [1], or the upstream 
version is 'unknown' even though it can be retrieved with a correct 
entry in package_regex.inc. Expect patches to come this way soon.

[1] http://recipes.yoctoproject.org/rrs/recipedetail/155/


Alex

