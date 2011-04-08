Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A37E4C80579
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 08:29:33 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CEF911660849; Fri,  8 Apr 2011 07:29:32 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	T_FRT_CONTACT autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 82E5216605D7;
	Fri,  8 Apr 2011 07:29:31 -0600 (MDT)
Message-ID: <4D9F0DBB.8070608@mlbassoc.com>
Date: Fri, 08 Apr 2011 07:29:31 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4D9F0B82.9080803@mlbassoc.com>
In-Reply-To: <4D9F0B82.9080803@mlbassoc.com>
Subject: Re: Early image startup
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
X-List-Received-Date: Fri, 08 Apr 2011 13:29:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/08/2011 07:20 AM, Gary Thomas wrote:
> I have a Poky image which uses a number of kernel modules. For
> whatever reason, the raw image has not had the modules configured
> (no /lib/modules/.../modules.dep) This file is created by 'update-modules'
> but that is run too late in the boot process. The problem is that
> other code, e.g. I'm using iptables via modules, requires the modules
> be configured early and this fails. If I reboot (after 'update-modules'
> has run), everything is fine.
>
> My system is PowerPC and I'm using ipk packaging.
>
> Here's a snippet from my initial boot log:
> Please wait: booting...
> Starting udev
> Configuring network interfaces... udhcpc (v1.17.3) started
> Setting IP address 0.0.0.0 on eth0
> Sending discover...
> PHY: mdio@ff024520:01 - Link is Up - 1000/Full
> Sending discover...
> Sending select for 192.168.12.140...
> Lease of 192.168.12.140 obtained, lease time 600
> Setting IP address 192.168.12.140 on eth0
> Deleting routers
> Adding router 192.168.12.1
> Recreating /etc/resolv.conf
> Adding DNS server 192.168.12.1
> done.
> modprobe: can't open 'modules.dep': No such file or directory
> iptables v1.4.9: can't initialize iptables table `filter': iptables who? (do you need to insmod?)
> Perhaps iptables or your kernel needs to be upgraded.
> Starting DHCP server: .
> Fri Apr 8 12:29:00 UTC 2011
> Configuring update-modules.
> Configuring kernel-image-2.6.37.3.
> Configuring kernel-module-nf-conntrack.
> Configuring kernel-module-x-tables.
> Configuring kernel-module-ip-tables.
> Configuring kernel-module-nf-defrag-ipv4.
> Configuring kernel-module-nf-conntrack-ipv4.
> Configuring kernel-module-iptable-mangle.
> Configuring kernel-module-xt-state.
> Configuring kernel-module-nf-nat.
> Configuring kernel-module-nf-conntrack-tftp.
> Configuring kernel-module-nf-nat-tftp.
> Configuring kernel-module-ipt-masquerade.
> Configuring kernel-module-iptable-nat.
> Configuring kernel-module-iptable-filter.
> Configuring netkit-tftpd.
> Configuring kernel-module-xt-tcpudp.
>
> So, what decides when these 'configuring' steps run?

FAOD, these are my init.S steps:
   /etc/rcS.d:
    S02banner.sh -> ../init.d/banner.sh
    S03sysfs.sh -> ../init.d/sysfs.sh
    S04udev -> ../init.d/udev
    S10checkroot.sh -> ../init.d/checkroot.sh
    S20modutils.sh -> ../init.d/modutils.sh
    S35mountall.sh -> ../init.d/mountall.sh
    S36udev-cache -> ../init.d/udev-cache
    S37populate-volatile.sh -> ../init.d/populate-volatile.sh
    S38devpts.sh -> ../init.d/devpts.sh
    S39hostname.sh -> ../init.d/hostname.sh
    S40networking -> ../init.d/networking
    S41nat_setup -> ../init.d/nat_setup
    S45mountnfs.sh -> ../init.d/mountnfs.sh
    S50dhcp-server -> ../init.d/dhcp-server
    S55bootmisc.sh -> ../init.d/bootmisc.sh


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

