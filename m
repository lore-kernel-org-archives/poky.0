Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 815334C80479
	for <poky@yoctoproject.org>; Mon,  2 May 2011 10:12:22 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so5961535wwd.11
	for <poky@yoctoproject.org>; Mon, 02 May 2011 08:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=nkaa8FGnRbtYrBO/8GZplNHk9NnTqVW5ANQYO3aqT5Y=;
	b=LAdS+DWf2N5QddPKD3kjahRYRPAlYY8Cg5iKq6TtnRRznE9lIXVLwJKhYIQ+qRYpdL
	YzE37J2lGBWYEfFB1KG6IKCzKf7+l8iqgkwKtWKKldI695Y9tqdB4xHFsJomSC9vgy7r
	hFtwnNC3WPhe02nXWsGNs9YLHO8EUoUy+EjjU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=UkFjqA0TMmwoHmgDy6F148X4a0zzYJerTa9ABPB2YXtJsJdqtf1BoGAJ2+PDjgth+L
	bEO5kA0lXSrs+ywGMvSHJ0CYuMjs8I3B2SMXwahKgKA2J3EULtdNYGjFcixSo1CNns9e
	quiiya3+0FphUbjDLPbNe/C17iV0D4ndIjheM=
MIME-Version: 1.0
Received: by 10.216.69.74 with SMTP id m52mr6288733wed.33.1304349141350; Mon,
	02 May 2011 08:12:21 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.8.129 with HTTP; Mon, 2 May 2011 08:12:21 -0700 (PDT)
Date: Mon, 2 May 2011 11:12:21 -0400
X-Google-Sender-Auth: HnCcAonBsXArYn3JsAJMbye0XnQ
Message-ID: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: poky <poky@yoctoproject.org>
Subject: post-image-creation postinsts
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
X-List-Received-Date: Mon, 02 May 2011 15:12:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Currently from poky-bernard-5.0, in gdk-pixbuf_2.22.1.bb, we have:

postinst_pixbufloader () {
if [ "x$D" != "x" ]; then
    exit 1
fi

GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders
gdk-pixbuf-query-loaders --update-cache

test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q
${datadir}/icons/hicolor
}

This results in a first-boot icon cache query in my image, which is
pretty lame since we could equally well do this after the image is
generated, and not on every computer that boots the image.

It seems to me we could add some mechanism for mounting the image
filesystem and running a script in there (guestfs?), or maybe an
automated QEMU boot, run the postinsts, and sync/shutdown?

Thoughts?

