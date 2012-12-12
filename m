Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF5BAE011CC
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 07:58:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2012 07:58:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,267,1355126400"; d="scan'208";a="179968563"
Received: from unknown (HELO helios.localnet) ([10.252.122.189])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Dec 2012 07:58:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Felipe Ferreri Tonello <eu@felipetonello.com>
Date: Wed, 12 Dec 2012 15:58:34 +0000
Message-ID: <4279118.9X6CKSTVLQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <50C7D64A.2090403@felipetonello.com>
References: <50C7D64A.2090403@felipetonello.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Qt commercial support
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
X-List-Received-Date: Wed, 12 Dec 2012 15:58:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Felipe,

On Tuesday 11 December 2012 16:56:42 Felipe Ferreri Tonello wrote:
> Basically there is still no easy way to support commercial Qt versions.
> Yocto Bug #2505 fixes part of it but not all.
> 
> In my case I have to provide, not just a qt4-x11-commercial recipe, but
> all others native and sdk recipes basically because the OE-Core ones
> enforces the download of the opensource version.
> 
> It would be perfect if we can provide our own .tar.gz or git repo with
> our modified Qt version.
> 
> I know that we can provide a bbappend to change that but still not a
> perfect solution.

There are two solutions I can think of:

a) Use a bbappend for the native and nativesdk recipes as you mentioned

b) Copy the qt4-native recipe to qt4-commercial-native and add PROVIDES += 
"qt4-native" to it;  copy the nativesdk-qt4-tools recipe to nativesdk-qt4-
commercial-tools and add PROVIDES += "nativesdk-qt4-tools" to it; then set 
PREFERRED_PROVIDER_qt4-native = "qt4-commercial-native" and 
PREFERRED_PROVIDER_nativesdk-qt4-tools = "nativesdk-qt4-commercial-tools" in 
your distro or local configuration. [Replace nativesdk-qt4-tools with qt4-
tools-nativesdk if you are using the denzil release or earlier].

Ultimately I don't have access to the commercial version of Qt and nor do most 
people, so we can't provide recipes for the commercial version out of the box; 
however just as with bug 2505 if we can make things easier for people who do 
want to build it then we will try our best to do so, as long as you can 
provide us with feedback on improvements.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

