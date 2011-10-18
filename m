Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91636E004E9
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 10:49:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Oct 2011 10:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="64211666"
Received: from unknown (HELO helios.localnet) ([10.252.121.62])
	by orsmga001.jf.intel.com with ESMTP; 18 Oct 2011 10:49:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 18 Oct 2011 18:49:07 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-11-generic-pae; KDE/4.6.5; i686; ; )
References: <4E9D90A9.6010303@mlbassoc.com>
	<201110181841.00487.paul.eggleton@linux.intel.com>
	<4E9DBAF2.5020903@mlbassoc.com>
In-Reply-To: <4E9DBAF2.5020903@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201110181849.07451.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: gstreamer update
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
X-List-Received-Date: Tue, 18 Oct 2011 17:49:10 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 18 October 2011 18:44:18 Gary Thomas wrote:
> On 2011-10-18 11:41, Paul Eggleton wrote:
> > On Tuesday 18 October 2011 18:19:21 Richard Purdie wrote:
> >> I've just merged Pauls gstreamer update to OE-Core and Poky...
> > 
> > I guess all that's missing then is an update to gst-plugins-good; I
> > didn't update the version of that.
> 
> You also need to update gst-plugins-base to 0.10.35

Er, that's what I did do... sorry if that wasn't clear.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5a3f9b54114dddb894e93b76a939d0eba28d3464

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

