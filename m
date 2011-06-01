Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16B0D4C80191
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 05:07:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Jun 2011 03:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,302,1304319600"; 
   d="scan'208";a="5111524"
Received: from unknown (HELO helios.localnet) ([10.255.13.133])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 03:07:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 1 Jun 2011 11:07:08 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1306863360.git.paul.eggleton@linux.intel.com>
	<6d9835a7055fdffc3adc0dd8c98899750fcc272e.1306863360.git.paul.eggleton@linux.intel.com>
In-Reply-To: <6d9835a7055fdffc3adc0dd8c98899750fcc272e.1306863360.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201106011107.09005.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/1] bitbake: use layer priority when applying bbappends
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
X-List-Received-Date: Wed, 01 Jun 2011 10:07:11 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 31 May 2011 18:36:55 Paul Eggleton wrote:
> -            self.status.bbfile_priority[p] = calc_bbfile_priority(p)
> +            self.status.bbfile_priority[p] = calc_bbfile_priority(p,
> matched)

Oops, this should be self.calc_bbfile_priority. Have updated contrib branch & 
sent updated patch to bitbake-devel.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

