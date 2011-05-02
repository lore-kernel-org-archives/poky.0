Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDC394C8059A
	for <poky@yoctoproject.org>; Mon,  2 May 2011 10:31:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p42FVCaC019904
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 2 May 2011 08:31:12 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 2 May 2011 08:31:12 -0700
Message-ID: <4DBECE3F.2010505@windriver.com>
Date: Mon, 2 May 2011 10:31:11 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
In-Reply-To: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Mon, 02 May 2011 15:31:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

There is a variable that you can set specific commands to be executed post fs
creation, pre-packaging:

ROOTFS_POSTPROCESS_COMMAND

There is a catch with this and the item below.  In the case of a field upgrade,
the code is currently written to cause a refresh of the icon cache.  Assuming
this is desired behavior, then you would need to preserve existing behavior
(other then first boot) as well as add the new behavior for the rootfs post
process command.

NOTE: As far as I am aware, all of the rootfs class types [deb, rpm, and ipk]
run the post-install scripts as a unit -AFTER- the filesystem has been created.
 So if the cache can be generated on the host system, then there is no reason to
have the 'exit 1' in the code below -- and the use of ROOTFS_POSTPROCESS_COMMAND
is not needed.

(I have not investigated the pixbufloader items, but I would assume based on
experience with other caching programs, that it would need to be modified to
understand the sysroot environment and be able to cache the path names as they
would appear on the target and not on the host.  If we corrected this issues,
and provided a native version of the cache program -- we could likely resolve
this with a simply host app.)

--Mark


On 5/2/11 10:12 AM, Colin Walters wrote:
> Hi,
> 
> Currently from poky-bernard-5.0, in gdk-pixbuf_2.22.1.bb, we have:
> 
> postinst_pixbufloader () {
> if [ "x$D" != "x" ]; then
>     exit 1
> fi
> 
> GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders
> gdk-pixbuf-query-loaders --update-cache
> 
> test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q
> ${datadir}/icons/hicolor
> }
> 
> This results in a first-boot icon cache query in my image, which is
> pretty lame since we could equally well do this after the image is
> generated, and not on every computer that boots the image.
> 
> It seems to me we could add some mechanism for mounting the image
> filesystem and running a script in there (guestfs?), or maybe an
> automated QEMU boot, run the postinsts, and sync/shutdown?
> 
> Thoughts?
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


