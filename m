Return-Path: <herrold@owlriver.com>
Received: from bronson.owlriver.com (bronson.owlriver.com [198.49.244.50])
	by mx1.pokylinux.org (Postfix) with ESMTP id 822EF4C80044
	for <poky@pokylinux.org>; Fri, 12 Nov 2010 09:12:20 -0600 (CST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by bronson.owlriver.com (8.13.8/8.13.8) with ESMTP id oACFCIQ9010649
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@pokylinux.org>; Fri, 12 Nov 2010 10:12:20 -0500
Date: Fri, 12 Nov 2010 10:12:18 -0500 (EST)
From: R P Herrold <herrold@owlriver.com>
To: poky <poky@pokylinux.org>
In-Reply-To: <1289537887.1272.3010.camel@rex>
Message-ID: <alpine.LRH.1.00.1011121008220.9384@oebafba.bjyevire.pbz>
References: <4CDC6E99.4030709@intel.com> <1289537887.1272.3010.camel@rex>
User-Agent: Alpine 1.00 (LRH 882 2007-12-20)
X-M: Go Blue
X-GnuPG-GPG-Key-ID: 0x9B649644
MIME-Version: 1.0
Subject: Rough timing of rpm vs opkg rootfs builds
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
X-List-Received-Date: Fri, 12 Nov 2010 15:12:20 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

On Fri, 12 Nov 2010, Richard Purdie wrote:

> I suspect there is an optimisation that can be added for the rpm
> indexing to make this incremental updating possible.

Usually naiive ('Rough') timing tests with rpm do not disable 
un-needed checksum cross checks, key verifications, and such, 
which are senseless in a closed or protected build environment

Publishing the testing harnesses would permit evaluation of 
such -- absent a second person checking the methodology, it is 
probably premature to start kinkering.  Publishing final 
numbers without a reproduceable methodology is just not good 
science

-- Russ herrold

