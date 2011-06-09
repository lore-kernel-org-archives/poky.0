Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 774834C800A4
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 18:27:59 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Jun 2011 16:27:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,343,1304319600"; d="scan'208";a="12259761"
Received: from doubt.jf.intel.com (HELO [10.7.199.145]) ([10.7.199.145])
	by orsmga001.jf.intel.com with ESMTP; 09 Jun 2011 16:27:58 -0700
Message-ID: <4DF156FC.40406@linux.intel.com>
Date: Thu, 09 Jun 2011 16:27:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DEFB4BA.7050902@mlbassoc.com>	<4DEFBD77.7000400@linux.intel.com>	<4DF016F0.4080106@gmail.com>	<4DF02EDF.5040502@mlbassoc.com>	<4DF06CB0.1040501@gmail.com>	<4DF0AC87.2060901@mlbassoc.com>
	<4DF0AF61.1020108@mlbassoc.com> <4DF14A49.6000104@linux.intel.com>
In-Reply-To: <4DF14A49.6000104@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: BeagleBoard using GCC 4.6.0
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
X-List-Received-Date: Thu, 09 Jun 2011 23:27:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/09/2011 03:33 PM, Darren Hart wrote:
> 
> 
> On 06/09/2011 04:32 AM, Gary Thomas wrote:

>>>>>>>> The lines at drivers/usb/host/ehci-hub.c:841
>>>>>>>> case GetPortStatus:
>>>>>>>> if (!wIndex || wIndex > ports)
>>>>>>>> goto error;
>>>>>>>> wIndex--;
>>>>>>>> status = 0;
>>>>>>>> temp = ehci_readl(ehci, status_reg);
>>>>>>>>
>>>>>>>> are being compiled very differently.
>>>>>>>>
>>>>>>>> With GCC 4.5.2:
>>>>>>>> 0xc0229810 <ehci_hub_control+672>: cmp r3, #0 ; 0x0
>>>>>>>> 0xc0229814 <ehci_hub_control+676>: beq 0xc0229df8
>>>>>>>> <ehci_hub_control+2184>
>>>>>>>> 0xc0229818 <ehci_hub_control+680>: cmp r3, r0
>>>>>>>> 0xc022981c <ehci_hub_control+684>: bgt 0xc0229df8
>>>>>>>> <ehci_hub_control+2184>
>>>>>>>> 0xc0229820 <ehci_hub_control+688>: sub r8, r3, #1 ; 0x1
>>>>>>>> 0xc0229824 <ehci_hub_control+692>: ldr r5, [r7, #4]
>>>>>>>> 0xc0229828 <ehci_hub_control+696>: uxth r8, r8
>>>>>>>> 0xc022982c <ehci_hub_control+700>: dmb sy

Hi Gary, what exactly are you using to generate this output? objdump -d
gives me something similar, but not exactly the same. With 4.6.0 with
Khem's suggested patch:

> diff --git a/include/linux/usb/ehci_def.h b/include/linux/usb/ehci_def.h
> index 6563802..b8c1833 100644
> --- a/include/linux/usb/ehci_def.h
> +++ b/include/linux/usb/ehci_def.h
> @@ -194,7 +194,7 @@ struct ehci_dbg_port {
>          u32     data47;
>          u32     address;
>   #define DBGP_EPADDR(dev, ep)   (((dev)<<8)|(ep))
> -} __attribute__ ((packed));
> +} __attribute__ ((packed,aligned(__alignof__(int))));
> 
>   #ifdef CONFIG_EARLY_PRINTK_DBGP
>   #include <linux/init.h>

I see the following. Granted, this is a sligthly different kernel
(includes linux-omap and the patches from the meta-ti linux-omap recipe):

$
/build/poky/master/beagleboard/tmp/work/armv7a-poky-linux-gnueabi/binutils-cross-2.21-r0/binutils-2.21/build.x86_64-linux.arm-poky-linux-gnueabi/binutils/objdump
-S -d drivers/usb/host/ehci-hcd.o

<snip>

        case GetPortStatus:
                if (!wIndex || wIndex > ports)
    1420:       e3560000        cmp     r6, #0
    1424:       0a0001af        beq     1ae8 <ehci_hub_control+0xa40>
    1428:       e1560003        cmp     r6, r3
    142c:       ca0001ad        bgt     1ae8 <ehci_hub_control+0xa40>
    1430:       e2893010        add     r3, r9, #16
                        goto error;
                wIndex--;
    1434:       e2466001        sub     r6, r6, #1
    1438:       e0873103        add     r3, r7, r3, lsl #2
    143c:       e6ff6076        uxth    r6, r6
    1440:       e5d3b005        ldrb    fp, [r3, #5]
    1444:       e5d32004        ldrb    r2, [r3, #4]
    1448:       e182b40b        orr     fp, r2, fp, lsl #8
    144c:       e5d32006        ldrb    r2, [r3, #6]
    1450:       e5d33007        ldrb    r3, [r3, #7]
    1454:       e18bb802        orr     fp, fp, r2, lsl #16
    1458:       e18bbc03        orr     fp, fp, r3, lsl #24
#ifdef CONFIG_USB_EHCI_BIG_ENDIAN_MMIO
        return ehci_big_endian_mmio(ehci) ?
                readl_be(regs) :
                readl(regs);
#else
        return readl(regs);
    145c:       f57ff05f        dmb     sy

</snip>

This seems to demonstrate the same pile of extra ldrb and orr
instructions that you first saw with 4.6.0. Some quick googling suggests
Khem's idea of misaligned loads seems sound, but for whatever reason,
the fix didn't work for me.

Khem, any other thoughts on something to try?

Note: CONFIG_USB_EHCI_BIG_ENDIAN_MMIO does not appear to be set in my
      config.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

