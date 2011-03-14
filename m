Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1660D4C804E4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 00:28:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so1093889pwi.35
	for <poky@yoctoproject.org>; Sun, 13 Mar 2011 22:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=QGq6LxmGE7Z6ah2FxewUZf/EogjlQaZGq3v4Q3WWcdo=;
	b=D5M5b4jkT6UDnfIJOBDk/Oa/dX3oTXmp4WSQVC+wrSECKfDDLGIOKKkqpNkaYobjNI
	GDwUlnd9ZAFK4Wjxmi6aY0w3uc83ej0Igy7sAH7atIrbjlyumcR1fL4pk//9OHnj1fAh
	PLjccRP8F2NvL/mGhexAzJom5PrET0Iu0dEEE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type;
	b=xkIx+xF2IQTR+IRaNRIBi10N63fANTGJku1dACVIIpH0yRqV1wX5ut35iezy1uyz4F
	NtzHk91bQf2x/UqPLbRY7p1+d0Z+oRddvyWGU7TAIj1xRNPUZFeUIXnHNm5lcuIPib52
	fFw/+REwLXqUzJOfxHMwBdG4kAF3kD17psklE=
Received: by 10.142.99.11 with SMTP id w11mr9867945wfb.436.1300080489578;
	Sun, 13 Mar 2011 22:28:09 -0700 (PDT)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id w32sm9750503wfh.19.2011.03.13.22.28.06
	(version=SSLv3 cipher=OTHER); Sun, 13 Mar 2011 22:28:08 -0700 (PDT)
Message-ID: <4D7DA763.7030907@gmail.com>
Date: Mon, 14 Mar 2011 10:58:03 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Problem while generating rootfs with package_ipk
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
X-List-Received-Date: Mon, 14 Mar 2011 05:28:10 -0000
Content-Type: multipart/alternative;
	boundary="------------010804000704020706010408"

--------------010804000704020706010408
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

While generating rootfs with

MACHINE ?= "atom-pc"
/PACKAGE_CLASSES ?= "package_ipk"/
Host machine "Linux xxx-desktop 2.6.32-28-generic-pae #55-Ubuntu SMP Mon 
Jan 10 22:34:08 UTC 2011 i686 GNU/Linux"

Got following error :-

| Configuring xhost.

| Configuring wireless-tools.

| Configuring libxss1.

| Collected errors:

|  * extract_archive: Cannot create symlink from ./var/log to 'volatile/log': File exists.

|  * extract_archive: Cannot create symlink from ./var/cache to 'volatile/cache': File exists.

|  * extract_archive: Cannot create symlink from ./var/run to 'volatile/run': File exists.

| + '[' '!' -z '' ']'

| + export D=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + D=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + export OFFLINE_ROOT=/home/ylal/logi/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + export IPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + IPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + export OPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + OPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + ipk_insert_feed_uris

| + echo 'Building from feeds activated!'

| Building from feeds activated!


Thanks
Yogesh

--------------010804000704020706010408
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi,<br>
    <br>
    While generating rootfs with <br>
    <br>
    MACHINE ?= "atom-pc"<br>
    <i>PACKAGE_CLASSES ?= "package_ipk"</i><br>
    Host machine "Linux xxx-desktop 2.6.32-28-generic-pae #55-Ubuntu SMP
    Mon Jan 10 22:34:08 UTC 2011 i686 GNU/Linux"<br>
    <br>
    Got following error :-<br>
    <br>
    <pre>| Configuring xhost.</pre>
    <pre>| Configuring wireless-tools.</pre>
    <pre>| Configuring libxss1.</pre>
    <pre>| Collected errors:</pre>
    <pre>|&nbsp; * extract_archive: Cannot create symlink from ./var/log to 'volatile/log': File exists.</pre>
    <pre>|&nbsp; * extract_archive: Cannot create symlink from ./var/cache to 'volatile/cache': File exists.</pre>
    <pre>|&nbsp; * extract_archive: Cannot create symlink from ./var/run to 'volatile/run': File exists.</pre>
    <pre>| + '[' '!' -z '' ']'</pre>
    <pre>| + export D=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + D=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + export OFFLINE_ROOT=/home/ylal/logi/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + export IPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + IPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + export OPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + OPKG_OFFLINE_ROOT=/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs</pre>
    <pre>| + ipk_insert_feed_uris</pre>
    <pre>| + echo 'Building from feeds activated!'</pre>
    <pre>| Building from feeds activated!</pre>
    <br>
    Thanks<br>
    Yogesh<br>
  </body>
</html>

--------------010804000704020706010408--
