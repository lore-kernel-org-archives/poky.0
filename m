Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BE194C800A3
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 20:59:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2011 18:59:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,417,1291622400"; d="scan'208";a="653929968"
Received: from unknown (HELO helios.localnet) ([10.255.16.156])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2011 18:59:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 3 Feb 2011 02:58:58 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-25-generic-pae; KDE/4.6.0; i686; ; )
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<70e416b931ba9ee1ca24a967a0410fda65b48bea.1296267951.git.paul.eggleton@linux.intel.com>
	<1296582252.13501.20225.camel@rex>
In-Reply-To: <1296582252.13501.20225.camel@rex>
MIME-Version: 1.0
Message-Id: <201102030258.59288.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 05/12] qt4-tools-native: update from OpenEmbedded
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
X-List-Received-Date: Thu, 03 Feb 2011 02:59:05 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Tuesday 01 February 2011 17:44:12 you wrote:
> Please don't reindent files when making other changes, it makes it hard
> to see where the real changes were. I've pulled things but taken out the
> worst whitespace changes manually this time.

A lot of those changes were brought in from meta-oe, although I admit I added 
a fair few others. I will endeavour to keep indentation changes (if any) 
separate in future.
 
> Please keep in mind:
> 
> shell functions/code use tabs
> python code uses four space indentation

Is there a particular reason for this? Can we not use four spaces everywhere? 
I see a wiki document that spells this out [1] however if it's of any 
consequence, OE's documentation specifies spaces only [2].

Cheers,
Paul

[1] 
https://wiki.pokylinux.org/wiki/Best_Known_Methods_%28BKMs%29_for_Package_Updating#White_Space_Management

[2] http://docs.openembedded.org/usermanual/html/recipes_syntax.html

