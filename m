Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 141BFE00BCC; Thu, 15 Oct 2015 12:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD58E00BB6
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 12:28:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Oct 2015 12:28:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,687,1437462000"; d="scan'208";a="827917518"
Received: from nncongwa-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.23.230])
	by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2015 12:28:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ivan Sergio Borgonovo <mail@webthatworks.it>
Date: Thu, 15 Oct 2015 20:28:37 +0100
Message-ID: <2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <561FD3FB.9080606@webthatworks.it>
References: <561FD3FB.9080606@webthatworks.it>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: listing PACKAGES for a certain layer
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
X-List-Received-Date: Thu, 15 Oct 2015 19:28:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ivan,

On Thursday 15 October 2015 18:27:39 Ivan Sergio Borgonovo wrote:
> Is there a way to list packages provided by a certain layer/recipe?

Not layer, but you can get a bunch of info out of oe-pkgdata-util after 
recipes have been built - e.g. once the connman recipe has built you can run:

$ oe-pkgdata-util list-pkgs -p connman
connman-tools
connman-tests
connman-client
connman-dbg
connman-dev
connman-doc
connman

$ oe-pkgdata-util list-pkg-files connman
connman:
        /etc/dbus-1/system.d/connman.conf
        /etc/init.d/connman
        /usr/sbin/connmand

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

