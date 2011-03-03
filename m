Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 113EC4C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 10:54:24 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p23GsNJA001535
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 3 Mar 2011 08:54:23 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 3 Mar 2011 08:54:22 -0800
Message-ID: <4D6FC7BD.2070806@windriver.com>
Date: Thu, 3 Mar 2011 10:54:21 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.14) Gecko/20110221 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <AANLkTim7ObgjarV3z+nOuT3=0jk=u64Lkv3BVLBC-zSk@mail.gmail.com>
In-Reply-To: <AANLkTim7ObgjarV3z+nOuT3=0jk=u64Lkv3BVLBC-zSk@mail.gmail.com>
X-Originating-IP: [172.25.36.227]
Subject: Re: Error when polkit library is pulled
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
X-List-Received-Date: Thu, 03 Mar 2011 16:54:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 3/3/11 3:46 AM, chinmaya hoshing wrote:
> Hi,
> When polkit library is pulled ,this is the following error :-
> 
> 
> NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs: Succeeded
> ERROR: Task failed: ('function do_rootfs failed',
> '/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
> ERROR: Logfile of failure stored in:
> /home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457
> :
> :
> :
> :
> : base-files                  ##################################################
> | error: unpacking of archive failed on file /var/cache: cpio: rename failed -
> Inappropriate ioctl for device

The above is the cause of the failed install.  What filesystem are you on?  The
failure is severe, it created a directory, tried to rename the directory and got
an "Inappropriate ioctl for device".. in otherwords the device prevented the
rename for some reason.

Is your build being done on either an NFS, Clearcase, or other non-local
filesystem?  Or do you have selinux or something like that enabled that saw
"/var/cache", and prevented the renaming thinking it was a hacking attempt?

(FYI, the rename happens so that the creation of files/directories happens
atomically.  create /var/cache.XXXXXX then mv /var/cache.XXXXX /var/cache is
being done... ensuring the old item only goes away when the new item is fully
created.)

--Mark

> | udev-extraconf              ##################################################
> | udev                        ##################################################
> | zypper                      ##################################################
> | avahi-daemon                ##################################################
> | hal-info                    ##################################################
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
> NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
> ERROR: Task 191
> (/home/sct/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb
> <http://poky-image-minimal-akshat.bb>, do_rootfs) failed with 1
> ERROR:
> '/home/sct/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb
> <http://poky-image-minimal-akshat.bb>' failed
> 
> 
> With Regards
> Chinmaya
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


