Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BBFA4C80FBE
	for <poky@yoctoproject.org>; Wed, 11 May 2011 13:29:55 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 491F516601DC; Wed, 11 May 2011 12:29:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D14C016601B1;
	Wed, 11 May 2011 12:29:33 -0600 (MDT)
Message-ID: <4DCAD58D.3040501@mlbassoc.com>
Date: Wed, 11 May 2011 12:29:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: qemuarm hangs
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
X-List-Received-Date: Wed, 11 May 2011 18:29:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Building from master, updated earlier today.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "my_master"
METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110511"
TARGET_FPU        = "soft"

When I runqemu on core-image-sato, it brings up the simulated
video screen and the Yocto splash shows.  The progress bar goes
to about 60% and then it just hangs there forever.

core-image-minimal boots to a login prompt

Ideas?  How can I figure out where it's bombing out?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

