Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F34D4C8009A
	for <poky@yoctoproject.org>; Tue,  2 Aug 2011 17:34:23 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p72MYLQl011638;
	Tue, 2 Aug 2011 17:34:21 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
Date: Tue, 2 Aug 2011 17:34:21 -0500
Message-Id: <88E6BB4D-BCC0-4CEE-B6BB-74A2E940D94B@kernel.crashing.org>
References: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc.conf: Add live image type
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
X-List-Received-Date: Tue, 02 Aug 2011 22:34:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Aug 2, 2011, at 3:50 PM, Saul Wold wrote:

> This change will cause the live image to be built by default
> No longer is it necessary to build a -live image type.
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
> meta-yocto/conf/machine/atom-pc.conf |    2 +-
> 1 files changed, 1 insertions(+), 1 deletions(-)

What's a live image?

- k

