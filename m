Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F04DE004DD
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 07:19:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2011 07:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="57060580"
Received: from unknown (HELO helios.localnet) ([10.252.120.163])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2011 07:19:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 27 Sep 2011 15:19:54 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <4E81C907.8080407@mlbassoc.com> <1317129087.26109.148.camel@ted>
	<4E81CD46.4070807@mlbassoc.com>
In-Reply-To: <4E81CD46.4070807@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201109271519.54267.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Crazy versioning
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
X-List-Received-Date: Tue, 27 Sep 2011 14:19:56 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi Gary,

On Tuesday 27 September 2011 14:19:02 Gary Thomas wrote:
> I gave a cursory look in the documentation (both Yocto & bitbake) and
> I didn't see an explanation of this.  There's a single reference
>    ../documentation/bsp-guide/bsp.xml:     PREFERRED_VERSION_linux-yocto =
> "3.0%" but nothing that explains it.

FYI I have sent Scott R some additions to the variable reference in the manual 
that will mention the % wildcard and give an example.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

