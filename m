Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E0B74C80094
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 07:47:25 -0500 (CDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 5D3841B10C0D
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 12:57:19 +0000 (UTC)
Message-ID: <4E3008DA.8090401@freyther.de>
Date: Wed, 27 Jul 2011 14:47:22 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 12:47:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

todays story is adding a 'interfaces' to netbase.


$ touch sysmocom/recipes-core/netbase/netbase-4.45/alix/interfaces

$ vi sysmocom/recipes-core/netbase/netbase_4.45.bbappend
FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
PRINC = "1"

$ bitbake netbase


So does it work? The answer is no. Why doesn't it work? meta-yocto already has
a bbappend file? How to solve it? Use different names? Automatically add
FILESPATH for bbappends?

comments?

	holger

